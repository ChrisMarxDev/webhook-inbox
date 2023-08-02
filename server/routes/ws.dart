import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:riverpod/riverpod.dart';

import '../services/state/push_update_provider.dart';

Future<Response> onRequest(RequestContext context) async {
  final user = context.request.uri.queryParameters['user']!;
  print(user);
  print('WebSocket request received!');
  final handler = webSocketHandler((channel, protocol) async {
    channel.stream.listen(print);

    // Send a message back to the client.
    await Future.delayed(const Duration(seconds: 1), () {
      print('Sending message to client...');
      channel.sink.add('hi');
    });

    context.read<ProviderContainer>().listen(pushUpdateProvider(user),
        (_, next) {
      print('counter updated: $next');
      channel.sink.add('$next');
    });
  });
  return handler(context);
}
