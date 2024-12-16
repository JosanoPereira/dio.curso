import 'package:dio_oo_project/classes/pessoas.dart';
import 'package:dio_oo_project/enum/tipo_notificacao.dart';

// Herança
class PessoaJuridica extends Pessoas {
  String? _nif;
  PessoaJuridica(super.nome, super.idade, super.sobrenome, nif, super.token,
      super.email, super.phone,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _nif = nif;
  }

  void setNIF(String nif) => _nif = nif;
  String getNIF() => _nif!;

  @override
  String toString() {
    return {
      'Nome': super.getNome(),
      'Idade': super.getIdade(),
      'Sobrenome': super.getSobrenome(),
      'Token': super.getToken(),
      'Email': super.getEmail(),
      'Phone': super.getPhone(),
      'Tipo Notificação': super.getTipoNotificacao(),
      'Nif': _nif,
    }.toString();
  }
}
