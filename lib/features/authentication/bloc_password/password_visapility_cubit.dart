import 'package:Skytopia/features/authentication/bloc_password/password_visapilty_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordVisibilityCubit extends Cubit<PasswordVisibilityState> {
  PasswordVisibilityCubit() : super(PasswordVisibilityState(visibilityMap: {}));

  void toggleVisibility(int fieldId) {
    final newMap = Map<int, bool>.from(state.visibilityMap);
    newMap[fieldId] = !(newMap[fieldId] ?? true);
    emit(PasswordVisibilityState(visibilityMap: newMap));
  }
}