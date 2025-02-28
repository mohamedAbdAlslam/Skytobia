import 'package:bloc/bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0); // تبدأ من الصفحة الأولى

  void nextPage(int totalPages) {
    if (state < totalPages - 1) {
      emit(state + 1); // الانتقال إلى الصفحة التالية
    }
  }
}
