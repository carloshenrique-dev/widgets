import 'package:widgets/app/entities/address.dart';

class CreditCard {
  final String name;
  final String number;
  final String cpf;
  final String cvv;
  final String expirationDate;
  final Address address;

  CreditCard({
    this.name = '',
    this.number = '',
    this.cpf = '',
    this.cvv = '',
    this.expirationDate = '',
    this.address = const Address(),
  });

  CreditCard copyWith({
    String? name,
    String? number,
    String? cpf,
    String? cvv,
    String? expirationDate,
    Address? address,
  }) {
    return CreditCard(
      name: name ?? this.name,
      number: number ?? this.number,
      cpf: cpf ?? this.cpf,
      cvv: cvv ?? this.cvv,
      expirationDate: expirationDate ?? this.expirationDate,
      address: address ?? this.address,
    );
  }

  @override
  String toString() {
    return 'CreditCard(name: $name, number: $number, cpf: $cpf, cvv: $cvv, expirationDate: $expirationDate, address: $address)';
  }
}
