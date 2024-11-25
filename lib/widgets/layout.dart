import 'package:flutter/material.dart';
import 'package:orders_app_fontend/pages/home.dart';
import 'package:orders_app_fontend/pages/user.dart';
import 'package:orders_app_fontend/pages/wishlist.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const UserPage(),
    const WishlistPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}
