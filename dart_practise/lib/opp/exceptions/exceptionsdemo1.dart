// Exceptions Occurs due to unexcepted or erronous behavoiur happend during
// runtime
void main(List<String> args) {
  int num1 = 10;
  int num2 = 0;
  try {
    if (num2 == 0)
      throw IntegerDivisionByZeroException();
    else {
      double result = num1 / num2;
      print(result);
    }
    /*can even use this syntax if you dont want a instance
    of exception thrown
    on IntegerDivisiomByZeroException{
      print("divide by zero error");
    }
     */
  } on IntegerDivisionByZeroException catch (ex) {
    print(ex.stackTrace);
    print(ex.message);
  } finally {
    print("Thank you");
  }
}
