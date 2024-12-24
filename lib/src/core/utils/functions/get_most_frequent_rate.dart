double getMostFrequentRate(List<double> rates) {
  final rateMap = <double, int>{};
  for (final rate in rates) {
    // Store each rate as a key and its frequency (count) as the value.
    rateMap.update(rate, (value) => value + 1, ifAbsent: () => 1);
  }
  final mostFrequentRate =
      rateMap.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  return mostFrequentRate;
}
