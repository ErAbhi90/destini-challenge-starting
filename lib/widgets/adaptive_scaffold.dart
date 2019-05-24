import 'dart:io';

import 'package:destini_challenge_starting/ui/story/story_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        theme: CupertinoThemeData(
          brightness: Brightness.dark,
        ),
        home: CupertinoPageScaffold(
          child: StoryPage(),
        ),
      );
    } else {
      return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: StoryPage(),
        ),
      );
    }
  }
}
