import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';

import '../component/CustomText.dart';
import 'AzkarScreen.dart';
import 'HomeScreen.dart';
import 'InfoSheetScreen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  final tablist = ["السبحة الالكترونية", "حصن المسلم"];
  final tab = [HomeScreen()];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: tablist.length, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7d7d7),
      appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          title: CustomText(text: 'وذكر'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Infosheet();
                    });
              },
              icon: Icon(
                Icons.info_outline,
                color: Color.fromRGBO(59, 121, 55, 1),
                size: 33,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Infosheet();
                      });
                },
                icon: Icon(
                  Icons.info_outline,
                  color: Color.fromRGBO(59, 121, 55, 1),
                  size: 33,
                ))
          ],
          bottom: TabBar(
            controller: _tabController,
            indicator: PointTabIndicator(
              position: PointTabIndicatorPosition.bottom,
              color: Color.fromRGBO(59, 121, 55, 1),
              insets: EdgeInsets.only(bottom: 6),
            ),
            tabs: tablist.map((item) {
              return Tab(
                text: item,
              );
            }).toList(),
          )),
      body: TabBarView(
          controller: _tabController,
          children: [HomeScreen(), AzkarScreen()]),
    );
  }
}
