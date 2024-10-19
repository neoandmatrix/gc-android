import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_otp.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
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
                    'Your entered email address is',
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
                    'abcd@gmail.com',
                    style: TextStyle(
                      color: Color(0xFFA7FF37),
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
                const Row(
                  children: [
                    Text(
                      'Enter the',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' OTP ',
                      style: TextStyle(
                        color: Color(0xFFA7FF37),
                        fontSize: 25,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'sent to your',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(3.0),
                ),
                const Text(
                      'email address',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
                    const Text(
                      'OTP will expire in 00:30',
                      style: TextStyle(
                        color: Color(0xFFE0E0E0),
                        fontSize: 15,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: AppComponestsSizes(context)
                          .runningDeviceDimensionAdjustedWidth(55),
                    ),
                    const Text(
                      'Resend OTP',
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
                const AuthButton(buttonText: 'VERIFY OTP', isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
