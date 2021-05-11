enum EmailSignInFormType { signIn, register }

class EmailSignInModel {

  EmailSignInModel({
    this.password = '',
    this.email = '',
    this.isLoading = false,
    this.submitted = false,
    this.formType = EmailSignInFormType.signIn,
  });
  final String password;
  final String email;
  final bool isLoading;
  final bool submitted;
  final EmailSignInFormType formType;
}
