import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:snews/controller/signup_controller.dart';

class SignupPage extends GetView<SignUpController>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('SignUp'),),
     body: SafeArea(
       child: Text('SignupPage'),
     )
   );
  }

}