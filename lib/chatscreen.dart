import 'package:flutter/material.dart';
import 'package:frenzychat/chartmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller = new TextEditingController();

  void _handleSubmitted(String text) {
    _controller.clear();
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }
  final List<ChatMessage> _messages = <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(

            padding: new EdgeInsets.all(8.0),
            reverse: false,
            itemBuilder: (_, int index)=>_messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(height: 4.0,),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        ),
      ],
    );
  }

  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(
        color: Colors.blue,
      ),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  decoration:
                      new InputDecoration.collapsed(hintText: 'Send a Message'),
                  controller: _controller,
                  onSubmitted: _handleSubmitted,
                ),
              ),
              new Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: new IconButton(
                      icon: new Icon(Icons.send),
                      onPressed: () {
                        _handleSubmitted(_controller.text);
                      }),
              ),
                        ],
          )),
    );
  }
}
