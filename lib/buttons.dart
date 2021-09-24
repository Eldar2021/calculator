import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  final double sizeButton;
  final Color bgButton;
  final String value;
  final Color valueColor;
  final double valueSize;
  final Function atkar;

  ButtonCalculator({
    required this.sizeButton,
    required this.bgButton,
    required this.value,
    required this.valueColor,
    required this.valueSize,
    required this.atkar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 80,
        height: 80,
        child: ElevatedButton(
          onPressed: (){
            atkar(value);
          },
          style: ElevatedButton.styleFrom(primary: bgButton),
          child: Text(
            value,
            style: TextStyle(
              fontSize: valueSize,
              color: valueColor,
            ),
          ),
        ),
      ),
    );
  }
}
