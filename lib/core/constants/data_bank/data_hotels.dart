

import '../../../features/home/model/hotel_model.dart';
import '../app_images.dart';

class DataHotels {
  List<HotelModel> hotelList= [
    HotelModel(image: AppImages.hotel1, nameHotel: "Burj Al Arab Jumeirah", star: 4.7, location: "Jumeirah-United Arab Emirates", vister: 11230,disc:"Burj Al Arab Jumeirah features luxurious suites, Michelin-star restaurant, award-winning spa, and the enchanting Sal Beach Club" ),
    HotelModel(image: AppImages.hotel2, nameHotel: "The Ritz-Carlton", star: 4.6, location: "Hong kong-China", vister: 14260,disc: "The Ritz-Carlton offers urban-inspired spaces and vibrant social scenes for today's travelers."),
    HotelModel(image: AppImages.hotel3, nameHotel: "Shangri-La The Shard", star: 4.9, location: "London-England", vister: 8512,disc: "Our rooms and suites offer stunning London views, body-contouring beds with Frette linens, marble bathrooms with heated floors and Jo Loves amenities"),
    HotelModel(image: AppImages.hotel4, nameHotel: "Kulm Hotel St. Moritz", star: 4.7, location: "Alps Switzerland", vister: 812,disc:"Welcome to Kulm Hotel, offering exceptional service, stunning views of Lake St. Moritz, and unforgettable " ),

  ];
}