import 'package:atom/design/organisms/login/login.dart';
import 'package:atom/design/organisms/register/register.dart';
import 'package:atom/design/template/template_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          body: TemplatePage(widgets: [
            Login.form(context),
          ]),
        ),
      ),
    );
  }
}
