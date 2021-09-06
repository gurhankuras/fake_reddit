import 'dart:convert';

class ResponseError {
  final String message;
  final int? code;
  ResponseError({
    required this.message,
    this.code,
  });

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
    };
  }

  factory ResponseError.fromJson(Map<String, dynamic> map) {
    return ResponseError(
      message: map['error'],
      code: map['code'],
    );
  }

  // factory ResponseError.fromJson(String source) =>
  //     ResponseError.fromMap(json.decode(source));
}
