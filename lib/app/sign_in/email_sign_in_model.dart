enum EmailSignInFormType { signIn, register }

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
