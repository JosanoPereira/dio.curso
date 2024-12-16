import 'package:dio_oo_project/classes/pessoas.dart';
import 'package:dio_oo_project/service/notificacao_interface.dart';

class NotificacaoSms implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoas pessoa) {
    print('Enviando Notificação para ${pessoa.getNome()}');
  }
}
