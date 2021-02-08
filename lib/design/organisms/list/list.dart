import 'package:atom/design/atom/images/atom_image.dart';
import 'package:atom/design/atom/texts/atom_text.dart';
import 'package:atom/design/molecules/cards/card_visit.dart';
import 'package:flutter/material.dart';

class MoleculeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AtomImage(
            urlPath: 'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/unsplash-Josh-Earl.jpg',
            height: 180,
            width: 180,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AtomImage(
            urlPath: 'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/unsplash-Josh-Earl.jpg',
            height: 180,
            width: 180,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AtomImage(
            urlPath: 'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/unsplash-Josh-Earl.jpg',
            height: 180,
            width: 180,
          ),
        ),
      ],
    );
  }
}
