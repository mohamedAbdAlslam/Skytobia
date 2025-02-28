import 'package:Skytopia/features/authentication/change_password/widget_text/text_top_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';

class VerificationPassword extends StatelessWidget {
  VerificationPassword({super.key});
  TextEditingController forgetPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(backgroundColor: AppColors.backGround,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0 ,bottom: 220,right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTopPage(text: " verification"),
              const SizedBox(height: 1,),

              Column(
                children: [
                  const Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( 'Enter Verification code'),
                    ],
                  ),
                  SizedBox(width: 220,
                    child: PinCodeTextField(
                      appContext: context,keyboardType: TextInputType.number,
                      length: 4,
                      onChanged: (value) {
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(16),
                        fieldHeight: 48,
                        fieldWidth: 48,
                        activeColor: Colors.green,
                        selectedColor: Colors.blue,
                        inactiveColor: AppColors.innerTextForm,
                      ),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('If you do not receive A code , ',style: AppTextStyle.f12W400Black,),
                      Text("Resend",style: AppTextStyle.f12W400Black.copyWith(color: AppColors.secColor),)
                    ],
                  )
                ],
              ),
              Column(
                children: [

                  MainButton(
                      text:"enter code" /*AppStrings.signIn.tr()*/,
                      onPressed: () {
                            Navigator.pushNamed(context, "enter_new_password");
                      }, isSign: false,),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
