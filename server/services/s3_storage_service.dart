// import 'dart:io';
//
// import 'package:aws_common/aws_common.dart';
// import 'package:aws_signature_v4/aws_signature_v4.dart';
// import 'package:http/http.dart' as http;
//
// Future<String> fetchDocumentFromS3(String path) async {
//   final bucketName = Platform.environment['aws-bucket']!;
//   final accessKeyId = Platform.environment['accessKeyId']!;
//   final secretAccessKey = Platform.environment['secretAccessKey']!;
//   final region = Platform.environment['aws-region']!;
//
//   final signer = AWSSigV4Signer(
//     credentialsProvider: StaticCredentialsProvider(
//       AWSCredentials(
//         accessKeyId,
//         secretAccessKey,
//       ),
//     ),
//   );
//   // Set up S3 values
//   final scope = AWSCredentialScope(
//     region: region,
//     service: AWSService.s3,
//   );
//   final host = '$bucketName.s3.$region.amazonaws.com';
//   final serviceConfiguration = S3ServiceConfiguration();
//
//   final uri = Uri.https(host, path);
//   print(uri);
//   // Create a pre-signed URL for downloading the file
//   final urlRequest = AWSHttpRequest.get(
//     uri,
//     headers:  {
//       AWSHeaders.host: host,
//     },
//   );
//   final signedUrl = await signer.presign(
//     urlRequest,
//     credentialScope: scope,
//     serviceConfiguration: serviceConfiguration,
//     expiresIn: const Duration(minutes: 10),
//   );
//   print(signedUrl);
//
//   final response = await http.get(signedUrl);
//   if (response.statusCode == 200) {
//     return response.body;
//   } else {
//     throw Exception(
//       'Failed to fetch the document. Status code: ${response.statusCode}',
//     );
//   }
// }
