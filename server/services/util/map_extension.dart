import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';

extension NullableStringMapExtension on Map<String, String>? {
  AttributeValue toAttributeValue() {
    if (this == null) {
      return AttributeValue(nullValue: true);
    } else {
      return AttributeValue(
        m: this!.map(
          (key, value) => MapEntry(
            key,
            AttributeValue(s: value),
          ),
        ),
      );
    }
  }
}
