import 'dart:html';

class VideoExample {
  VideoElement _videoDom;
  bool _animationRunning = false;

  VideoExample() {

    _videoDom = querySelector('#html5-video');
    _videoDom.onPlay.listen((e) => _onPlay());
    _videoDom.onPause.listen((e) => _stopAnimation());
    _videoDom.onEnded.listen((e) => _stopAnimation());
  }

  void _onPlay() {
    _animationRunning = true;
  }

  void _stopAnimation() {
    _animationRunning = false;
  }
}

void main() {
  new VideoExample();
}