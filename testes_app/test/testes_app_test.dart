import 'package:test/test.dart';
import 'package:testes_app/testes.dart';

void main() {
  test('calcular desconto com percentagem', () {
    expect(calcularDesconto(100, 25, true), 75);
  });

  test('Esperar por um erro', () {
    expect(() => calcularDesconto(0, 25, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('calcular desconto sem percentagem', () {
    expect(calcularDesconto(100, 25, false), 75);
  });

  group('description', () {
    var valuesToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };

    for (var value in valuesToTest) {
      test('Entrada $value', () {
        expect(
            () => calcularDesconto(
                  double.parse(value['valor'].toString()),
                  double.parse(value['desconto'].toString()),
                  value['percentual'] == true,
                ),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });
}
