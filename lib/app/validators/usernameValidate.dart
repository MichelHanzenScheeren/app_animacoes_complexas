String usernameValidate(String text) {
  if (text.isEmpty) {
    return "Preenchimento obrigatório!";
  } else if (text.length < 6) {
    return "Seu username precisa ter pelo menos 6 caracters";
  } else {
    return null;
  }
}