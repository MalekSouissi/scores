import 'package:flutter/material.dart';
import 'package:scores/formulaires/components/header.dart';
import 'package:scores/formulaires/components/taskContainer.dart';
import 'package:scores/shared/constants.dart';

class NestedTabBarDocteur extends StatefulWidget {
  final Header header;
  final bool isdoctor;
  NestedTabBarDocteur({this.header,this.isdoctor});
  @override
  _NestedTabBarDocteurState createState() => _NestedTabBarDocteurState();
}

class _NestedTabBarDocteurState extends State<NestedTabBarDocteur>
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
          text: "formulaires remplis",
        ),
                Tab(
                  text: "formulaires en cours",
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
                        child: _buildListTasks(true,widget.isdoctor)),
                  ),
                  Container(
                    color: Color(0xffF6F6F6),
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: _buildListTasks(false,widget.isdoctor)),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  ListView _buildListTasks(bool isfinished,bool isdoctor) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return TaskContainer(isfinished: isfinished,isdoctor:isdoctor ,);
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 25),
    );
  }
}
