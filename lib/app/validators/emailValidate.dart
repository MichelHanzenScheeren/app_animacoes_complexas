String emailValidate(String txt) {
  if (txt.isEmpty) {
    return "Preenchimento obrigatório!";
  } else if (txt.contains("@") &&
      (txt.contains(".com") || txt.contains(".br"))) {
    return null;
  } else {
    return "E-mail inválido!";
  }
}