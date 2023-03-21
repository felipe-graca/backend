import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class UserResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get('/user', _getAllUser),
        Route.get('/user/:id', _getAllUserById),
        Route.post('/user', _createUser),
        Route.put('/user/:id', _updateUser),
        Route.delete('/user/:id', _deleteUser),
      ];
}

FutureOr<Response> _getAllUser() {
  return Response.ok('All users');
}

FutureOr<Response> _getAllUserById(ModularArguments arguments) {
  return Response.ok('User: ${arguments.params['id']}');
}

FutureOr<Response> _deleteUser(ModularArguments arguments) {
  return Response.ok('Deleted user: ${arguments.params['id']}');
}

FutureOr<Response> _createUser(ModularArguments arguments) {
  return Response.ok('User: ${arguments.data}');
}

FutureOr<Response> _updateUser(ModularArguments arguments) {
  return Response.ok('User upddated: ${arguments.params['id']}');
}
