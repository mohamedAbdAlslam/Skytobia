import 'dart:ui';

import 'package:Skytopia/core/generic_widgets/text_form_field.dart';
import 'package:flutter/material.dart';


import 'ellipse.dart';

class GenderButton extends StatelessWidget {
  GenderButton({

    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Create Account',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 51),
          MyTextFormField(labelText: 'enter name',
            myHintText: 'Name',
          ),
          const SizedBox(height: 15),
          MyTextFormField(
            myHintText: 'Email Address', labelText: 'enter email',
          ),
          const SizedBox(height: 15),
          MyTextFormField(labelText: 'enter pass',
            myHintText: 'Password',
           hasSuffixIcon: true,
          ),
        ],
      ),
    ]);
  }
}
