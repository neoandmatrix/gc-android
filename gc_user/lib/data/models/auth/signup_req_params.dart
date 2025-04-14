
enum Gender { male, female }

enum Branch { cse, ce, eee, etc, it }

enum Year { first, second, third, fourth }

class SignupReqParams {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final Gender gender;
  final Branch branch;
  final Year year;
  final String password;

  SignupReqParams(
      {required this.firstName,
      required this.lastName,
      required this.dateOfBirth,
      required this.gender,
      required this.branch,
      required this.year,
      required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth.millisecondsSinceEpoch,
      'gender': gender,
      'branch': branch,
      'year': year,
      'password': password,
    };
  }

  
}
