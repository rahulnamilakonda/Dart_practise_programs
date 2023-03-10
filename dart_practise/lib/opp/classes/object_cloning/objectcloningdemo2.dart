// Cloning of objects/generic types
class Books {
  List<String> _books;
  Books(this._books);
  Books copyWith({List<String>? books}) => Books(books ?? []
    ..addAll(this._books));
}

// if collection contains non primitive datatypes then
class Skill {
  int id;
  String name;
  Skill(this.id, this.name);
  Skill copyWith({int? id, String? name}) =>
      Skill(id ?? this.id, name ?? this.name);
}

class Books1 {
  List<Skill> _skills;
  // Books1({required this.skills});
  // or
  Books1(this._skills);
  Books1 copyWith({List<Skill>? skills}) =>
      Books1(skills ?? this._skills.map((skill) => skill.copyWith()).toList());
}

void main(List<String> args) {
  Books1 b1 = Books1(<Skill>[Skill(1, "Dart")]);
  Books1 b2 = b1;
  print(b2 == b1); // True Points to same object
  b2 = b1.copyWith();
  print(b2 == b1); // False doesn't point to same object
}
