import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../bloc/gender_cubit.dart';
import '../bloc/gender_state.dart';


class Gender extends StatelessWidget {
  Gender({super.key, required this.text,required this.isMale});

  String text;
  bool isMale;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenderCubit,GenderState>( builder: (context, state) =>  Container(width: 163.5,
      height: 48,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.black.withOpacity(0.2),width: 1,),
        borderRadius: const BorderRadius.all(Radius.circular(16),
        ),
        //color: AppColors.textFieldColor
        border:Border.all(
          color:  AppColors.focusedBorder,
          width: 1,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 13,
            height: 13,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:!(isMale==GenderCubit.get(context).isMale)? Colors.black :AppColors.secColor,
                width: 1,
              ),
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: (isMale==GenderCubit.get(context).isMale)? AppColors.secColor:Colors.white,
              //foregroundImage: Colors.green,
            ),
          ),

          const SizedBox(width: 4,),
          Text(
            text,
            style: AppTextStyle.f16W400black,
          )
        ],
      ),
    )

    );
  }
}
