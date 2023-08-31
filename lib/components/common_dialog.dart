import 'package:flutter/material.dart';

import '../constants/strings.dart';

class CommonDialog extends StatelessWidget {
  final String title;
  final String content;
  const CommonDialog({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(Strings.buttonClose),
        )
      ],
    );
  }
}
