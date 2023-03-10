class ClassOne {
  int _id;
  ClassOne(this._id);
}

class ClassTwo extends ClassOne {
  int _id;
  // the super class is called in the base class this way
  ClassTwo(this._id) : super(_id);
}

class ClassOneDefaultConst {
  int? _id;
}

class ClassTwoDefaultConst {
  int _id;
  ClassTwoDefaultConst(this._id);
  // needed not to use super because the ClassOneDefaultConst
  // class calls the default constructor
}
