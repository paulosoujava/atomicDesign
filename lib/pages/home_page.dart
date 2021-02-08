import 'package:atom/design/organisms/list/list.dart';
import 'package:atom/design/organisms/list/others.dart';
import 'package:atom/design/organisms/login/login.dart';
import 'package:atom/design/organisms/register/register.dart';
import 'package:atom/design/template/tamplate_home.dart';
import 'package:atom/design/template/template_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          // body: TemplateHome(
          //   urlPromotionImage: "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
          //   imagesOthers: MoleculeOthersList(),
          //   imagesTop: MoleculeList(),
          //   titleOthers: 'Others',
          //   titleTop: 'Top',
          // ),
          body: TemplatePage(
            widgets: [
              // MoleculeOthersList()
              Login.form(context),
              // Register.form(context),
            ],
          ),
        ),
      ),
    );
  }
}
