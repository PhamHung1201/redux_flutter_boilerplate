import 'package:redux_flutter_boilerplate/actions/change_number_action.dart';
import 'package:redux_flutter_boilerplate/states/app_state.dart';
import 'package:redux/redux.dart';

class CountViewModel {
  final int count;
  final Function() countDownNumber;
  final Function() countUpNumber;

  CountViewModel({this.count, this.countDownNumber, this.countUpNumber});

  static CountViewModel fromStore(Store<AppState> store) {
    return CountViewModel(
        count: store.state.countState.count,
        countDownNumber:(() {
          store.dispatch(new ChangeNumberAction(-1));
        }),
        countUpNumber: () {
          store.dispatch(new ChangeNumberAction(1));
        });
  }
}
