import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/auth_text_field.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  late final TextEditingController _passowrdTextEditingController;
  late final TextEditingController _confirmPassowrdTextEditingController;

  @override
  void initState() {
    super.initState();
    _passowrdTextEditingController = TextEditingController();
    _confirmPassowrdTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passowrdTextEditingController.dispose();
    _confirmPassowrdTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppComponestsSizes(context)
          .runningDeviceDimensionAdjustedWidth(360.0),
      height:
          AppComponestsSizes(context).runningDeviceDimensionAdjustedHeight(716),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: AppColors.primaryBackgroundColor),
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
                        .runningDeviceDimensionAdjustedHeight(67.0)),
                const SizedBox(
                  child: DisplayText(text: 'ENTER PASSWORD', fontSize: 35),
                ),
                SizedBox(
                    height: AppComponestsSizes(context)
                        .runningDeviceDimensionAdjustedHeight(25.0)),
                SizedBox(
                  width: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedWidth(250),
                  child: const DisplayText(
                      text:
                          'The password must consists a letter, digit and a special character.',
                      fontSize: 20),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(68.0),
                ),
                AuthTextField(
                    hintText: 'Enter your password',
                    icon: Icons.key_outlined,
                    controller: _passowrdTextEditingController,
                    obsecureText: true),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(11.76),
                ),
                AuthTextField(
                    hintText: 'Enter your password',
                    icon: Icons.key_outlined,
                    controller: _confirmPassowrdTextEditingController,
                    obsecureText: true),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(12.60),
                ),
                const AuthButton(buttonText: 'Submit', isDisabled: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
