import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/core/style/typography.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool obsecureText;
  const AuthTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.leagueSpartan(color: Colors.white,fontSize: 20),
      obscureText: obsecureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: AppColors.inputFieldPrimaryColor,
        ),
        hintText: hintText,
        filled: true,
        fillColor: AppColors.inputFieldSecondaryColor,
        hintStyle: AppTypography.inputFieldPrimaryTextStyle,
        constraints: BoxConstraints(
          maxWidth: AppComponestsSizes(context)
              .runningDeviceDimensionAdjustedWidth(305),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
