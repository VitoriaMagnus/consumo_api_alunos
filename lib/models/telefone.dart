import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  //toMap - pega o nosso objeto telefone e transforma em um Objeto Map<String dynamic>
  //passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  //toJson - pega um Map<String, dynamic> e transforma em um json pelo pacote dart:convert (jsonEncode)
  //passo 2
  String toJson() => jsonEncode(toMap());

  // passo 2 da deserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  // passo 1
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
