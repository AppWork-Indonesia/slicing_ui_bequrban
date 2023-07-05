import 'package:flutter/material.dart';

import '../../user/dashboard/view/dashboard_view.dart';
import '../controller/navbar_controller.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({Key? key}) : super(key: key);

  Widget build(context, NavbarController controller) {
    controller.view = this;
    int selectedIndex = 0;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff008e46),
          unselectedItemColor: const Color.fromARGB(255, 121, 121, 121),
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icon/cabin.png",
                ),
                size: 24,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icon/comment.png",
                ),
                size: 24,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icon/inbox.png",
                ),
                size: 24,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/icon/user.png",
                ),
                size: 24,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<NavbarView> createState() => NavbarController();
}
