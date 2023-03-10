void main() {
  // variable defination
  // var is used for type inference
  // variable defination method-1
  var name = "hello";
  // variable defination method-2
  String name1 = "world";
  var num = 10;
  dynamic dy = "name"; // it is not compile time constant
  // rather it is runtime constant
  // Final type which cannot be changed during runtime
  // which is constant
  final data = "Cannot be changed";
  // single line
  var singleLineSingleQuote = 'Hello world how are you?';
  var doubleLineDoubleQuote = "Hello world how are you?";
  // single line with line break
  var lineBreak = 'hey hello world'
      'doing good';
  // multi line
  var multiLine = '''Select * from tableName
  where name = "hello world"''';
}
