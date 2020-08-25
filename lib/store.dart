import 'package:redux/redux.dart';
import 'package:redux_flutter_boilerplate/middlewares/counting_middleware.dart';
import 'package:redux_flutter_boilerplate/reducers/app_reducer.dart';
import 'package:redux_flutter_boilerplate/states/app_state.dart';

Store<AppState> createStore() {
  return Store(appReducer,
      initialState: AppState.initial(),
      middleware: [CountingMiddleware()]);
}
