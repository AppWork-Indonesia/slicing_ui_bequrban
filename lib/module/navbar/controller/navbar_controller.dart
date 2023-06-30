import 'package:flutter/material.dart';
import '../view/navbar_view.dart';

class NavbarController extends State<NavbarView> {
  static late NavbarController instance;
  late NavbarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
