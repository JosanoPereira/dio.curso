import 'package:dio_oo_project/classes/pessoa_fisica.dart';
import 'package:dio_oo_project/classes/pessoa_juridica.dart';
import 'package:dio_oo_project/enum/tipo_notificacao.dart';
import 'package:dio_oo_project/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var p2 = PessoaFisica('Josano', 20, 'Pereira', '005470375LA042',
      '9qwuik88323', 'josnaojp@gmail.com', '944281647');
  var p3 = PessoaJuridica('O Pnto do RJ', 2, 'RJ', '50032334', '9qwuik88323',
      'josnaojp@gmail.com', '944281647',
      tipoNotificacao: TipoNotificacao.pushNotification);
  print(p2);
  print(p3);

  p3.setTipoNotificacao(TipoNotificacao.pushNotification);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();

  enviarNotificacao.notificar(p3);
}
