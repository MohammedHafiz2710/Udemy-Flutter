import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  final String articleLink;
  const ArticleWebView({super.key, required this.articleLink});

  @override
  _ArticleWebViewState createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.articleLink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Cloud", style: TextStyle(color: Colors.orange, fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
