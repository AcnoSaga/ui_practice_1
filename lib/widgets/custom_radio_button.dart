import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final Color color;

  const CustomRadioButton({
    Key key,
    @required this.isSelected,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isSelected
              ? null
              : Border.all(color: Color(0xFFC5C5C5), width: 1.5),
          color: Colors.transparent,
        ),
        child: Center(
          child: ClipOval(
            child: Container(
              height: isSelected ? 50 : 30,
              width: isSelected ? 50 : 30,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
