//Abstract
import 'package:dio_oo_project/enum/tipo_notificacao.dart';

abstract class Pessoas {
  // Propriedades
  String? _nome;
  int? _idade;
  String? _sobrenome;
  String? _token;
  String? _email;
  String? _phone;
  //Enumerators
  TipoNotificacao _tipoNotificacao = TipoNotificacao.nenhum;

  Pessoas(String nome, int idade, String sobrenome, String token, String email,
      String phone,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _nome = nome;
    _idade = idade;
    _sobrenome = sobrenome;
    _token = token;
    _email = email;
    _phone = phone;
    _tipoNotificacao = tipoNotificacao;
  }

  // Ecapsulamento
  void setNome(String nome) => _nome = nome;
  void setIdade(int idade) => _idade = idade;
  void setSobreNome(String sobrenome) => _sobrenome = sobrenome;
  void setToken(String token) => _token = token;
  void setEmail(String email) => _email = email;
  void setPhone(String phone) => _phone = phone;

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) =>
      _tipoNotificacao = tipoNotificacao;

  String getNome() => _nome!;
  int getIdade() => _idade!;
  String getSobrenome() => _sobrenome!;
  String getToken() => _token!;
  String getEmail() => _email!;
  String getPhone() => _phone!;

  TipoNotificacao getTipoNotificacao() => _tipoNotificacao;

  // Sobrescrever
  @override
  String toString() {
    return {
      'Nome': _nome,
      'Idade': _idade,
      'Sobrenome': _sobrenome,
      'Token': _email,
      'Email': _email,
      'Phone': _phone,
      'Tipo Notificação': _tipoNotificacao,
    }.toString();
  }
}
