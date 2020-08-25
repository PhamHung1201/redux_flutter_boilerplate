import 'package:redux_flutter_boilerplate/states/app_state.dart';
import 'package:redux_flutter_boilerplate/reducers/count_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(countState: countReducer(state.countState, action));
}
