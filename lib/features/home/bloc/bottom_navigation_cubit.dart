import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState>{
  BottomNavigationCubit() : super(InitHomeState());
  static BottomNavigationCubit get (context)=>BlocProvider.of(context);
  int index =1;
  void changeIndex(int newIndex){
  index= newIndex;
  emit(ChangeHomeState());
  }
}