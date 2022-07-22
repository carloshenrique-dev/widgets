class RegisterNewUser {
  final String farm;
  final String cpf;
  final String phone;

  RegisterNewUser({this.farm = '', this.cpf = '', this.phone = ''});

  RegisterNewUser copyWith({
    String? farm,
    String? cpf,
    String? phone,
  }) {
    return RegisterNewUser(
      farm: farm ?? this.farm,
      cpf: cpf ?? this.cpf,
      phone: phone ?? this.phone,
    );
  }

  @override
  String toString() => 'RegisterNewUser(farm: $farm, cpf: $cpf, phone: $phone)';
}
