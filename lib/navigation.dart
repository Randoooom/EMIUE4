import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

const String homepage = "https://tu-dresden.de";

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
        // open the homepage in the browser (yea we ignore the possibility of an error while launching the browser)
        // TODO: consider this as a home button for the application in the case we add multiple views / pages
        onPressed:  () async => await launchUrlString(homepage),
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
