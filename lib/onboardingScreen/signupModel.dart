import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SignUpModel {
		String name;
		String UserfullName;
		String UserEmail;
		String UserPassword;

		SignUpModel({
			@required this.name,
			@required this.UserfullName,
			@required this.UserEmail,
			@required this.UserPassword});
}