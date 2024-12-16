import 'package:dio_oo_project/classes/pessoas.dart';
import 'package:dio_oo_project/service/notificacao_interface.dart';

class NotificacaoPushNotificatio implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoas pessoa) {
    print('Enviando Push Notification para ${pessoa.getNome()}');
  }
}
