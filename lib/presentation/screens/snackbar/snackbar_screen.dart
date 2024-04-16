import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars and dialogs"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Show Snackbar"),
        onPressed: () {},
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
