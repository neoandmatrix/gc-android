import 'package:flutter/material.dart';
import 'package:gc_user/core/style/colors.dart';
import 'package:gc_user/core/style/sizes.dart';
import 'package:gc_user/core/style/typography.dart';
import 'package:gc_user/ui/components/auth/auth_button.dart';
import 'package:gc_user/ui/components/auth/display_text.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _firstNameEditingController;
  late final TextEditingController _lastNameEditingController;
  late final TextEditingController _dateOfBirthEditingController;

  @override
  void initState() {
    super.initState();
    _firstNameEditingController = TextEditingController();
    _lastNameEditingController = TextEditingController();
    _dateOfBirthEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameEditingController.dispose();
    _lastNameEditingController.dispose();
    _dateOfBirthEditingController.dispose();
  }

  Future<void> _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime(2030, 1, 1),
    );
    if (pickedDate != null) {
      _dateOfBirthEditingController.text = pickedDate.toString().split(" ")[0];
    } else {}
  }

  final List<String> gender = <String>['Male', 'Female'];

  final List<String> branch = <String>['CSE', 'CE', 'IT', 'EEE', 'ETC'];

  final List<String> year = <String>['2024', '2025', '2026', '2027', '2028'];

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
                        .runningDeviceDimensionAdjustedHeight(25.8)),
                const SizedBox(
                  child: DisplayText(text: 'CREATE ACCOUNT', fontSize: 35),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(25.0),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // FIRST NAME

                      TextFormField(
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter your first name',
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.white),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the first name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: AppComponestsSizes(context)
                            .runningDeviceDimensionAdjustedHeight(11.76),
                      ),

                      // LAST NAME TEXT FIELD

                      TextFormField(
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter your last name',
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.white),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the last name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: AppComponestsSizes(context)
                            .runningDeviceDimensionAdjustedHeight(11.76),
                      ),

                      // DATE OF BIRTH FIELD

                      TextFormField(
                        readOnly: true,
                        onTap: _selectDate,
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter your Date of birth',
                          prefixIcon: const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.white,
                          ),
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
                        // TODO : check validation
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the date of birth';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: AppComponestsSizes(context)
                            .runningDeviceDimensionAdjustedHeight(11.76),
                      ),

                      // GENDER TEXT FIELD

                      DropdownButtonFormField(
                        items: gender
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        //borderRadius:
                        //  const BorderRadius.all(Radius.circular(15)),
                        dropdownColor: AppColors.inputFieldSecondaryColor,
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 15),
                        decoration: InputDecoration(
                          hintText: 'Enter your gender',
                          prefixIcon:
                              const Icon(Icons.mic_none, color: Colors.white),
                          //const ImageIcon(
                          // TODO : fix icon not working
                          //color: Colors.white,
                          //AssetImage('assets/gender_icon.png')
                          //),
                          // TODO : ask about the inconsistency with radius
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
                        // TODO : change validator
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter the last name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: AppComponestsSizes(context)
                            .runningDeviceDimensionAdjustedHeight(11.76),
                      ),

                      // BRANCH TEXT FIELD

                      DropdownButtonFormField(
                        items: branch
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        dropdownColor: AppColors.inputFieldSecondaryColor,
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter your branch',
                          prefixIcon:
                              const Icon(Icons.mic_none, color: Colors.white),
                          //const ImageIcon(
                          // TODO : fix icon not working
                          //color: Colors.white,
                          //AssetImage('./assets/gender_icon.png')
                          //),
                          // TODO : ask about the inconsistency with radius
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
                        // TODO : change validator
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter the last name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: AppComponestsSizes(context)
                            .runningDeviceDimensionAdjustedHeight(11.76),
                      ),

                      // PASSING YEAR TEXT FIELD

                      DropdownButtonFormField(
                        items:
                            year.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        dropdownColor: AppColors.inputFieldSecondaryColor,
                        style: GoogleFonts.leagueSpartan(
                            color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter your year',
                          prefixIcon:
                              const Icon(Icons.mic_none, color: Colors.white),
                          //const ImageIcon(
                          // TODO : fix icon not working
                          //color: Colors.white,
                          //AssetImage('./assets/gender_icon.png')
                          //),
                          // TODO : ask about the inconsistency with radius
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
                        // TODO : change validator
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter the last name';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppComponestsSizes(context)
                      .runningDeviceDimensionAdjustedHeight(5.76),
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: false,
                      onChanged: (bool? value) => {},
                    ),
                    Text(
                      'I agree with the terms and conditions',
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                // SizedBox(
                //   height: AppComponestsSizes(context)
                //       .runningDeviceDimensionAdjustedHeight(8.0),
                // ),
                const AuthButton(buttonText: 'CREATE ACCOUNT', isDisabled: true)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
