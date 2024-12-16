import 'package:dio_oo_project/classes/pessoas.dart';
import 'package:dio_oo_project/enum/tipo_notificacao.dart';
import 'package:dio_oo_project/service/implementation/notificacao_email.dart';
import 'package:dio_oo_project/service/implementation/notificacao_push_notificatio.dart';
import 'package:dio_oo_project/service/implementation/notificacao_sms.dart';
import 'package:dio_oo_project/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacaoInterface;

  void notificar(Pessoas pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacaoInterface = NotificacaoEmail();
        break;
      case TipoNotificacao.pushNotification:
        notificacaoInterface = NotificacaoPushNotificatio();
        break;
      case TipoNotificacao.sms:
        notificacaoInterface = NotificacaoSms();
        break;
      default:
        print('Nada escolhido');
        break;
    }
    if (notificacaoInterface != null) {
      notificacaoInterface!.enviarNotificacao(pessoa);
    }
  }
}
