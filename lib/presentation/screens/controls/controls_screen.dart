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

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer mode"),
            subtitle: const Text("Additional controls"),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        RadioListTile(
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.car;
                })),
        RadioListTile(
            value: Transportation.boat,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.boat;
                })),
        RadioListTile(
            value: Transportation.plane,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.plane;
                })),
        RadioListTile(
            value: Transportation.submarine,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.submarine;
                })),
      ],
    );
  }
}
