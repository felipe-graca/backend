import 'package:backend/src/features/user/user_resource.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        Route.get('/', (Request request) => Response.ok('Hello World!')),
        Route.resource(UserResource()),
      ];
}
