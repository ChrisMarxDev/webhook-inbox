const baseUrl = String.fromEnvironment('AWS_IMAGE_BUCKET');
const knownTypes = {
  'github': '*',
  'gitlab': '*',
  'jira': 'atlassian',
  'bitbucket': 'atlassian',
  'confluence': 'atlassian',
  'atlassian': '*',
  'shopify': '*',
};

String getImageUrlForType(String type) {
  final knownType = knownTypes[type];
  if (knownType != null) {
    if (knownType == '*') {
      return '$baseUrl$type.png';
    } else {
      return '$baseUrl$knownType.png';
    }
  } else {
    return '${baseUrl}default_banana.png';
  }
}
