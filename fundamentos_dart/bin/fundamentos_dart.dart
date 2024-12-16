import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Seja Benvindo a nossa Calculadora'.toUpperCase());

  print('Insira o Primeiro valor:');
  var valor1 = double.parse(
      stdin.readLineSync(encoding: utf8, retainNewlines: true) ?? '0');
  print('Insira o Segundo valor:');
  var valor2 = double.parse(stdin.readLineSync(encoding: utf8) ?? '0');

  print('Que operação deseja fazer ?');
  print('* 1. Add *'.replaceAll('*', '=' * 15));
  print('* 2. Sub *'.replaceAll('*', '=' * 15));
  print('* 3. Mul *'.replaceAll('*', '=' * 15));
  print('* 4. Div *'.replaceAll('*', '=' * 15));

  var valor3 = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
  dynamic resultado;
  switch (valor3) {
    case 1:
      resultado = valor1 + valor2;
      break;
    case 2:
      resultado = valor1 - valor2;
      break;
    case 3:
      resultado = valor1 * valor2;
      break;
    case 4:
      try {
        resultado = valor1 / valor2;
      } catch (e) {
        resultado = 0;
      }
      break;
  }

  print(resultado);
}
