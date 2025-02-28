import 'package:Skytopia/features/user_profile/user_widget/gender.dart';
import 'package:flutter/material.dart';


import '../../core/constants/app_images.dart';
import '../../core/generic_widgets/main_button.dart';
import '../../core/generic_widgets/text_form_field.dart';
import '../../core/generic_widgets/top_page.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_style.dart';
import 'bloc/gender_cubit.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: AppColors.backGround,
        body: Padding(
          padding: const EdgeInsets.only(right: 16.0 ,left: 16,bottom: 20,top: 4),
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopPage(titlePage: 'profile'),
                    const SizedBox(height: 16,),
                    const CircleAvatar(radius: 60,backgroundColor: Color.fromRGBO(85, 85, 85, 1),
                      // child: Image(image: AssetImage(AppImages.hotel1)),
                    ),
                    const SizedBox(height: 8,),
                   const  Text('profile'),
                    const MyTextFormField(labelText: 'Name',myHintText: "your name",isSign: false,),
                    const SizedBox(height: 8,),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Gender',style: AppTextStyle.f16W400black,),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap :() {
                              GenderCubit.get(context).changeGender(true);
                            },
                            child: Gender(text: 'male',isMale: true,),),
                        GestureDetector(
                          onTap :() {
                            GenderCubit.get(context).changeGender(false);
                          },
                          child: Gender(text: 'Female',isMale: false,),),
                      ],
                    ),
                    const SizedBox(height: 18,),
                    MyTextFormField(labelText: 'email address',myHintText: "email",isSign: false,),
                    const SizedBox(height: 8,),
                    MyTextFormField(labelText: 'change Password',myHintText: "password",isSign: false,),
                    const SizedBox(height: 8,),
                    MyTextFormField(labelText: 'confirm Password',myHintText: "Password",isSign: false,),
                  ],
                ),
                const SizedBox(height : 90),
                MainButton(text: 'save', onPressed: (){},isSign: false,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
