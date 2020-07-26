import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({@required this.text, this.onPress, this.fullWidth = true});

  final String text;
  final void Function() onPress;
  final bool fullWidth;

  final BorderRadius _radius = BorderRadius.circular(40);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth ? double.infinity : null,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: _radius,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.6),
            offset: Offset(4.0, 4.0),
            blurRadius: 10.0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: _radius,
        ),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (onPress != null) {
              onPress();
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            decoration: BoxDecoration(borderRadius: _radius),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
