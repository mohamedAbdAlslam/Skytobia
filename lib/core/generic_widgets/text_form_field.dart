import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/authentication/bloc_password/password_visapility_cubit.dart';
import '../../features/authentication/bloc_password/password_visapilty_state.dart';
import '../constants/app_images.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class MyTextFormField extends StatelessWidget {
  final String? myHintText;
  final TextEditingController? controller;
  final bool isHasText;
  final bool isPhone;
  final bool isSign;
  final bool hasSuffixIcon;
  final String labelText;
  final String? Function(String?)? validator;

  const MyTextFormField({
    super.key,
    this.myHintText,
    this.controller,
    this.isHasText = false,
    this.validator,
    this.isPhone = true,
    required this.labelText,
    this.isSign = true,
    this.hasSuffixIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    int fieldId = controller?.hashCode ?? UniqueKey().hashCode;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (myHintText != null)
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                myHintText!,
                style: AppTextStyle.f16W400black,
              ),
            ],
          ),
        SizedBox(
          height: 48,
          child: BlocBuilder<PasswordVisibilityCubit, PasswordVisibilityState>(
            builder: (context, state) {
              bool showPassword = state.visibilityMap[fieldId] ?? true;

              return TextFormField(
                controller: controller,
                validator: validator,
                obscureText: hasSuffixIcon ? showPassword : false,
                decoration: InputDecoration(
                  fillColor: isSign
                      ? AppColors.innerTextForm.withOpacity(0.5)
                      : AppColors.innerTextForm.withOpacity(0.1),
                  filled: true,
                  hintText: labelText,
                  hintStyle: AppTextStyle.f14W400gray,
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(64),
                  ),
                  suffixIcon: hasSuffixIcon
                      ? GestureDetector(
                    onTap: () {
                      context.read<PasswordVisibilityCubit>().toggleVisibility(fieldId);
                    },
                    child: Image.asset(
                      showPassword ? AppImages.eyeLnVisible : AppImages.eyeOpen,
                    ),
                  )
                      : null,
                ),
              );
            },
          ),
        ),
        Visibility(
          visible: isHasText,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "forget_password");
                },
                child: const Text(
                  'Forget password',
                  style: AppTextStyle.f12W400Blue,
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ],
    );
  }
}
