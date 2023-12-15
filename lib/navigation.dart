import 'package:flutter/material.dart';

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
        // TODO: consider this as the home button of the application in case we add multiple views
        onPressed:  () => {},
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
