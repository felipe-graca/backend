import 'package:backend/backend.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> args) async {
  final handler = await startShelfModular();
  final server = await io.serve(
    handler,
    'localhost',
    4466,
  );

  print('Serving at http://${server.address.host}:${server.port}');
}
