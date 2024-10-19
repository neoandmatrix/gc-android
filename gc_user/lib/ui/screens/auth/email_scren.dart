import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_text_field.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';

class EmailOtpScreen extends StatefulWidget {
  const EmailOtpScreen({super.key});

  @override
  State<EmailOtpScreen> createState() => _EmailOtpScreenState();
}

class _EmailOtpScreenState extends State<EmailOtpScreen> {
  late final TextEditingController _emailTextEditingController;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextEditingController.dispose();
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
                  child: DisplayText(text: 'Register with your', fontSize: 23),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(5.0)),
                const SizedBox(
                  child: DisplayText(text: 'Email Address', fontSize: 33),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(5.0),
                ),
                const SizedBox(
                  child: DisplayText(text: 'to continue', fontSize: 23),
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
                    const DisplayText(
                        text: 'Already have an account', fontSize: 18),
                    SizedBox(
                      width: AppComponestsSizes(context)
                          .runningDeviceDimensionAdjustedWidth(90),
                    ),
                    const DisplayText(
                      text: 'Log in',
                      fontSize: 15,
                      textColor: AppColors.authButtonEnabledBackgroundColor,
                    )
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
