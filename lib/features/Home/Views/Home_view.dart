import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/shared/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List categories = ["All", "Combo", "Sliders", 'Classic'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Gap(60),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/logo/logo.svg",
                        color: AppColors.primary,
                        height: 40,
                      ),

                      CustomText(
                        text: "Hello, Selmi",
                        color: Colors.green.shade400,
                        size: 20,
                        Weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/splash/photo.jpg"),
                  ),
                ],
              ),
              const Gap(20),

              Material(
                elevation: 4,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: AppColors.primary),
                    hintText: "Search food",

                    filled: true,
                    fillColor: Colors.grey.shade200,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? AppColors.primary
                              : Color(0xffF3F4F6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: CustomText(
                          text: categories[index],
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                          size: 18,
                          Weight: FontWeight.w500,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
