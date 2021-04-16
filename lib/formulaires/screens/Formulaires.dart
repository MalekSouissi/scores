import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/header.dart';
import 'package:scores/formulaires/components/taskContainer.dart';
import 'package:scores/shared/constants.dart';

class NestedTabBar extends StatefulWidget {
  final Header header;
  NestedTabBar({this.header});
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        widget.header,

        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TabBar(
              controller: _nestedTabController,
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              indicatorColor: activeTabColor,
              labelColor: activeTabColor,
              unselectedLabelColor: DeactiveIconColor,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: "nouveaux formulaires",
                ),
                Tab(
                  text: "formulaires finis",
                ),
              ],
            ),
            Container(
              height: screenHeight ,
              // margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TabBarView(
                controller: _nestedTabController,
                children: <Widget>[
                  Container(
                    color: Color(0xffF6F6F6),
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: _buildListTasks(false)),
                  ),
                  Container(
                    color: Color(0xffF6F6F6),
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: _buildListTasks(true)),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  ListView _buildListTasks(bool isfinished) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return TaskContainer(isfinished: isfinished);
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 25),
    );
  }
}
