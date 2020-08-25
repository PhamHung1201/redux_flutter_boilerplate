import 'package:redux_flutter_boilerplate/actions/change_number_action.dart';
import 'package:redux_flutter_boilerplate/states/count_state.dart';
import 'package:redux/redux.dart';

/**
 * Combine multiple reducers for single state
* */
final countReducer = combineReducers<CountState>([
  TypedReducer<CountState, ChangeNumberAction>(changeNumberAction),
]);

CountState changeNumberAction(CountState state, ChangeNumberAction action) {
  return state.copyWith(state.count + action.value);
}
