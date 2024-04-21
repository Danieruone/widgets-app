import 'package:flutter/material.dart';

class ControlsScreen extends StatelessWidget {
  const ControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controls"),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatelessWidget {
  const _UIControlsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer mode"),
            subtitle: const Text("Additional controls"),
            value: true,
            onChanged: (value) {})
      ],
    );
  }
}
