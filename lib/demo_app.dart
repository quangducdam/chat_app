import 'package:chat_app_demo/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'storage.dart';
import 'widgets/home/controllers/cubit.dart';
import 'widgets/home/page.dart';
import 'widgets/waiting_room/controllers/cubit.dart';
import 'widgets/waiting_room/page.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? login = localStorage.getFromStorage('auth');
    debugPrint('loginDemo $login');
    return MaterialApp(
        onGenerateRoute: routes.onGenerateRoute,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<HomeControllersCubit>(
              create: (BuildContext context) => HomeControllersCubit(),
            ),
            BlocProvider<WaitingRoomControllersCubit>(
              create: (BuildContext context) => WaitingRoomControllersCubit(),
            ),
          ],
          child:
              login == 'isLogin' ? const WaitingRoomPage() : const HomePage(),
        ));
  }
}
