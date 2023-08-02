import 'dart:io';

import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';
import 'package:models/models.dart';

extension UserEndpointDynamoDBItem on UserEndpoint {
  Map<String, AttributeValue> toDynamoDBItem() {
    return {
      'userId': AttributeValue(s: userId),
      'endpointId': AttributeValue(s: endpointId),
      'createdAt': AttributeValue(
        n: createdAt.millisecondsSinceEpoch.toString(),
      ),
    };
  }
}

UserEndpoint fromDynamoDBItem(Map<String, AttributeValue> item) {
  return UserEndpoint(
    userId: item['userId']?.s ?? '',
    endpointId: item['endpointId']?.s ?? '',
    createdAt: DateTime.fromMillisecondsSinceEpoch(
      int.parse(item['createdAt']?.n ?? '0'),
    ),
  );
}

const tableName = 'user-endpoint';

class UserDynamoRepository {
  UserDynamoRepository() {
    final credentials = AwsClientCredentials(
      accessKey: Platform.environment['AWS_DYNAMO_DB_KEY_ID']!,
      secretKey: Platform.environment['AWS_DYNAMO_DB_KEY_SECRET']!,
    );
    _dynamoDB = DynamoDB(
      region: Platform.environment['AWS_REGION']!,
      credentials: credentials,
    );
  }

  late final DynamoDB _dynamoDB;

  Future<UserEndpoint> createEndpoint(String userId, String endpointId) async {
    // check if endpoint is available
    final output = await _dynamoDB.getItem(
      tableName: tableName,
      key: {
        'userId': AttributeValue(s: userId),
        'endpointId': AttributeValue(s: endpointId),
      },
    );

    if (output.item == null) {}

    final entry = UserEndpoint(
      userId: userId,
      endpointId: endpointId,
      createdAt: DateTime.now(),
    );

    await _dynamoDB.putItem(
      tableName: tableName,
      item: entry.toDynamoDBItem(),
    );
    return entry;
  }

  Future<List<UserEndpoint>> getEndpointsForUser(String userId) async {
    final output = await _dynamoDB.query(
      tableName: tableName,
      keyConditionExpression: 'userId = :userId',
      expressionAttributeValues: {
        ':userId': AttributeValue(s: userId),
      },
    );

    if (output.items != null) {
      return output.items!.map(fromDynamoDBItem).toList();
    } else {
      return <UserEndpoint>[];
    }
  }
}
