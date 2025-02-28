import 'package:Skytopia/features/authentication/pages/sign_up.dart';
import 'package:Skytopia/features/authentication/pages/sign_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/app_images.dart';
import '../../bloc/move_cubit.dart';
import '../../bloc/move_states.dart';
import 'log_in.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(image:
        AssetImage(AppImages.sign),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 87,
              ),
              SizedBox(
                height: 59,
                width: 249,
                child: SvgPicture.asset(AppImages.logo

                ),
              ),
              const SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<MoveCubit, MoveStates>(
                    builder: (context, state) {
                      final cubit = MoveCubit.get(context);
                      return SignWidget(
                        text: 'Sign Up',
                        isActive: !cubit.isSignIn,
                        onTap: () {
                          cubit.changState(false);
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 130,),
                  BlocBuilder<MoveCubit, MoveStates>(
          
                    builder: (context, state) {
                      final cubit = MoveCubit.get(context);
                      return SignWidget(
                        text: 'Login',
                        isActive: cubit.isSignIn,
                        onTap: () {
                          cubit.changState(true);
                        },
                      );
                    },
                  ),
                ],
              ),
              // SizedBox(height: 15,),
              BlocBuilder<MoveCubit,MoveStates>(builder:(context, state){ return SignUp(isSignUp: !MoveCubit.get(context).isSignIn,);}),
              BlocBuilder<MoveCubit,MoveStates>(builder:(context, state){ return  LogIn(isLogIn: MoveCubit.get(context).isSignIn,);}),
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
