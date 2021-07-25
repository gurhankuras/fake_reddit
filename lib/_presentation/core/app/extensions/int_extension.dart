extension IntX on int {
  String to() {
    final units = ['b', 'm', 'k', ''];
    final unitQuantities = [1000000000, 1000000, 1000, 1];
    final number = this;
// 17 milyon
    // 75609
    if (number < 1000) {
      return toString();
    }

    int n = 0;
    double newNumber = 0;
    while (number > 1000) {
      newNumber = number / unitQuantities[n];
      if (newNumber < 1) {
        ++n;
        continue;
      }
      return '${newNumber.toStringAsFixed(2)}${units[n]}';
    }

    return '$newNumber${units[n]}';
  }
}
