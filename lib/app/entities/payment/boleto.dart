class Boleto {
  final String name;
  final String cpf;

  Boleto({
    this.name = '',
    this.cpf = '',
  });

  Boleto copyWith({
    String? name,
    String? cpf,
  }) {
    return Boleto(
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
    );
  }

  @override
  String toString() => 'Boleto(name: $name, cpf: $cpf)';
}
