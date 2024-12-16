import 'package:desafio_dart_dio/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  var p1 = Pessoa("Josano Pereira");
  p1.setAltura(1.71);
  p1.setPeso(78);
  test('Testando IMC', () {
    expect(p1.calcularIMC(), greaterThanOrEqualTo(26));
  });
}
