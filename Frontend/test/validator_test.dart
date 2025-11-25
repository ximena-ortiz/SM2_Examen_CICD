import 'package:flutter_test/flutter_test.dart';
import 'package:english_app/models/validator.dart';
void main() {
  test('Validar Email', () {
    expect(Validator.isValidEmail('correo@ejemplo.com'), true);
    expect(Validator.isValidEmail('correo_malo'), false);
  });

  test('Seguridad Contraseña', () {
    expect(Validator.isStrongPassword('1234567'), true);
    expect(Validator.isStrongPassword('123'), false);
  });

  test('Calculadora Descuento', () {
    final resultado = Validator.calcularDescuento(100.0, 10.0);
    expect(resultado, 90.0);
  });

  test('Rango Válido', () {
    expect(Validator.isRangoValido(5), true);
    expect(Validator.isRangoValido(0), false);
    expect(Validator.isRangoValido(11), false);
  });

  test('Texto a Mayúsculas', () {
    expect(Validator.toUpperText('hola mundo'), 'HOLA MUNDO');
  });
}
