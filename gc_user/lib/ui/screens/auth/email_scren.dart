import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth_button.dart';
import 'package:gc_user/ui/components/auth_text_field.dart';

class EmailOtpScreen extends StatefulWidget {
  const EmailOtpScreen({super.key});

  @override
  State<EmailOtpScreen> createState() => _EmailOtpScreenState();
}

class _EmailOtpScreenState extends State<EmailOtpScreen> {
  late final TextEditingController _emailTextEditingController;
  late final TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppComponestsSizes(context)
          .runningDeviceDimensionAdjustedWidth(360.0),
      height:
          AppComponestsSizes(context).runningDeviceDimensionAdjustedHeight(716),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: AppColors.authPagebackgroundColor),
      child: Stack(
        children: [
          Positioned(
            left: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedWidth(27.0),
            top: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedHeight(50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(50.0)),
                const SizedBox(
                  child: Text(
                    'Register with your',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(5.0)),
                const SizedBox(
                  child: Text(
                    'Email Address',
                    style: TextStyle(
                      color: Color(0xFFE0E0E0),
                      fontSize: 30,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(5.0),
                ),
                const SizedBox(
                  child: Text(
                    'to continue',
                    style: TextStyle(
                      color: Color(0xFFE0E0E0),
                      fontSize: 20,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(53.0),
                ),
                AuthTextField(
                    hintText: 'Enter your email address',
                    icon: Icons.alternate_email_rounded,
                    controller: _emailTextEditingController,
                    obsecureText: false),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                Row(
                  children: [
                     const Text(
                        'Already have an account',
                        style: TextStyle(
                          color: Color(0xFFE0E0E0),
                          fontSize: 15,
                          fontFamily: 'League Spartan',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: AppComponestsSizes(context).runningDeviceDimensionAdjustedWidth(90),
                      ),
                     const Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xFFA7FF37),
                          fontSize: 15,
                          fontFamily: 'League Spartan',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(80.76),
                ),
                const AuthButton(buttonText: 'SEND OTP', isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
