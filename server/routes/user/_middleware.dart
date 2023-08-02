import 'package:dart_frog/dart_frog.dart';

import '../../services/state/container.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(container);
}
