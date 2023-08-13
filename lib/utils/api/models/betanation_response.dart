import 'dart:convert';

class BetaNationApiResponse {
  final dynamic data;
  final String? message;
  final int? status;

  BetaNationApiResponse({this.data, this.message, this.status});

  BetaNationApiResponse copyWith(
          {int? status, String? message, dynamic data}) =>
      BetaNationApiResponse(
          status: status ?? this.status,
          message: message ?? this.message,
          data: data ?? this.data);

  factory BetaNationApiResponse.fromRawJson(String str) =>
      BetaNationApiResponse.fromJson(jsonDecode(str));

  factory BetaNationApiResponse.fromJson(Map<String, dynamic> json) =>
      BetaNationApiResponse(
          status: json['status'], message: json['message'], data: json['data']);

  Map<String, dynamic> toJson() =>
      {"status": status, "message": message, "data": data};
}
