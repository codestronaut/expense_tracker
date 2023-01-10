import 'package:flutter/material.dart';
import '../app_theme.dart';

enum ButtonStyle { filled, outlined }

extension ButtonStyleX on ButtonStyle {
  bool get isFilled => this == ButtonStyle.filled;
  bool get isOutlined => this == ButtonStyle.outlined;
}

class Button extends StatelessWidget {
  const Button.filled({
    Key? key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
  }) : super(key: key);

  const Button.outlined({
    Key? key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
  }) : super(key: key);

  final Function() onPressed;
  final String label;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: style.isFilled
              ? BorderSide.none
              : BorderSide(
                  color: Colors.grey[200]!,
                  width: 1.8,
                ),
        ),
        elevation: 0.0,
        highlightElevation: 0.0,
        color: style.isFilled ? ColorsLib.primary : null,
        splashColor:
            style.isFilled ? ColorsLib.primaryDarker : ColorsLib.lightGrey,
        child: Text(
          label,
          style: (style.isFilled
                  ? AppTheme.darkTextTheme.headline3
                  : AppTheme.lightTextTheme.headline3)
              ?.copyWith(fontSize: 18.0),
        ),
      ),
    );
  }
}
