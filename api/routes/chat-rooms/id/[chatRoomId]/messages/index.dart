import 'dart:async';

import 'package:dart_frog/dart_frog.dart';

FutureOr<Response> onRequest(RequestContext context) async{
  return Response(body: 'Welcome to Dart Frog!');
}
