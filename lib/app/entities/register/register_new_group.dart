class RegisterNewGroup {
  final String farm;
  final String email;
  final String password;

  RegisterNewGroup({this.farm = '', this.email = '', this.password = ''});

  @override
  String toString() =>
      'RegisterNewGroup(farm: $farm, email: $email, password: $password)';

  RegisterNewGroup copyWith({
    String? farm,
    String? email,
    String? password,
  }) {
    return RegisterNewGroup(
      farm: farm ?? this.farm,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
