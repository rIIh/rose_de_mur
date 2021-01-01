import 'package:flutter/material.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/app_bar/widget.dart';

class CustomScaffold extends StatelessWidget {
  final CustomAppBar appBar;
  final Widget body;

  const CustomScaffold({Key key, this.appBar, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = BorderSide(
      color: Colors.black,
      width: pBorderThickness,
    );
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(top: appBar == null ? border : BorderSide.none, bottom: border, left: border, right: border),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: appBar == null ? pBorderThickness : 0,
              bottom: pBorderThickness,
              left: pBorderThickness,
              right: pBorderThickness,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: body,
            ),
          ),
        ),
      ),
    );
  }
}
