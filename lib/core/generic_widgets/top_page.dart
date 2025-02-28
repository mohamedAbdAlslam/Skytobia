import 'package:flutter/material.dart';

import '../theme/app_text_style.dart';

class TopPage extends StatelessWidget {
   TopPage({super.key,required this.titlePage});
  String titlePage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
              ],
            ),
          ],
        ),
         Column(
          children: [
           const SizedBox(
              height: 50,
            ),
            Text(
              titlePage,
              style: AppTextStyle.f24W400Black,
            ),
          ],
        ),
        const SizedBox(
          width: 85,
        )
      ],
    );
  }
}
