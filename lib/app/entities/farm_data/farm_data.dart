import 'package:widgets/app/entities/address.dart';

class FarmData {
  final String name;
  final String razaoSocial;
  final String cnpj;
  final Address address;

  FarmData({
    this.name = '',
    this.razaoSocial = '',
    this.cnpj = '',
    this.address = const Address(),
  });

  FarmData copyWith({
    String? name,
    String? razaoSocial,
    String? cnpj,
    Address? address,
  }) {
    return FarmData(
      name: name ?? this.name,
      razaoSocial: razaoSocial ?? this.razaoSocial,
      cnpj: cnpj ?? this.cnpj,
      address: address ?? this.address,
    );
  }

  @override
  String toString() {
    return 'FarmData(name: $name, razaoSocial: $razaoSocial, cnpj: $cnpj, address: $address)';
  }
}
