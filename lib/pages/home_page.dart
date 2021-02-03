import 'package:atom/behaviors/buttons/app_outline_button.dart';
import 'package:atom/behaviors/buttons/behavior_outline_button.dart';
import 'package:atom/core/behaviors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              AppOutlineButton.buttonDisabled(),
              AppOutlineButton.buttonError(),
              AppOutlineButton.buttonLoading(),
              AppOutlineButton.buttonRegular(() {}),
            ],
          ),
        ),
      ),
    );
  }
}
