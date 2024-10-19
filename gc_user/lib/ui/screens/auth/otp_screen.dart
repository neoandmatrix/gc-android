import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_otp.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  
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
                  child: DisplayText(
                      text: 'Your entered email address is', fontSize: 23),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(4.0)),
                const SizedBox(
                    child: DisplayText(
                  text: 'abcd@gmail.com',
                  fontSize: 38,
                  textColor: AppColors.authButtonEnabledBackgroundColor,
                )),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(4.0),
                ),
                const Row(
                  children: [
                    DisplayText(text: 'Enter the', fontSize: 28),
                    DisplayText(
                      text: ' OTP ',
                      fontSize: 28,
                      textColor: AppColors.authButtonEnabledBackgroundColor,
                    ),
                    DisplayText(text: 'sent to your', fontSize: 28)
                  ],
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(2.0),
                ),
                const DisplayText(text: 'email address', fontSize: 28),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(53.0),
                ),
                const OtpField(),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                Row(
                  children: [
                    const DisplayText(
                        text: 'OTP will expire in 00:30', fontSize: 18),
                    SizedBox(
                      width: AppComponestsSizes(context)
                          .runningDeviceDimensionAdjustedWidth(30),
                    ),
                    const DisplayText(
                      text: 'Resend OTP',
                      fontSize: 18,
                      textColor: AppColors.authButtonEnabledBackgroundColor,
                    )
                  ],
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(80.76),
                ),
                const AuthButton(buttonText: 'VERIFY OTP', isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
