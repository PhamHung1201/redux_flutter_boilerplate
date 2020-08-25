import 'package:flutter/material.dart';

@immutable
class CountState {
  final int count;

  CountState({@required this.count});

  factory CountState.initial() {
    return new CountState(count: 0);
  }

  CountState copyWith(int count) {
    return new CountState(count: count);
  }
}
