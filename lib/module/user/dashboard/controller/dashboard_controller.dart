import 'package:flutter/material.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Post",
    "Activity",
    "Setting",
    "Profile",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;

  // Product
  List products = [
    {
      "id": 1,
      "category": "goat",
      "photo":
          "https://images.unsplash.com/photo-1560819400-434c188f63ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "product_name": "Platinum Goat",
      "price": "3.300.000",
      "berat": "30-33 Kg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 2,
      "category": "goat",
      "photo":
          "https://cdn.pixabay.com/photo/2016/08/16/01/19/goat-1596880_1280.jpg",
      "product_name": "Premium Goat",
      "price": "2.500.000",
      "berat": "30-33 Kg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 3,
      "category": "sheep",
      "photo":
          "https://cdn.pixabay.com/photo/2022/05/08/20/39/sheep-7182968_1280.jpg",
      "product_name": "Platinum Sheep",
      "price": "3.300.000",
      "berat": "30-33 Kg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 4,
      "category": "cow",
      "photo":
          "https://cdn.pixabay.com/photo/2016/10/04/23/52/cow-1715829_1280.jpg",
      "product_name": "Cow",
      "price": "20.300.000",
      "berat": "250-300 Kg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
  ];
}
