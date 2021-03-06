import 'package:flutter/foundation.dart';

class Login {
  int? code;
  bool? status;
  int? userId;
  String? userEmail;
  String? userNama;
  String? nik;
  String? userImg;

  Login(
      {this.code,
      this.status,
      this.userId,
      this.userEmail,
      this.userNama,
      this.nik,
      this.userImg});

  factory Login.formJson(Map<String, dynamic> obj) {
    return Login(
      code: obj['code'],
      status: obj['status'],
      userId: obj['data']['User']['id'],
      userEmail: obj['data']['User']['email'],
      userNama: obj['data']['User']['nama'],
      nik: obj['data']['User']['nik'],
      userImg: obj['data']['User']['gambar'],
    );
  }
}
