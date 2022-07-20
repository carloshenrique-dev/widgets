import 'package:widgets/app/entities/address.dart';

class FinishRegistration {
  final String name;
  final String email;
  final String phone;
  final String role;
  final String cpf;
  final String education;
  final String birthDate;
  final String activityArea;
  final Address address;

  FinishRegistration({
    this.name = '',
    this.email = '',
    this.phone = '',
    this.role = '',
    this.cpf = '',
    this.education = '',
    this.birthDate = '',
    this.activityArea = '',
    this.address = const Address(),
  });

  FinishRegistration copyWith({
    String? name,
    String? email,
    String? phone,
    String? role,
    String? cpf,
    String? education,
    String? birthDate,
    String? activityArea,
    Address? address,
  }) {
    return FinishRegistration(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      cpf: cpf ?? this.cpf,
      education: education ?? this.education,
      birthDate: birthDate ?? this.birthDate,
      activityArea: activityArea ?? this.activityArea,
      address: address ?? this.address,
    );
  }

  @override
  String toString() {
    return 'FinishRegistration(name: $name, email: $email, phone: $phone, role: $role, cpf: $cpf, education: $education, birthDate: $birthDate, activityArea: $activityArea, address: $address)';
  }
}
