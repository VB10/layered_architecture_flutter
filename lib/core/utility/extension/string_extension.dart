extension StringExtension on String {
  bool validateMinLenght([double value = 6]) {
    return this.length > value;
  }
}
