import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../storage.dart';
import 'state.dart';

class WaitingRoomControllersCubit extends Cubit<WaitingRoomControllersState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  WaitingRoomControllersCubit() : super(WaitingRoomControllersState());

  Future<void> logOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    await localStorage.removeFromStorage('auth');

  }
}
