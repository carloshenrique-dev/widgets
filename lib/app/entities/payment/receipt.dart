import 'package:widgets/app/entities/address.dart';

class Receipt {
  final String name;
  final String cpf;
  final Address address;

  Receipt({
    this.name = '',
    this.cpf = '',
    this.address = const Address(),
  });

  @override
  String toString() => 'Receipt(name: $name, cpf: $cpf, address: $address)';

  Receipt copyWith({
    String? name,
    String? cpf,
    Address? address,
  }) {
    return Receipt(
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      address: address ?? this.address,
    );
  }
}
