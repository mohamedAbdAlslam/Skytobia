import 'package:Skytopia/features/home/pages/booking/my_booking.dart';
import 'package:Skytopia/features/home/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/constants/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_style.dart';
import 'bloc/bottom_navigation_cubit.dart';
import 'bloc/bottom_navigation_state.dart';
import 'bloc_drawer/drawer_cubit.dart';
import 'home_widget/bottom_item.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<DrawerCubit, bool>(
        builder: (BuildContext context, bool state) {
          return Scaffold(

            backgroundColor: AppColors.backGround,
            bottomNavigationBar: Container(
              height: 70,
              margin: const EdgeInsets.only(
                  bottom: 13.0, left: 20, right: 20, top: 16.0),
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black.withOpacity(0.2),width: 1,),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.1, 0.13),
                        spreadRadius: 0.2)
                  ]),
              child: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
                builder: (BuildContext context, state) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: BottomNavigationBar(
                      backgroundColor: AppColors.backGround,
                      onTap: (index) {
                        BottomNavigationCubit.get(context).changeIndex(index);
                      },
                      currentIndex: BottomNavigationCubit.get(context).index,
                      selectedItemColor: AppColors.secColor,
                      unselectedItemColor: AppColors.nearToBlack,
                      type: BottomNavigationBarType.fixed,
                      items: [
                        BottomNavigationBarItem(
                          backgroundColor:
                              BottomNavigationCubit.get(context).index == 0
                                  ? AppColors.secColor
                                  : AppColors.backGround,
                          icon: BottomItem(
                              index: 0,
                              image: AppImages.exp,
                              imageColor: AppImages.expColor),
                          label: 'Discover',
                        ),
                        BottomNavigationBarItem(
                          icon: BottomItem(
                              index: 1,
                              image: AppImages.home,
                              imageColor: AppImages.homeColor),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: BottomItem(
                              index: 2,
                              image: AppImages.booking,
                              imageColor: AppImages.bookingColor),
                          label: 'My Booking',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            body: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
              builder: (context, state) {
                if (BottomNavigationCubit.get(context).index == 1) {
                return Home();
                }
                if (BottomNavigationCubit.get(context).index == 0) {
                  return const Center(child: Text("empty",style: AppTextStyle.f32W700Black,),);
                }
                return MyBooking();
              }
              )
          );
        },
        listener: (BuildContext context, bool state) {
          if (state) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Scaffold.of(context).openDrawer();
            });
          }
        },
      ),
    );
  }
}
