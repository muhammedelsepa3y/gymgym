
import 'dart:convert';
import 'dart:io';

//import 'package:http/http.dart' as http;
class NetworkServices{
  // Future<http.Response> makeRequest(String url,
  //     { Map<String, String>? headers, dynamic body, String method = 'POST'}) async {
  //   try {
  //     final uri = Uri.parse(url);
  //     final request = http.Request(method, uri);
  //     headers ??= EndPoints.defaultHeader;
  //     request.headers.addAll(headers);
  //     if (body != null) {
  //       request.body = jsonEncode(body);
  //     }
  //     final response = await http.Client().send(request);
  //     final responseString = await response.stream.bytesToString();
  //     return http.Response(responseString, response.statusCode);
  //   } on SocketException catch (e) {
  //     return http.Response('{"success":false,"reason":"No Internet"}', 200);
  //   } on HttpException catch (e) {
  //     return http.Response('{"success":false,"reason":"${e.message}"}', 200);
  //   } catch (e) {
  //     return http.Response('{"success":false,"reason":"${e.toString()}"}', 200);
  //   }
  // }
  //
  //


}