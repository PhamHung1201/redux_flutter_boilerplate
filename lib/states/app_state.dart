import 'package:meta/meta.dart';
import 'package:redux_flutter_boilerplate/states/count_state.dart';

@immutable
class AppState {
  /**
  * Add your state here
  * */

  final CountState countState;

  AppState({@required this.countState});

  factory AppState.initial() {
    return AppState(countState: CountState.initial());
  }

  AppState copyWith(CountState countState) {
    return AppState(countState: countState ?? this.countState);
  }
}
