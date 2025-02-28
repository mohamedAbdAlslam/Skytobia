import 'package:Skytopia/features/home/service_packages/hotels_details.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/data_bank/data_hotels.dart';
import '../../../core/generic_widgets/my_card.dart';
import '../../../core/generic_widgets/top_page.dart';


class Honeymoon extends StatelessWidget {
   Honeymoon({super.key, required this.title});
  final String title;
  final DataHotels hotels = DataHotels();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              TopPage(titlePage: title),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, right: 24, left: 24),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 16),
                    itemCount: hotels.hotelList.length,
                    itemBuilder: (context, index) =>  GestureDetector(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HotelsDetails(disc:  hotels.hotelList[index].disc, nameHotel: hotels.hotelList[index].nameHotel, location:  hotels.hotelList[index].location, city: "", stare:  hotels.hotelList[index].star),
                        ),
                      );
                    },
                        child: MyCard(disc: hotels.hotelList[index].disc, image: hotels.hotelList[index].image, nameHotel:hotels.hotelList[index].nameHotel, star: hotels.hotelList[index].star, location: hotels.hotelList[index].location, vister: hotels.hotelList[index].vister)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
