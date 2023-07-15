import 'package:flutter/material.dart';
import 'constants.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onClicked});
  final IconData? icon;
  final void Function()? onClicked;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClicked,
      shape: CircleBorder(),
      elevation: 0.0,
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 55.0,
        height: 55.0,
      ),
    );
  }
}