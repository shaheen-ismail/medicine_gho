import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medicine_gho/controller/common_controller.dart';
import 'package:medicine_gho/core/constants/colors.dart';
import 'package:medicine_gho/view/home%20screen/home_screen.dart';
import 'package:provider/provider.dart';

class BottomNavBarExample extends StatelessWidget {
  BottomNavBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CommonProvider>(
        builder: (context, bottomNavProvider, child) {
          return _screens[bottomNavProvider.selectedIndex];
        },
      ),
      bottomNavigationBar: Consumer<CommonProvider>(
        builder: (context, bottomNavProvider, child) {
          return BottomNavigationBar(
            currentIndex: bottomNavProvider.selectedIndex,
            onTap: (index) {
              bottomNavProvider.updateSelectedIndex(index);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.home,
                  color: ColorConstants.mainBlue,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.book,
                  color: ColorConstants.mainBlue,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.notification,
                  color: ColorConstants.mainBlue,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.profile,
                  color: ColorConstants.mainBlue,
                ),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Search Screen'));
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Notifications Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profile Screen'));
  }
}
