// mixins are like copy/paste methods that generally
// dont rely on inheritance

mixin Walking {
  void waking() => print("walking");
}

mixin Running {
  void running() => print("running");
}

class UsageOfMixins with Walking, Running {
  int id;
  UsageOfMixins(this.id);
}

void main(List<String> args) {
  final uxm = UsageOfMixins(10);
  uxm.running();
  uxm.waking();
}
