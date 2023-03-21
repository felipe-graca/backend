import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        Route.get('/', (Request request) => Response.ok('Hello World!')),
        Route.get('/login', (Request request) => Response.ok('Login')),
        Route.get('/products', (Request request) => Response.ok('Products')),
      ];
}