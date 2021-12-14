import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

//앱 클래스
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

//메인화면(Webview) 클래스
class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainState();
}

//메인화면 상태클래스
class MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "http://apps.forcei.co.kr/yunki/lotto_ui/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
