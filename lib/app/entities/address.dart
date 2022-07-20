class Address {
  final String cep;
  final String city;
  final String state;
  final String neighboorhood;
  final String address;
  final String number;
  final String addresLine2;

  const Address({
    this.cep = '',
    this.city = '',
    this.state = '',
    this.neighboorhood = '',
    this.address = '',
    this.number = '',
    this.addresLine2 = '',
  });

  Address copyWith({
    String? cep,
    String? city,
    String? state,
    String? neighboorhood,
    String? address,
    String? number,
    String? addresLine2,
  }) {
    return Address(
      cep: cep ?? this.cep,
      city: city ?? this.city,
      state: state ?? this.state,
      neighboorhood: neighboorhood ?? this.neighboorhood,
      address: address ?? this.address,
      number: number ?? this.number,
      addresLine2: addresLine2 ?? this.addresLine2,
    );
  }

  @override
  String toString() {
    return 'Address(cep: $cep, city: $city, state: $state, neighboorhood: $neighboorhood, address: $address, number: $number, addresLine2: $addresLine2)';
  }
}
