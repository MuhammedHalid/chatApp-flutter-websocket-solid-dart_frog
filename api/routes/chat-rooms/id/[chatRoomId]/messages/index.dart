import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

FutureOr<Response> onRequest(RequestContext context, String chatRoomId) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, chatRoomId);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
  //return Response(body: 'Welcome to Dart Frog!');
}

Future<Response> _get(RequestContext context, String chatRoomId) async {
  // use message repository
  try {
    // Create a list of message and return them inside the response 
  } catch (e) {
    return Response.json(body: {'error': e.toString()},
        statusCode: HttpStatus.internalServerError);
  }
  return Response(body: 'dvf');
}
