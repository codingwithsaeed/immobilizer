library immobilizer;

import 'package:flutter/material.dart';

class Immobilizer extends StatelessWidget {
  final Widget child;
  final bool immobile;
  const Immobilizer({
    Key? key,
    required this.child,
    required this.immobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: immobile,
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }
}
