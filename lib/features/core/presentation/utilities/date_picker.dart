import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showPlatformDatePicker({@required BuildContext context, DateTime initial, DateTime min, DateTime max}) async {
  final ThemeData theme = Theme.of(context);
  assert(theme.platform != null);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return buildMaterialDatePicker(context: context, initialDate: initial, min: min, max: max);
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return buildCupertinoDatePicker(context: context, initial: initial, min: min, max: max);
  }
}

Future<DateTime> buildMaterialDatePicker(
    {@required BuildContext context, DateTime initialDate, DateTime min, DateTime max}) {
  return showDatePicker(
    context: context,
    initialDate: initialDate ?? DateTime.now(),
    firstDate: min ?? DateTime.utc(0),
    lastDate: max ?? DateTime(99999),
  );
}

Future<DateTime> buildCupertinoDatePicker(
    {@required BuildContext context, DateTime initial, DateTime min, DateTime max}) async {
  DateTime result;
  await showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Colors.white,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (picked) {
              result = picked;
            },
            initialDateTime: initial ?? DateTime.now(),
            minimumDate: min,
            maximumDate: max,
          ),
        );
      });

  return result;
}
