import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:share_plus/share_plus.dart';
import 'app_data_text.dart';
import 'display_text.dart';
import 'drawer.dart';


class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _PageViewTextState();
}

class _PageViewTextState extends State<PageViewText> {
  final FlutterTts _flutterTts = FlutterTts();
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Color(0xFFDA9100),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Quotes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                shareof();
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataText.length,
              itemBuilder: (context, index) {
                var text = appDataText[index];
                var scale = _selectedIndex == index ? 1.0 : 0.8;

                return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 400),
                    child: DisplayText(
                      appDataText: text,
                    ),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    }); // return DisplayText(appDataText: appDataText[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    (_selectedIndex + 1).toString() +
                        '/' +
                        appDataText.length.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: InkWell(
                onTap: () {
                  print("---------------------->Share");

                  _speak(appDataText[_selectedIndex]
                      .text); // Pass selected word text
                },
                child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.mic,
                      color: Colors.black,
                      size: 38,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _speak(text) async {
    await _flutterTts.setLanguage('En');
    await _flutterTts.setPitch(0.4);
    await _flutterTts.speak(text);
  }


  void shareof() {
    print('-----share');
    print(appDataText[_selectedIndex].text);

    Share.share(appDataText[_selectedIndex].text);
  }
}