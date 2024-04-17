import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("Hello world"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Are you sure?"),
              content: Text(
                  "Amet qui deserunt anim et ad cupidatat sunt cillum fugiat elit consectetur.Voluptate ea eiusmod reprehenderit ea aute laboris ea aliqua laboris."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars and dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        "Et excepteur ex commodo voluptate cillum magna non reprehenderit aliquip duis.")
                  ]);
                },
                child: const Text('Used licenses')),
            FilledButton.tonal(
                onPressed: () {
                  return openDialog(context);
                },
                child: const Text('Show dialog'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Show Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
