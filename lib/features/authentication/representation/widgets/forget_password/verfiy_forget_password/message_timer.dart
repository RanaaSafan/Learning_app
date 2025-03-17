import 'dart:async';
import 'package:flutter/material.dart';

class MessageTimer extends ChangeNotifier {
  final TextEditingController pinController = TextEditingController();
  int _secondsRemaining = 60;
  Timer? _timer;
  bool _canResendCode = false;

  int get secondsRemaining => _secondsRemaining;
  bool get canResendCode => _canResendCode;

  MessageTimer() {
    _startCountdown();
  }

  void _startCountdown() {
    _secondsRemaining = 60;
    _canResendCode = false;
    notifyListeners();

    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        _secondsRemaining--;
      } else {
        _canResendCode = true;
        _timer?.cancel();
      }
      notifyListeners();
    });
  }

  void resetTimer() {
    _startCountdown();
  }

  @override
  void dispose() {
    _timer?.cancel();
    pinController.dispose();
    super.dispose();
  }
}
