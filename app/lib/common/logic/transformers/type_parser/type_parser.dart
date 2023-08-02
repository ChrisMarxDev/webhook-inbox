import 'package:models/models.dart';

const userAgentMap = {
  'GitHub-Hookshot': 'github',
  'GitLab': 'gitlab',
  'default': 'default',
  'Atlassian': 'atlassian',
};

const xHeaderMap = {
  'X-Shopify-API-Version': 'shopify',
  'default': 'default',
};

String parseType(UserRequestData request) {
  final userAgent = request.headers['user-agent'];

  // check user agent
  if (userAgent != null) {
    final userAgentKey = userAgentMap.keys.firstWhere(
      userAgent.contains,
      orElse: () => userAgent,
    );
    if (userAgentKey == userAgent) {
      return userAgentKey;
    } else {
      return userAgentMap[userAgentKey]!;
    }
  }

  // check for x- headers
  final xHeaderKey = xHeaderMap.keys.firstWhere(
    (element) => request.headers.keys.contains(element),
    orElse: () => 'default',
  );

  return xHeaderMap[xHeaderKey]!;
}
