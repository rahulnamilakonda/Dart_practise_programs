import 'dart:async';
import 'dart:math';

class RandomNumber {
  int maxValue;
  Timer? timer;
  late int _currentCount;
  late StreamController<int> _controller;
  RandomNumber({this.maxValue = 1000}) {
    _currentCount = 0;
    _controller = StreamController<int>(
        onCancel: _stopStream,
        onListen: _listenStream,
        onPause: _stopStream,
        onResume: _listenStream);
  }

  void _listenStream() {
    timer = Timer.periodic(Duration(seconds: 1), _runStream);
    _currentCount += 1;
  }

  void _stopStream() {
    timer?.cancel();
    _controller.close();
  }

  void _runStream(Timer timer) {
    int value = Random().nextInt(maxValue);
    _controller.add(value);
    if (_currentCount == maxValue) {
      _stopStream();
    }
  }

  // Getter
  Stream<int> get stream => _controller.stream;
}

void main(List<String> args) async {
  print(10);
  await Future.delayed(Duration(seconds: 2));
  var stream = RandomNumber().stream;
  final subcription = stream.listen((event) {
    //Inovkes OnListen()
    print(event);
  });
  await Future.delayed(Duration(seconds: 3));
  subcription.cancel();
}
