class Validator {
  static bool isValidEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  static bool isStrongPassword(String password) {
    return password.length > 6;
  }

  static double calcularDescuento(double precio, double porcentaje) {
    final descuento = precio * (porcentaje / 100);
    return precio - descuento;
  }

  static bool isRangoValido(int numero) {
    return numero >= 1 && numero <= 10;
  }

  static String toUpperText(String texto) {
    return texto.toUpperCase();
  }
}
