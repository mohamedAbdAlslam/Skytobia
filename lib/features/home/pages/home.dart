import 'package:Skytopia/features/authentication/pages/user_profile.dart';
import 'package:Skytopia/features/user_profile/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/generic_widgets/small_card.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../bloc_drawer/drawer_cubit.dart';
import '../home_widget/circle_avatar_image.dart';
import '../home_widget/text_drawar.dart';
import '../service_packages/honeymoon.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawerCubit, bool>(
      listener: (BuildContext context, bool state) {
        if (state) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Scaffold.of(context).openDrawer();
          });
        }
      },
      builder: (BuildContext context, bool state) {
        return Scaffold(
          backgroundColor: AppColors.backGround,
          key: _scaffoldKey,
          drawer: Drawer(
            backgroundColor: const Color.fromRGBO(13, 34, 52, 1),
            width: 220,
            child: Padding(
              padding: const EdgeInsets.only(top: 23.5, bottom: 156),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 42,
                      ),
                      Center(
                        child: CircleAvatarImage(
                            radius: 50,
                            image: AppImages.meeting),
                      ),
                      Center(
                          child: Text(
                        "Ghalia AJ",
                        style: AppTextStyle.f20W700white
                            .copyWith(color: AppColors.backGround),
                      )),
                      const SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserPage(),
                              ),
                            );
                          },
                          child: TextDrawar(
                            text: "Setting",
                            hasIcon: true,
                            icon: Icons.settings,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      TextDrawar(
                        text: "Dark Mood",
                        hasIcon: true,
                        icon: Icons.dark_mode,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextDrawar(
                        text: "About Us",
                        hasIcon: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextDrawar(
                        text: "Contact Us",
                        hasIcon: false,
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          // logIn.write('isLogIn', false);
                          // print('isLogIn: ${logIn.read('isLogIn')}');
                          // Navigator.of(context).pushAndRemoveUntil(
                          //   MaterialPageRoute(
                          //     builder: (context) =>  SplashScreen(toggleTheme: toggleTheme,),
                          //   ),
                          //       (Route<dynamic> route) => false,
                          // );
                        },
                        child: TextDrawar(
                          text: 'Log Out',
                          hasIcon: true,
                          icon: Icons.output_sharp,
                        ),
                      )),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 16, bottom: 18),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            child: SvgPicture.asset(AppImages.menuIcon)),
                        SvgPicture.asset(AppImages.notificationIcon),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("location  "),
                        SvgPicture.asset(AppImages.locationLabelIcon),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppImages.locationIcon),
                        const Text("  location , syria")
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.innerTextForm.withOpacity(0.5),
                        filled: true,
                        hintText: "search",
                        hintStyle: AppTextStyle.f14W400gray,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(64),
                        ),
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "Choose The Best Service You Are looking For",
                      style: AppTextStyle.f20W700Black,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Honeymoon(title: "Intractable tourism"),
                                  ),
                                );
                              },
                              child: const SmallCard(
                                text: "Intractable tourism",
                                image: AppImages.intractable,
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Honeymoon(title: "Honeymoon"),
                                  ),
                                );
                              },
                              child: const SmallCard(
                                text: "Honeymoon",
                                image: AppImages.honeymoon,
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Honeymoon(title: "Occasion"),
                                  ),
                                );
                              },
                              child: const SmallCard(
                                text: "Occasion",
                                image: AppImages.occasions,
                              )),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Honeymoon(title: "meeting"),
                                  ),
                                );
                              },
                              child: const SmallCard(
                                text: "meeting",
                                image: AppImages.meeting,
                              )),
                        ],
                      ),
                    ),
                    MainButton(
                      isSign: false,
                      text: 'Customize',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
