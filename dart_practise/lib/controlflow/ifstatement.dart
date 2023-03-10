void main(List<String> args) {
  bool value = true;
  if (value)
    print("hello world");
  else
    print("bool value is not true");

  // Short hand notation for if and else statments
  // 1. Using ?? operator
  // 2. Using ?: operator
  // ?? Operator
  int? nullable;
  int nonnullable = nullable ?? 10;
  print(nonnullable);

  // ?: operator
  bool result = 5 == 0 ? true : false;
  print(result);
}
