import 'dart:io';

import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';
import 'package:models/models.dart';

import 'util/map_extension.dart';
import 'util/string_extension.dart';

UserRequestData requestDataFromDynamoDBItem(
  Map<String, AttributeValue> item,
) {
  final headers = item['headers']?.m;

  final values = headers?.values.map((e) => e.s ?? '');
  final headersMap =
      headers != null ? Map.fromIterables(headers.keys, values!) : null;
  return UserRequestData(
    id: item['id']?.s ?? '',
    userId: item['userId']?.s ?? '',
    createdAt: DateTime.fromMillisecondsSinceEpoch(
      int.parse(item['createdAt']?.n ?? '0'),
    ),
    endpointId: item['endpointId']?.s ?? '',
    headers: headersMap ?? {},
    jsonBodyRaw: item['jsonBodyRaw']?.s ?? '',
    overrideTitle: item['overrideTitle']?.s ?? '',
    overrideBody: item['overrideBody']?.s ?? '',
    overrideUrgency: int.parse(item['overrideUrgency']?.n ?? '0'),
  );
}

extension UserRequestDataDbExtension on UserRequestData {
  Map<String, AttributeValue> toDynamoDBItem() {
    return {
      'id': AttributeValue(s: id),
      'userId': AttributeValue(s: userId),
      'createdAt': AttributeValue(
        n: createdAt.millisecondsSinceEpoch.toString(),
      ),
      'endpointId': AttributeValue(s: endpointId),
      'headers': headers.toAttributeValue(),
      'jsonBodyRaw': jsonBodyRaw.toAttributeValue(),
      'overrideTitle': overrideTitle.toAttributeValue(),
      'overrideBody': overrideBody.toAttributeValue(),
      'overrideUrgency': AttributeValue(n: overrideUrgency.toString()),
    };
  }
}

const tableName = 'entries';

class RequestDynamoRepository {
  RequestDynamoRepository() {
    final credentials = AwsClientCredentials(
      accessKey: Platform.environment['AWS_DYNAMO_DB_KEY_ID']!,
      secretKey: Platform.environment['AWS_DYNAMO_DB_KEY_SECRET']!,
    );
    dynamoDB = DynamoDB(
      region: Platform.environment['AWS_REGION']!,
      credentials: credentials,
    );
  }

  late final DynamoDB dynamoDB;

  Future<void> writeEntry(UserRequestData entry) async {
    await dynamoDB.putItem(
      tableName: tableName,
      item: entry.toDynamoDBItem(),
    );
  }

  Future<UserRequestData?> readEntry(String id) async {
    final output = await dynamoDB.getItem(
      tableName: tableName,
      key: {'identifier': AttributeValue(s: id)},
    );

    if (output.item != null) {
      return requestDataFromDynamoDBItem(output.item!);
    } else {
      return null;
    }
  }

  Future<
      (
        List<UserRequestData> results,
        Map<String, AttributeValue>? lastEvaluatedKey
      )> readLastEntries(
    String endpointId,
    int count, [
    Map<String, AttributeValue>? lastEvaluatedKey,
  ]) async {
    final output = await dynamoDB.query(
      tableName: tableName,
      limit: count,
      exclusiveStartKey: lastEvaluatedKey,
      keyConditionExpression: 'endpointId = :endpointId',

      expressionAttributeValues: {
        ':endpointId': AttributeValue(s: endpointId),
      },
      scanIndexForward: false, // Sort in descending order (newest first)
    );

    if (output.items != null) {
      final entries = output.items!.map(requestDataFromDynamoDBItem).toList();

      print(output.lastEvaluatedKey);
      return (entries, output.lastEvaluatedKey ?? {});
    } else {
      return (<UserRequestData>[], null);
    }
  }

  Future<int> countEntries() async {
    final output = await dynamoDB.scan(
      tableName: tableName,
      select: Select.count,
      filterExpression: 'id = :id',
      expressionAttributeValues: {
        ':id': AttributeValue(s: '1'),
      },
    );

    return output.count ?? 0;
  }
}
