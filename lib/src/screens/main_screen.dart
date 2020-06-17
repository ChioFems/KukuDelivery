import 'package:flutter/material.dart';

// Pages
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../pages/explore_page.dart';

class MainScreen extends StatefulWidget{
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int currentTabIndex = 0;

  // List of pages
  List<Widget> pages;
  Widget currentPage;
  HomePage homePage;
  OrderPage orderPage;
  ExplorePage explorePage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    explorePage = ExplorePage();
    profilePage = ProfilePage();

    pages = [homePage, explorePage, orderPage, profilePage];

    currentPage = homePage;
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"), 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore"), 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Orders"), 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"), 
          ),
        ],
      ),
      body: currentPage,
    );
  }
}