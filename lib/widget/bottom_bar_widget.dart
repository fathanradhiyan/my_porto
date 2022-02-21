import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/const/my_app_icons.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/screen/academic.dart';
import 'package:my_porto/screen/achievement.dart';
import 'package:my_porto/screen/home.dart';
import 'package:my_porto/screen/more.dart';
import 'package:my_porto/screen/my_porto.dart';
import 'package:provider/provider.dart';

class BottomBarWidget extends StatefulWidget {
  static const routeName = '/BottomBarWidget';

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<Map<String, Widget>>? _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Home(),
      },
      {
        'page': Academic(),
      },
      {
        'page': MyPorto(),
      },
      {
        'page': Achievement(),
      },
      {
        'page': More(),
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: _pages![_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: Container(
          // decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
          child: BottomNavigationBar(
            onTap: _selectedPage,
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: ColorsConsts.flamingo,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(myAppIcons.home),
                tooltip: 'Home',
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(myAppIcons.academic),
                  tooltip: 'Academic',
                  label: 'Academic'),
              BottomNavigationBarItem(
                  activeIcon: null,
                  icon: Icon(null),
                  tooltip: 'MyPorto',
                  label: 'MyPorto'),
              BottomNavigationBarItem(
                  icon: myAppIcons.achievement,
                  tooltip: 'Achievement',
                  label: 'Achievement'),
              BottomNavigationBarItem(
                  icon: Icon(myAppIcons.more), tooltip: 'More', label: 'More'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsConsts.flamingo,
        tooltip: 'MyPorto',
        elevation: 5,
        child: (Icon(
          Icons.app_registration,
          color: ColorsConsts.cream,
        )),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    );
  }
}
