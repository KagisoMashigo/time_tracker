import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_form_stateful.dart';

class EmailSignInModel {
  EmailSignInModel({
    this.password,
    this.email,
    this.isLoading,
    this.submitted,
    this.formType,
  });

  final String password;
  final String email;
  final bool isLoading;
  final bool submitted;
  final EmailSignInFormType formType;
}
