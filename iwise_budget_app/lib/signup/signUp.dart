import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'package:http/http.dart' as http;


import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwisebudgetapp/components/colors.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'package:iwisebudgetapp/textFieldInputs.dart';
import 'package:iwisebudgetapp/signupModel.dart';

class SignUp extends StatefulWidget {
	@override
	_SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

	//this variable is used to check that the user input a valid password
	String _confirmPassword;
	bool isLoading = false;

	//We just create a model for the signup.
	//Here we can be able to transfer user input to the registration API.
	SignUpModel model = SignUpModel();

	final GlobalKey<FormState> _form = GlobalKey<FormState>();
	TextEditingController fullNameController;
	TextEditingController emailController;
	TextEditingController passwordController;
	TextEditingController confirmPasswordController;

//	The signUp collects data from the user then transfers it to the database.
	Future signUp( ) async{
		Map<String, dynamic> user = {
			"name" : model.name,
			"username": model.UserfullName,
			"email": model.UserEmail,
			"passoword": model.UserPassword
		};
		var bodyData = json.encode(user);
		var jsonData;
		http.Response response = await http.post("http://iwise.herokuapp.com/api/auth/signup", body: bodyData );
		if(response.statusCode == 201){
			jsonData = json.decode(response.body);
			print(jsonData);
		}
		else {
			print(response.statusCode);
		}
	}
	_onSubmit(){
		if (_form.currentState.validate()) {
			Navigator.pushReplacementNamed(context, '/individualDashboard');
			signUp();
		print(model.name);
		}
	}

	@override
	void initState() {
		fullNameController = TextEditingController();
		emailController = TextEditingController();
		passwordController = TextEditingController();
		confirmPasswordController = TextEditingController();
		super.initState();
	}

	@override
	void dispose() {
		fullNameController.dispose();
		emailController.dispose();
		passwordController.dispose();
		confirmPasswordController.dispose();
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SingleChildScrollView(
				child: Padding(
					padding: const EdgeInsets.only(left: 24.0, right: 24),
					child: Column(
						children: [
							Image.asset('assets/login.png'),
							SizedBox(
								height: 24,
							),
							Text(
								'Create an Account',
								style: GoogleFonts.raleway(
										textStyle: TextStyle(
												color: mainColor,
												fontSize: 30,
												fontWeight: FontWeight.bold)),
							),
							SizedBox(
								height: 20,
							),
							Text(
								'In just few steps create an account and \n get access to your financial freedom',

							),
							SizedBox(
								height: 20,
							),
							Form(
								key: _form,
								child: Column(
									children: [
										TextValues(
											title: "Name",
											obscure: false,
											validate: (String val){
												if(val.isEmpty){
													return "name is required";
												}
												return null;
											},
											saved: (String val){
												model.name = val;
											},
										),
										SizedBox(
											height: 20,
										),
										TextValues(
											title: 'Full Name',
											obscure: false,
											validate: (String val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												} else
													return null;
											},
											saved: (String val){
												model.UserfullName = val;
											},
										),
										SizedBox(
											height: 20,
										),
										TextValues(
											title: 'Email Address ',
											obscure: false,
											keyboard: TextInputType.emailAddress,
											controller: emailController,
											validate: (String val) {
												if(val.isEmpty){
													return "Invalid email input";
												}
												return null;
											},
											saved: (String val){
												model.UserEmail = val;
											},
										),
										SizedBox(
											height: 20,
										),
										TextValues(
											passwordLength: 10,
											title: 'Password',
											obscure: true,
											controller: passwordController,
											validate: (String val) {
												if (val.isEmpty ) {
													return "Password is required";
												} if(val.length < 10){
													return "Password must be greater than 8 characters";
												}
												_form.currentState.save();
													return null;
											},
											saved: (String val){
												model.UserPassword = val;
											},
										),
										SizedBox(
											height: 20,
										),
										TextValues(
											passwordLength: 10,
											title: 'Confirm Password',
											controller: confirmPasswordController,
											obscure: true,
											validate: (String val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												}
												if(val.length < 10){
													return "Password must be greater than 8 characters";
												}
												if(_confirmPassword != model.UserPassword){
													return "Passwords do not match";
												}
												return null;
											},
											saved: (String val){
												setState(() {
												  _confirmPassword = val;
												});
											},
										),
										SizedBox(
											height: 25,
										),
										InkWell(
											onTap: _onSubmit,
											child: Container(
												width: double.infinity,
												height: 56,
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(7),
													color: mainColor,
												),
												child: Center(
													child: Text(
														'CREATE ACCOUNT',
														style: TextStyle(
															color: white,
															fontSize: 20,
															fontWeight: FontWeight.w500,
														),
													),
												),
											),
										),
									],
								),
							),
							SizedBox(
								height: 20,
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.center,
								children: [
									Padding(
									  padding: const EdgeInsets.all(20.0),
									  child: Text('Already have an account?'),
									),
									SizedBox(height: 10.0,),
									InkWell(
										onTap: () {
											Navigator.of(context).push(MaterialPageRoute(
													builder: (BuildContext context) =>
															Login()));
										},
										child: Padding(
										  padding: EdgeInsets.all(5.0),
										  child: Text(
										  	'Login',
										  	style: TextStyle(
										  			color: mainColor, fontWeight: FontWeight.w500),
										  ),
										),
									),
								],
							),
							SizedBox(
								height: 10,
							),
							Text('or Sign-up With '),
							SizedBox(
								height: 10,
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.center,
								children: [
									SvgPicture.asset('assets/google.svg'),
									Text('   Google'),
									SizedBox(
										width: 24,
									),
									SvgPicture.asset('assets/facebook.svg'),
									Text('   Facebook'),
								],
							)
						],
					),
				),
			),
		);
	}
}