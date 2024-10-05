import 'package:flutter/material.dart';
import 'package:nrideapp/util/dimensions.dart';
import 'package:nrideapp/util/styles.dart';

class TextFieldTitleWidget extends StatelessWidget {
  final String title;
  const TextFieldTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.fromLTRB(10,17,0,8),
      child: Text(title, style: textMedium.copyWith(fontSize: Dimensions.fontSizeDefault,
        color: Theme.of(context).textTheme.bodyMedium!.color!)));
  }
}
