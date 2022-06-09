import 'dart:convert';
import 'dart:io';

import 'package:avocado_flutter_task/models/prescription.dart';
import 'package:http/http.dart' as http;

import '../managers/string_manager.dart';
import '../managers/value_manager.dart';
import '../models/api_status.dart';


class PrescriptionApi
{
  static Future<Object> getPrescriptions() async {
    try {
      // var url =
      //     Uri.parse('https://jsonplaceholder.typicode.com/RahulRimal/fakeJson');

      var url =
          Uri.parse('https://jsonplaceholder.typicode.com/users/1');

      var response = await http.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          "Access-Control-Allow-Origin": "*", 
          "Access-Control-Allow-Methods": "POST, GET, OPTIONS",
          },
      );
      // print(response.body);

      if (response.statusCode == ApiStatusCode.responseSuccess) {
        return Success(
            code: response.statusCode,
            response: prescriptionFromJson(
                json.encode(json.decode(response.body))));
      }

      return Failure(
        code: ApiStatusCode.invalidResponse,
        errorResponse: ApiStrings.invalidResponseString,
      );
    } on HttpException {
      return Failure(
        code: ApiStatusCode.httpError,
        errorResponse: ApiStrings.noInternetString,
      );
    } on FormatException {
      return Failure(
        code: ApiStatusCode.invalidResponse,
        errorResponse: ApiStrings.invalidFormatString,
      );
    } catch (e) {
      // return Failure(code: 103, errorResponse: e.toString());
      return Failure(
        code: ApiStatusCode.unknownError,
        errorResponse: ApiStrings.unknownErrorString,
      );
    }
  }
}