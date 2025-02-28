import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentWidget extends StatelessWidget {
   PaymentWidget({super.key,required this.image,required this.visaNumber});
  String image;
  String visaNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(image),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              Text(visaNumber),
              const Text(
                'Exp: 20/04/27',
                style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 1)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
