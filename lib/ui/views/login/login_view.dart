import 'package:design_patter_flutter/app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter the id',
                    labelText: 'ID *',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.postViewRoute);
                  },
                  child: Text('Send ID'),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
