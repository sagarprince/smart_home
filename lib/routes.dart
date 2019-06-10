import 'package:flutter/material.dart';
import 'package:smart_home/shared/data.dart';
import 'package:smart_home/pages/home_page.dart';
import 'package:smart_home/pages/room_details_page.dart';

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({@required this.page})
      : super(
    pageBuilder: (context, animation1, animation2) => page,
    transitionDuration: Duration(milliseconds: 800),
    transitionsBuilder: (context, animation1, animation2, child) {
      return FadeTransition(opacity: animation1, child: child);
    },
  );
}

class Routes {
  static builder() {
    return (RouteSettings settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(
              settings: settings,
              maintainState: true,
              builder: (_) => HomePage()
          );
          break;
        case '/room':
          final int roomId = settings.arguments;
          var rooms = AppData.rooms;
          var index = rooms.indexWhere((room) => room.id == roomId);
          return FadeRouteBuilder(
              page: RoomDetailsPage(room: (index > -1) ? rooms[index] : {})
          );
          break;
      }
    };
  }
}