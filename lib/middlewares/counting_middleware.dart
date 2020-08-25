import 'package:redux/redux.dart';
import 'package:redux_flutter_boilerplate/actions/change_number_action.dart';
import 'package:redux_flutter_boilerplate/states/app_state.dart';

class CountingMiddleware extends MiddlewareClass<AppState> {
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is ChangeNumberAction) {
      next(new ChangeNumberAction(action.value));
    } else {
      next(action);
    }
  }
}
