class Fraction implements Comparable<Fraction> {
  int _numerator;
  int _denominator;
  Fraction(this._numerator, this._denominator);
  @override
  int compareTo(Fraction other) {
    // if lesser than return -1
    if (this._numerator ~/ this._denominator <
        other._numerator ~/ other._denominator)
      return -1;
    // if greater than return 1
    else if (this._numerator ~/ this._denominator >
        other._numerator ~/ other._denominator) return 1;
    // if both are equal return 0
    return 0;
  }
}
