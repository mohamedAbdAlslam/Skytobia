import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_colors.dart';
import 'features/authentication/bloc_password/password_visapility_cubit.dart';
import 'features/authentication/change_password/enter_new_password.dart';
import 'features/authentication/change_password/forget_password.dart';
import 'features/authentication/change_password/verification_password.dart';
import 'features/authentication/pages/sign.dart';
import 'features/authentication/pages/user_profile.dart';
import 'features/bloc/move_cubit.dart';
import 'features/home/bloc/bottom_navigation_cubit.dart';
import 'features/home/bloc_drawer/drawer_cubit.dart';
import 'features/home/home_page.dart';
import 'features/home/pages/booking/booking_bill.dart';
import 'features/home/service_packages/booking_details.dart';
import 'features/onboarding/pages/first_onboarding.dart';
import 'features/onboarding/pages/main_onboarding.dart';
import 'features/onboarding/pages/second_onboarding.dart';
import 'features/splash/splash.dart';
import 'features/splash/splash_screen.dart';
import 'features/user_profile/bloc/gender_cubit.dart';
import 'features/user_profile/user_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) {
          return MoveCubit();
        }),
        BlocProvider(create: (BuildContext context) {
          return GenderCubit();
        }),
        BlocProvider(create: (BuildContext context) {
          return BottomNavigationCubit();

        }),
        BlocProvider(create: (BuildContext context){
              return  DrawerCubit();}),
    BlocProvider(
            create: (BuildContext context) => PasswordVisibilityCubit(),
    ),],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'SegoeUI',
          scaffoldBackgroundColor: AppColors.backGround,
        ),
        debugShowCheckedModeBanner: false,
        home:  Splash(),
        routes: {
          "first_onboarding": (context) => const FirstOnboarding(),
          "main_onboarding": (context) => const MainOnboarding(),
          "second_onboarding": (context) => const SecondOnboarding(),
          "home_page": (context) =>    HomePage(),
          "splash_screen": (context) =>   SplashScreen(),
          "sign": (context) =>  const  Sign(),
          "user_page": (context) => const UserPage(),
          "forget_password": (context) =>  ForgetPassword(),
          "verification_password": (context) =>  VerificationPassword(),
          "enter_new_password": (context) =>  EnterNewPassword(),
          "booking_bill": (context) =>  BookingBill(),
          "Booking_details": (context) =>  BookingDetails(),
        },
      ),
    );
  }
}
