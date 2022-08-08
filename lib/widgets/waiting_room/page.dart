import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/cubit.dart';
import 'controllers/state.dart';

class WaitingRoomPage extends StatelessWidget {
  const WaitingRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = WaitingRoomControllersCubit();
    return BlocBuilder<WaitingRoomControllersCubit,
        WaitingRoomControllersState>(
      bloc: controller,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Phòng chờ'),
            actions: [
              TextButton(
                onPressed: () async {
                  await controller.logOut();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    Navigator.pushReplacementNamed(context, '');
                  }
                },
                child: const Text(
                  'Đăng xuất',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          body: Container(),
        );
      },
    );
  }
}
