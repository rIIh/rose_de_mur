import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intersperse/intersperse.dart';
import 'package:provider/provider.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/data.dart';

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
                            child: AlertDialog(
                              title: const Text('Pick a color!'),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: Theme.of(context).accentColor,
                                  onColorChanged: (value) =>
                                      context.read<ApplicationBloc>().add(ApplicationEvent.color(value)),
                                  showLabel: true,
                                  pickerAreaHeightPercent: 0.8,
                                ),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: const Text('Got it'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
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
