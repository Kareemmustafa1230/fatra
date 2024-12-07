import 'package:feta/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';
import '../../../home_screen/ui/widget/toast.dart';
import '../../logic/cubit/sign_up_user_cubit.dart';
import '../../logic/cubit/sign_up_user_state.dart';

class SignupBlocListeners extends StatelessWidget {
  const SignupBlocListeners({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpUserCubit, SignupState>(
      listener: (context, state) async {
        if (state is Success) {
          toast(text: state.data.message!, color: Colors.green);
          context.pushNamed(Routes.homeScreen);
        } else if (state is Error) {
          toast(text: state.error, color: Colors.red);
        } else if (state is Loading) {
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
