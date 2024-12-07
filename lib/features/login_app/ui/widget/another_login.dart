import 'package:feta/core/theming/theme.dart';
import 'package:feta/features/login_app/ui/widget/line_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnotherLogin extends StatelessWidget{
  const AnotherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const LineWidget(),
        SizedBox(width:20.w ),
        Text('أو',style: ThemeApp.font12white400Weight,),
        SizedBox(width:20.w ),
        const LineWidget()
      ],
    );
  }
}
