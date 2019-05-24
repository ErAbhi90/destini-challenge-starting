import 'package:destini_challenge_starting/ui/story/story_brain.dart';
import 'package:flutter/material.dart';

StoryBrain _storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  _storyBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: () {
                  //Choice 1 made by user.
                  setState(() {
                    _storyBrain.nextStory(1);
                  });
                },
                color: Colors.red,
                child: Text(
                  _storyBrain.getChoice1(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: _storyBrain.buttonShouldBeVisible(),
                child: FlatButton(
                  onPressed: () {
                    //Choice 2 made by user.
                    setState(() {
                      _storyBrain.nextStory(2);
                    });
                  },
                  color: Colors.blue,
                  child: Text(
                    _storyBrain.getChoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
