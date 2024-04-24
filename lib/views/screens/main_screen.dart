import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/categories_screen.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/dashboard_screens.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/orders_screen.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/products_screen.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/upload_banner_screens.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/vendor_screen.dart';
import 'package:ecommerce_practise_admin_panel/views/screens/side_bar_screens/withdrawl_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashBoardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashBoardScreen.routeName:
        setState(() {
          _selectedItem = DashBoardScreen();
        });

        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedItem = VendorScreen();
        });
        break;
      case WithdrawlScreens.routeName:
        setState(() {
          _selectedItem = WithdrawlScreens();
        });
        break;
      case OrdersScreen.routeName:
        setState(() {
          _selectedItem = OrdersScreen();
        });
        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });
        break;
      case ProductsScreen.routeName:
        setState(() {
          _selectedItem = ProductsScreen();
        });
        break;
      case UploadBannerScreens.routeName:
        setState(() {
          _selectedItem = UploadBannerScreens();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      sideBar: SideBar(
        items: [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashBoardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: CupertinoIcons.person_3,
            route: VendorScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Withdrawl',
            icon: CupertinoIcons.money_dollar,
            route: WithdrawlScreens.routeName,
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: CupertinoIcons.shopping_cart,
            route: OrdersScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            route: CategoriesScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Products',
            icon: Icons.shop,
            route: ProductsScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Upload Banners',
            icon: CupertinoIcons.add,
            route: UploadBannerScreens.routeName,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Header',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedItem,
    );
  }
}
