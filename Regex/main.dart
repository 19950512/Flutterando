void main(List<String> args) {
  final email = 'mattmaydana@gmail.com';
  final regex = RegExp(r'[\w.-_]@[\w._-].');

  final isEmail = regex.hasMatch(email);

  print(isEmail);
}

void checkText(String text) {}
