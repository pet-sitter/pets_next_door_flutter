import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final timerProvider = StateNotifierProvider<TimerNotifier, TimerModel>(
  (ref) => TimerNotifier(),
);

class TimerNotifier extends StateNotifier<TimerModel> {
  TimerNotifier() : super(_initialState);

  static const int _initialDurationInSeconds = 180;
  static const Duration _initialDuration =
      Duration(seconds: _initialDurationInSeconds);
  static final _initialState = TimerModel(
    _durationString(_initialDurationInSeconds),
    _initialDuration,
  );

  final Ticker _ticker = Ticker();
  StreamSubscription<int>? _tickerSubscription;

  static String _durationString(int duration) {
    final minutes = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final seconds = (duration % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _tickerSubscription?.cancel();
    super.dispose();
  }

  void start() {
    _startTimer();
  }

  // void _restartTimer() {
  //   _tickerSubscription?.resume();
  //   state = TimerModel(
  //     state.timeLeft,
  //   );
  // }

  void _startTimer() {
    _tickerSubscription?.cancel();

    _tickerSubscription =
        _ticker.tick(ticks: _initialDurationInSeconds).listen((duration) {
      state = TimerModel(
        _durationString(duration),
        Duration(seconds: duration),
      );
    });

    _tickerSubscription?.onDone(() {
      state = TimerModel(
        state.timeLeftString,
        state.timeLeft,
      );
    });

    state = TimerModel(
      _durationString(_initialDurationInSeconds),
      _initialDuration,
    );
  }
}

class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}

class TimerModel {
  const TimerModel(this.timeLeftString, this.timeLeft);
  final String timeLeftString;
  final Duration timeLeft;
  // final ButtonState buttonState;
}

// enum ButtonState {
//   initial,
//   started,
//   paused,
//   finished,
// }
