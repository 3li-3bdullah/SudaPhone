validInput(String val, int max, int min, String type) {
  if (val.trim().isEmpty) {
    return "The field is empty";
  }
  if (val.length > max) {
    return "The ${type} shouldn't to be more than ${max} char";
  }
  if (val.length < min) {
    return "The ${type} shouldn't to be less than ${min} char";
  }
}
