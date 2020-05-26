
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwisebudgetapp/components/colors.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'package:iwisebudgetapp/textFieldInputs.dart';

import 'package:iwisebudgetapp/components/individualDashboard.dart';

class SignUp extends StatefulWidget {
	@override
	_SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
	final GlobalKey<FormState> _form = GlobalKey<FormState>();
	TextEditingController fullNameController;
	TextEditingController emailController;
	TextEditingController passwordController;
	TextEditingController confirmPasswordController;
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
								height: 24,
							),
							Text(
								'In just few steps create an account and \n get access to your financial freedom',

							),
							SizedBox(
								height: 34,
							),
							Form(
								key: _form,
								child: Column(
									children: [
										TextValues(
											title: 'Full Name',
											obscure: false,
											validate: (val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												} else
													return null;
											},
										),
										SizedBox(
											height: 24,
										),
										TextValues(
											title: 'Email Address ',
											obscure: false,
											keyboard: TextInputType.emailAddress,
											controller: emailController,
											validate: (val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												} else
													return null;
											},
										),
										SizedBox(
											height: 24,
										),
										TextValues(
											title: 'Password',
											obscure: true,
											controller: passwordController,
											validate: (val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												} else
													return null;
											},
										),
										SizedBox(
											height: 24,
										),
										TextValues(
											title: 'Confirm Password',
											controller: confirmPasswordController,
											obscure: true,
											validate: (val) {
												if (val.isEmpty) {
													return "This field can't be Empty";
												}
												return null;
											},
										),
										SizedBox(
											height: 36,
										),
										InkWell(
											onTap: () {
												if (_form.currentState.validate()) {
													Navigator.of(context).push(MaterialPageRoute(
															builder: (BuildContext context) =>
																	IndividualDashboard()));
												}
											},
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
								height: 24,
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.center,
								children: [
									Text('Already have an account'),
									InkWell(
										onTap: () {
											Navigator.of(context).push(MaterialPageRoute(
													builder: (BuildContext context) =>
															Login()));
										},
										child: Text(
											'Login',
											style: TextStyle(
													color: mainColor, fontWeight: FontWeight.w500),
										),
									),
								],
							),
							SizedBox(
								height: 16,
							),
							Text('or Sign-up With '),
							SizedBox(
								height: 16,
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