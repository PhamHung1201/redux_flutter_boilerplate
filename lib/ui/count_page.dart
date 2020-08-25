import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_boilerplate/states/app_state.dart';
import 'package:redux_flutter_boilerplate/viewmodels/counnt_view_model.dart';

class CountPage extends StatefulWidget {
  @override
  State createState() {
    return CountPageState();
  }
}

class CountPageState extends State<CountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Redux Flutter"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SafeArea(
          child: new Container(
            child: new StoreConnector<AppState, CountViewModel>(
              onInit: (store) {},
              converter: (store) => CountViewModel.fromStore(store),
              builder: (_, viewModel) => content(viewModel),
            ),
          ),
        ),
      ),
    );
  }

  Widget content(CountViewModel viewModel) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Count Number', style: TextStyle(fontSize: 24)),
          Visibility(
              visible: viewModel.count < 0,
              child: Text(
                '(Negative Number)',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 32.0),
          ),
          Text(
            '${viewModel.count}',
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.only(top: 32.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Icon(Icons.arrow_downward),
                  onPressed: (() {
                    viewModel.countDownNumber();
                  })),
              Padding(
                padding: EdgeInsets.all(32.0),
              ),
              RaisedButton(
                  child: Icon(Icons.arrow_upward),
                  onPressed: (() {
                    viewModel.countUpNumber();
                  })),
            ],
          )
        ],
      ),
    );
  }
}
