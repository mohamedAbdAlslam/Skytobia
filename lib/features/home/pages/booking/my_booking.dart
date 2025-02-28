import 'package:flutter/material.dart';
import '../../../../core/constants/data_bank/data_booking.dart';
import '../../../../core/generic_widgets/top_page.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../home_widget/booking_widget/div.dart';



class MyBooking extends StatelessWidget {
   MyBooking({super.key});
  DataBooking booking = DataBooking();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: AppColors.backGround,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopPage(titlePage: "My BooKing"),
            const SizedBox(height: 55,),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const  Div();
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GestureDetector(onTap: (){Navigator.pushNamed(context, "booking_bill");},
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(booking.bookingList[index].url),
                            radius: 32,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  booking.bookingList[index].nameHotel,
                                  style: AppTextStyle.f24W400Black,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width *
                                            0.35,
                                        child: Text(
                                          booking.bookingList[index].type,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyle.f16W400black.copyWith(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                            Text('\$${booking.bookingList[index].price.toString()}',style: AppTextStyle.f20W700Black,),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: booking.bookingList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
