import 'package:flutter_bloc/flutter_bloc.dart';

import 'gender_state.dart';

class GenderCubit extends Cubit<GenderState>{
  GenderCubit() : super(InitGenderState());
  static GenderCubit get (context)=>BlocProvider.of(context);
  bool isMale =true;
  void changeGender(bool male){
    print(male);
    print(isMale);
  isMale= male;
  emit(ChangeGenderState());
  }
}