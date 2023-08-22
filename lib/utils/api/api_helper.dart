import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:beta_nation/utils/api/env.dart';
import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:beta_nation/utils/api/models/betanation_response.dart';
import 'dart:developer';
import 'package:connectivity/connectivity.dart';

class ApiBaseHelper {
  final baseUrl = env.prodUrl;

Future<BetaNationApiResponse> post(String url, Map body){
  final response = _post(url, body);
  print(body);
  return response;
}


  Future<BetaNationApiResponse> _post(String url, Map body) async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult != ConnectivityResult.none) {
      log(connectivityResult.name);
      log(baseUrl+url);
      try {
        var encoded = jsonEncode(body);
        final response = await http.post(Uri.parse(baseUrl+url),
            body: encoded,
            headers: {
              'Content-Type': 'application/json'
            }).timeout(Duration(minutes: 1),
            onTimeout: () => throw TimeoutException(''));

        if (response.statusCode == 200) {
          log(response.body);
          return BetaNationApiResponse.fromJson(jsonDecode(response.body));
        } else {
          return BetaNationApiResponse(
              status: 1, message: 'Something went wrong, please try again');
        }
      }
       
       on SocketException catch (_) {
        return BetaNationApiResponse(
            status: 1, message: 'No internet connection');
      }
      
       on TimeoutException catch (_) {
        return BetaNationApiResponse(
            status: 1, message: 'Connection timed out. Please try again.');
      }
    } else {
      return BetaNationApiResponse(
          status: 1, message: 'No internet connection');
    }
  }
}
