import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyBottomNavgationBar extends StatefulWidget {
  const MyBottomNavgationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavgationBar> createState() => _MyBottomNavgationBarState();
}

class _MyBottomNavgationBarState extends State<MyBottomNavgationBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
            label: 'My parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
            label: 'My parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                : SvgPicture.asset('assets/images/icon_parcel_center_grey.svg'),
            label: 'My parcels'),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: onItemTapped,
    );
  }
}
