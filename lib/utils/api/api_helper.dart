import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:beta_nation/features/register/data/models/regions_model.dart';
import 'package:beta_nation/features/register/data/models/states_model.dart';
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

  Future<BetaNationApiResponse> post(String url, Map body) async {
    final response = await _post(url, body);
     if (response.status == 0) {
      return response;
    } else {
      throw BetaNationException(
          message: response.message, output: response.status);
    }

    
  }

  

  Future<BetaNationApiResponse> get(String url) async {
    final response = await _get(url);

    return _filterResponse(response);
  }

  Future<Regions> getRegion(String url) async {
    final response = await _get(url);
    if (response.status == 0) {
      return Regions.fromJson(response.data);
    } else {
      throw BetaNationException(
          message: response.message, output: response.status);
    }
  }

  Future<States> getStates(String url) async {
    final response = await _get(url);
    if (response.status == 0) {
      return States.fromJson({'data': response.data});
    } else {
      throw BetaNationException(
          message: response.message, output: response.status);
    }
  }

  Future<BetaNationApiResponse> _filterResponse(
      BetaNationApiResponse res) async {
    if (res.status == 0) {
  
      return res;
    } else {
      log(res.message.toString());
      throw BetaNationException(message: res.message, output: res.status);
    }
  }

  Future<BetaNationApiResponse> _get(String url) async {
    log(url);
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      log('internet');
      try {
        final response = await http.get(Uri.parse(url), headers: {
          "Content-Type": "application/json"
        }).timeout(Duration(minutes: 1), onTimeout: () {
          throw TimeoutException("");
        });

        if (response.statusCode == 200) {
          // log(response.body);
          return BetaNationApiResponse.fromJson(
              {'status': 0, 'data': jsonDecode(response.body), 'message': ''});
        } else {
          log(response.statusCode.toString());
          return BetaNationApiResponse(
            status: 1,
            message: "Something went wrong, please try again",
          );
        }
      } on SocketException catch (e) {
        print(e);
        return BetaNationApiResponse(
            status: 1, message: "No internet connection");
      } on TimeoutException catch (_) {
        return BetaNationApiResponse(
            status: 1, message: "Connection timed out. Please try again.");
      } on Exception catch (e) {
        return BetaNationApiResponse(status: 1, message: e.toString());
      }
    } else {
      return BetaNationApiResponse(
          status: 1, message: "No internet connection");
    }
  }

  Future<BetaNationApiResponse> _post(String url, Map body) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      try {
        var encoded = jsonEncode(body);
        final response = await http.post(Uri.parse(baseUrl + url),
            body: encoded,
            headers: {
              "Content-Type": "application/json"
            }).timeout(Duration(minutes: 1), onTimeout: () {
          throw TimeoutException("");
        });

        if (response.statusCode == 200) {
          log(response.body);
          return BetaNationApiResponse.fromJson(jsonDecode(response.body));
        } else {
          log(response.statusCode.toString());
          return BetaNationApiResponse(
            status: 1,
            message: "Something went wrong, please try again",
          );
        }
      } on SocketException catch (error) {
        log(error.toString());
        return BetaNationApiResponse(
            status: 1, message: "No internet connection");
      } on TimeoutException catch (_) {
        return BetaNationApiResponse(
            status: 1, message: "Connection timed out. Please try again.");
      } on Exception catch (e) {
        return BetaNationApiResponse(status: 1, message: e.toString());
      }
    } else {
      return BetaNationApiResponse(
          status: 1, message: "No internet connection");
    }
  }
}

final ApiBaseHelper helper = ApiBaseHelper();
