import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ui_rendering_engine/model/render_model.dart';
import 'services/api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RenderModel? _userModel;

   @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    _userModel = await ApiService().getRenderData();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Rendering APP'),
      ),
      body: _userModel?.widgets.length == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel?.widgets.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel?.widgets[index].header_text.toString()?? ''),
                          Text(_userModel?.widgets[index].footer_text.toString() ?? ''),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel?.widgets[index].items.toString()?? ''),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
