import 'main.dart';

class LocalStorage {
  saveToStorage(String text, dynamic data) {
    prefs!.setString(text, data);
    return data;
  }

 String? getFromStorage(String text) {
   String? data = prefs!.getString(text);
    return data;
  }

  removeFromStorage(String text) async{
    await prefs!.remove(text);
  }
}

final localStorage = LocalStorage();
