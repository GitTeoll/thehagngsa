import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  int _index = 0;
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(tabListener);
  }

  void tabListener()
  {
    setState(() {
      _index = _tabController.index;
    },);
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}