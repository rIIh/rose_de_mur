import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final Color pressedColor;
  final EdgeInsets padding;
  final bool active;

  const CustomButton({Key key, this.onPressed, this.child, Color color, this.pressedColor, this.padding, bool active})
      : color = color ?? Colors.transparent,
        active = active ?? false,
        super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _pressed = false;

  bool get pressed => _pressed;

  set pressed(bool value) => _pressed != value ? setState(() => _pressed = value) : null;

  @override
  void didUpdateWidget(covariant CustomButton oldWidget) {
    // TODO: implement didUpdateWidget
    if (widget.active != pressed) {
      pressed = widget.active;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final color = pressed ? (widget.pressedColor ?? Theme.of(context).accentColor) : widget.color;
    final brightness = ThemeData.estimateBrightnessForColor(color);
    return Listener(
      onPointerDown: (_) => pressed = widget.active || widget.onPressed != null,
      onPointerUp: (_) => widget.active ? null : pressed = false,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: DefaultTextStyle.merge(
          style: TextStyle(color: pressed && brightness == Brightness.dark ? Colors.white : Colors.black),
          child: IconTheme(
            data: IconThemeData(
              size: IconTheme.of(context).size,
              opacity: IconTheme.of(context).opacity,
              color: pressed && brightness == Brightness.dark ? Colors.white : Colors.black,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: color,
              ),
              padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
