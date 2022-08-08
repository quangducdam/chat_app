import 'package:flutter/material.dart';

import 'widgets/home/page.dart';
import 'widgets/waiting_room/page.dart';

class AppRoutes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case '/waitingRoom':
        return MaterialPageRoute(
          builder: (_) => const WaitingRoomPage(),
        );
    }
    throw const FormatException();
  }
}

final routes = AppRoutes();