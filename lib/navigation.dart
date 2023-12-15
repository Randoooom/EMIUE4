import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UniAppBar extends StatelessWidget implements PreferredSizeWidget {
  // impl PreferredSizeWidget
  @override
  final Size preferredSize;

  const UniAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Mein UNI-Tag'),
      centerTitle: true,
      leading: IconButton(
        //navigate to the tud-homepage
        onPressed:  () async => await launchUrlString("https://tu-dresden.de"),
        icon: const Icon(Icons.foundation),
      ),
      actions: [
        IconButton(
          // open the navigation drawer
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(Icons.menu)
        )
      ],
    );
  }
}
