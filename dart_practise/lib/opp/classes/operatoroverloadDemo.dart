class Fraction {
  int _numerator;
  int _denominator;
  Fraction(this._numerator, this._denominator);

  // a/b+c/d=a*d+b*c/a*b;
  Fraction operator +(Fraction other) {
    int num = this._numerator * other._denominator +
        other._numerator * this._denominator;
    int denm = this._denominator * other._denominator;
    return Fraction(num, denm);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$_numerator / $_denominator";
  }
}

void main(List<String> args) {
  var fr1 = Fraction(542, 45);
  var fr2 = Fraction(78, 45);
  var fr3 = fr1 + fr2;
  print(fr1);
  print(fr2);
  print(fr3);
}
