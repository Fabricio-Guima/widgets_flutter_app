import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  static const name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls and Widgets'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Enable developer features'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
            title: const Text('Transportation vehicle'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By Car'),
                  subtitle: const Text('Traveling by car'),
                  value: Transportation.car,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.car;
                      })),
              RadioListTile(
                  title: const Text('By Plane'),
                  subtitle: const Text('Traveling by plane'),
                  value: Transportation.plane,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.plane;
                      })),
              RadioListTile(
                  title: const Text('By Boat'),
                  subtitle: const Text('Traveling by boat'),
                  value: Transportation.boat,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.boat;
                      })),
              RadioListTile(
                  title: const Text('By Submarine'),
                  subtitle: const Text('Traveling by submarine'),
                  value: Transportation.submarine,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.submarine;
                      })),
            ]),
        CheckboxListTile(
          title: const Text('Breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Dinner?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
