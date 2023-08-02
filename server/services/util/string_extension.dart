import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';

extension NullableStringExtension on String? {
  AttributeValue toAttributeValue() {
    if (this == null) {
      return AttributeValue(nullValue: true);
    } else {
      return AttributeValue(s: this);
    }
  }
}
