// import "dart:io";

// // To run my server locally, write the command "dart run linb/dart_server.dart"
// void main() {
//   HttpServer.bind("localhost", 8000).then((HttpServer server) {
//     server.listen((HttpRequest request) {
//       request.response.write("Hello world!");
//       request.response.close();
//     });
//   });
// }

import 'dart:io';
import 'dart:convert';

// Get is essentially getting what we need
// Post is adding resources into the server

Future<void> main() async {
  final server = await createServer();
  print('Server started: ${server.address} port ${server.port}');
  await handleRequests(server);
}

Future<HttpServer> createServer() async {
  final address = InternetAddress.loopbackIPv4;
  const port = 4040;
  return await HttpServer.bind(address, port);
}

Future<void> handleRequests(HttpServer server) async {
  await for (HttpRequest request in server) {
    switch (request.method) {
      case 'GET':
        handleGet(request);
        break;
      case 'POST':
        handlePost(request);
        break;
      default:
        handleDefault(request);
    }
  }
}

var myStringStorage = 'Hello from a Dart server';

void handleGet(HttpRequest request) {
  request.response
    ..write(myStringStorage)
    ..close();
}

Future<void> handlePost(HttpRequest request) async {
  myStringStorage = await utf8.decoder.bind(request).join();
  request.response
    ..write('Got it. Thanks.')
    ..close();
}

void handleDefault(HttpRequest request) {
  request.response
    ..statusCode = HttpStatus.methodNotAllowed
    ..write('Unsupported request: ${request.method}.')
    ..close();
}
