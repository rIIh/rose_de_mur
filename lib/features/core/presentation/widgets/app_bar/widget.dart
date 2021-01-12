import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intersperse/intersperse.dart';
import 'package:provider/provider.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/data.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/custom_button/custom_button.dart';

const double pAppBarRowHeight = 44;
const double pBorderThickness = 1;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final Iterable<Row> extraRows;

  const CustomAppBar({Key key, this.title, this.extraRows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: Colors.black),
      child: IconTheme(
        data: IconThemeData(
          color: Colors.black,
          size: 20,
        ),
        child: SafeArea(
          child: Container(
            height: preferredSize.height,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: pBorderThickness,
              ),
            ),
            child: Column(
              children: intersperse(
                const Divider(
                  height: pBorderThickness,
                  thickness: pBorderThickness,
                ),
                (<Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          child: Center(child: title),
                          behavior: HitTestBehavior.translucent,
                          onLongPress: () => showDialog(
                            context: context,
                            child: ColorPickDialog(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]..addAll(extraRows))
                    .map(
                  (e) => ConstrainedBox(
                    constraints: BoxConstraints.tight(Size.fromHeight(pAppBarRowHeight)),
                    child: e,
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        pAppBarRowHeight * (1 + (extraRows?.length ?? 0)) +
            pBorderThickness * 2 +
            pBorderThickness * (extraRows?.length ?? 0),
      );
}

class ColorPickDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
              offset: Offset(0, 1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: pBorderThickness.roundToDouble(),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(pBorderThickness.roundToDouble()),
                  child: CustomButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Icon(CupertinoIcons.multiply),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: pBorderThickness,
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(12.0),
              child: IntrinsicWidth(
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      ColorPicker(
                        pickerColor: Theme.of(context).accentColor,
                        enableAlpha: false,
                        displayThumbColor: true,
                        showLabel: false,
                        onColorChanged: (value) => context.read<ApplicationBloc>().add(
                              ApplicationEvent.color(value.withOpacity(1)),
                            ),
                        pickerAreaHeightPercent: 0.8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
