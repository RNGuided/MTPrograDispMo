// ignore_for_file: use_key_in_widget_constructors, unused_import, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class nWebView extends StatefulWidget {
  final String url;
  const nWebView(this.url);
  @override
  _nWebViewState createState() => _nWebViewState();
}

class _nWebViewState extends State<nWebView> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.url,
    );
  }
}
