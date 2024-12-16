import 'package:dio_oo_project/classes/pessoas.dart';
import 'package:dio_oo_project/enum/tipo_notificacao.dart';

// Herança
class PessoaFisica extends Pessoas {
  String? _bi;
  PessoaFisica(super.nome, super.idade, super.sobrenome, bi, super.token,
      super.email, super.phone,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _bi = bi;
  }

  void setBI(String bi) => _bi = bi;
  String getBI() => _bi!;

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
      'Bi': _bi,
    }.toString();
  }
}
