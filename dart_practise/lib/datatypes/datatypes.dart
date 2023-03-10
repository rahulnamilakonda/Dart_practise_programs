enum Days { Monday, Tuesday, wednesday, thrusday, firday, saturday, sunday }

void main(List<String> args) {
  /* Number Type ha 2 subclasses
 1. int
 2. Double 
*/
  int a = 10;
// previous we intialize it with 5.0 in earlier versions
  double b = 5;
  String name = "10";
  // Nullable type
  int? parse = int.tryParse(name);
  print(parse);
  Days selected = Days.Monday;
  Days holiday = Days.sunday;
  print(selected);
  print(holiday.index);
  // Lists
  var MyList = [1, 2, 3, 4, 5, 6];
  int val = 10;
  String interploation = "$val both works ${val}";
  print(interploation);
  // List<String>? strings = new List<String>?();
}
