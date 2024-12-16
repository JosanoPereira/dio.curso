import 'dart:convert';
import 'dart:io';

import 'package:desafio_dart_dio/classes/pessoa.dart';

void main(List<String> arguments) {
  print('Insira o seu nome: ');

  var p1 = Pessoa(stdin.readLineSync(encoding: utf8) ?? "");
  double peso = 0;
  double altura = 0;
  try {
    print('Insira o seu peso: ');
    peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
    print('Insira o sua altura: ');
    altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
  } catch (e) {
    print('Verifique os valores');
  }

  p1.setAltura(altura);
  p1.setPeso(peso);

  print(p1.qualificacaoIMC(p1.calcularIMC()));
}
