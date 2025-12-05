import 'package:flutter/material.dart';
import 'package:hungry_app/Core/Constants/app_colors.dart';
import 'package:hungry_app/features/Cart/Views/cart_views.dart';
import 'package:hungry_app/features/Home/Views/Home_view.dart';
import 'package:hungry_app/features/auth/Views/profile_veiw.dart';
import 'package:hungry_app/features/orderHistory/Views/order_History_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late final List<Widget> screens;
  late final PageController controller;
  int currentScreen = 0;

  @override
  void initState() {
    super.initState();
    screens = const [
      HomeView(),
      CartViews(),
      OrderHistoryView(),

      ProfileVeiw(),
    ];
    controller = PageController(initialPage: currentScreen);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onNavTap(int index) {
    if (index == currentScreen) return;
    setState(() => currentScreen = index);
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,

        onPageChanged: (index) {
          setState(() {
            currentScreen = index;
          });
        },
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,

        currentIndex: currentScreen,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.white,

        unselectedItemColor: Colors.white54,

        onTap: onNavTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_restaurant_sharp),
            label: 'Orders History',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
