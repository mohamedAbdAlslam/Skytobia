import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theme/app_colors.dart';
import 'move_states.dart';


class MoveCubit extends Cubit<MoveStates>{
  MoveCubit() : super(InitState());
  static MoveCubit get (context)=>BlocProvider.of(context);
  bool isSignIn =true;
  bool showPassword = false;
  Color color = AppColors.focusedBorder;

  void changState(bool isSign) {
    if (isSignIn != isSign) {
      isSignIn = isSign;
      print(isSign);
      if (isSign) {
        emit(SignInState());
      } else {
        emit(SignUpState());
      }
    }
  }
  void changPassword(bool chang){
    showPassword = chang;
    print(showPassword);
    print(chang);

    if (showPassword){
      emit(IsShow());
    }
    else{emit(IsNotShow());}

  }
  void changColor(Color newColor){
    color = newColor;
    emit(ColorState());
  }




}