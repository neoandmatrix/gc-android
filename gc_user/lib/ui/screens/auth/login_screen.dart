import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_text_field.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({super.key});

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
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
                  child: DisplayText(text: 'LOG IN', fontSize: 38),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(25.2)),
                const SizedBox(
                  child: DisplayText(
                    text: 'Enter your email address \nto sign in',
                    fontSize: 23,
                    textColor: AppColors.authFieldsForegroundColor,
                  ),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(53.0),
                ),
                AuthTextField(
                    hintText: 'Email',
                    icon: Icons.alternate_email_rounded,
                    controller: _emailTextEditingController,
                    obsecureText: false),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                AuthTextField(
                    hintText: 'Password',
                    icon: Icons.key,
                    controller: _passwordTextEditingController,
                    obsecureText: false),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                const AuthButton(buttonText: 'LOG IN', isDisabled: true),
              ],
            ),
          ),
          Positioned(
            left: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedWidth(117),
            top: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedHeight(513),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'League Spartan',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedHeight(575),
            left: AppComponestsSizes(context)
                .runningDeviceDimensionAdjustedWidth(48),
            child: const Column(
              children: [
                SizedBox(
                  child: DisplayText(
                      text: 'Don\'t have an account?', fontSize: 28),
                ),
                SizedBox(
                  child: DisplayText(
                    text: 'Sign up',
                    fontSize: 23,
                    textColor: AppColors.authButtonEnabledBackgroundColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
