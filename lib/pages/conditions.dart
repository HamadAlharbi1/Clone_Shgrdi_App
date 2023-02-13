import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class TermsandConditions extends StatelessWidget {
  const TermsandConditions({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            const Color.fromARGB(255, 20, 20, 20).withOpacity(0.8),
            const Color.fromARGB(255, 24, 24, 24),
          ]),
        ),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(102, 220, 220, 219),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(102, 220, 220, 219), borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 800,
                      child: HtmlWidget(
                        '<iframe src="https://shgardi.app/ar/page/terms"></iframe>',
                        factoryBuilder: () => MyWidgetFactory(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
          ],
        ),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}
