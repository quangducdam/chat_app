import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/buttons.dart';
import 'controllers/cubit.dart';
import 'controllers/state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeControllersCubit();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Đăng nhập'),
      ),
      body: BlocBuilder<HomeControllersCubit, HomeControllersState>(
        bloc: controller,
        builder: (BuildContext context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: commonButton.socialButton('Google', () async {
                    await controller.signInWithGoogle();
                    Navigator.pushNamed(context, '/waitingRoom');
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
