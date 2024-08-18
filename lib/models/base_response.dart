import 'dart:convert';

class BaseRespone {
  BaseRespone({
    this.status,
    this.message,
  });

  String? status;
  String? message;

  BaseRespone copyWith({
    String? status,
    String? message,
  }) =>
      BaseRespone(
        status: status ?? this.status,
        message: message ?? this.message,
      );

  factory BaseRespone.fromRawJson(String str) =>
      BaseRespone.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseRespone.fromJson(Map<String, dynamic> json) => BaseRespone(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
