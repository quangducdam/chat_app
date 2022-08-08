import 'package:flutter/material.dart';

class CommonButtons {
  Widget socialButton(String text, VoidCallback onPressed) {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.reply_all_outlined,
        color: Colors.black,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5.0,
      ),
      label: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1.2,
          color: Colors.black,
        ),
      ),
    );
  }
}

final commonButton = CommonButtons();
