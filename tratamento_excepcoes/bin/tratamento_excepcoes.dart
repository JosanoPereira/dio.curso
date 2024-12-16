import 'dart:convert';
import 'dart:io';

import 'package:tratamento_excepcoes/models/aluno.dart';

void main(List<String> arguments) {
  var aluno = Aluno('João');
  List<double> list = [];
  print('Digite as notas de ${aluno.getNome()}:');
  try {
    for (var i = 0; i < 3; i++) {
      var line = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
      list.add(line);
    }
    aluno.setNotas(list);
    print(aluno.media(list));
  } catch (e) {
    print('erro');
  } finally {
    print('Executando finally');
  }
}
