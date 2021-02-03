import 'package:atom/design/organisms/organism_list_animals.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(body: OrganismListAnimals()),
      ),
    );
  }
}
