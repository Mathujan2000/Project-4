import 'package:flutter/material.dart';

class SummamoveDrawer extends StatelessWidget {
  const SummamoveDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _aboutDialog(context: context),
          ],
        ),
      ),
    );
  }

  Widget _aboutDialog({required BuildContext context}) {
    return ListTile(
      leading: Icon(Icons.info_outline_rounded, color: Colors.purple,),
      title: Text('Over....'),
      onTap: () {
        Navigator.pop(context);
        showAboutDialog(
            context: context,
            applicationIcon: Icon(Icons.info),
            applicationLegalese: '2024 \u00a9 SUMMAMOVE',
            applicationVersion: '1.00',
            applicationName: 'SummaMove'
        );
      },
    );
  }
}
