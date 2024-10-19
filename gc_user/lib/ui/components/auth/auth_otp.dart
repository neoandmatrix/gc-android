import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gc_user/core/style/colors.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  late List<TextEditingController?> controls;
  
  bool clearText = false;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      filled: true,
      fillColor: AppColors.authFieldsBackgroundColor,
      focusedBorderColor: AppColors.authFieldsBackgroundColor,
      borderWidth: 1.0,
      clearText: clearText,
      showFieldAsBox: true,
      textStyle: const TextStyle(fontSize: 18.0, color: Colors.white),
      fieldWidth: 44,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      onCodeChanged: (String value) {
        //Handle each value
      },
      handleControllers: (controllers) {
        //get all textFields controller, if needed
        controls = controllers;
      },
      onSubmit: (String verificationCode) {
        // either call directyly as user complets input
      }, // end onSubmit
    );
  }
}
