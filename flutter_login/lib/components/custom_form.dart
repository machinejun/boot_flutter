import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Form(
        key: _formkey,
        child: Column(
          children: [
            CustomTextFormFeild(text: "email"),
            SizedBox(height: medium_gap),
            CustomTextFormFeild(text: "Password"),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    Navigator.pushNamed(context, "/home");
                  }
                  
                },
                child: Text("Login"))
          ],
        ));
  }
}
