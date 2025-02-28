
import '../../../features/home/model/booking_model.dart';
import '../app_images.dart';

class DataBooking {

  List<BookingModel> bookingList = [
    BookingModel(nameHotel: "Burj Al Arab Jumeirah",price: 800,type: "Honeymoon",url: AppImages.hotel4,
    ),
    BookingModel(nameHotel: "The Ritz-Carlton",price: 600,type: "Honeymoon",url: AppImages.hotel3,
    ),
    BookingModel(nameHotel: "Shangri-La The Shard",price: 750,type: "Honeymoon",url: AppImages.hotel2,
    ),
    BookingModel(nameHotel: "Kulm Hotel St. Moritz",price: 900,type: "Honeymoon",url: AppImages.hotel1,
    ),


  ];
  DataBooking (){}
}