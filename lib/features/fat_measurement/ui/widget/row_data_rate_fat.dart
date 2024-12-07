import 'package:feta/core/theming/theme.dart';
import 'package:flutter/cupertino.dart';

class RowDataRateFat extends StatelessWidget {
  const RowDataRateFat({super.key, required this.text, required this.value});
  final String text ;
  final String value ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: ThemeApp.font12darkGra66500Weight,),
        Text(value,style: ThemeApp.font12darkGra66500Weight,),
      ],
    );
  }
}
