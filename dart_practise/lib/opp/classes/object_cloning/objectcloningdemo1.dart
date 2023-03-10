// Cloning of primitive types
class Fraction {
  int _numerator;
  int _denminator;
  Fraction(this._numerator, this._denminator);

  Fraction copyWith({int? numerator, int? denominator}) =>
      Fraction(numerator ?? this._numerator, denominator ?? this._denminator);
}

void main(List<String> args) {
  var f1 = Fraction(10, 20);
  var f2 = f1;
  print(f1 == f2);
  f2 = f1.copyWith(numerator: 50, denominator: 60);
  print(f1 == f2);
}
