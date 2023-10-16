import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_rendering_engine/model/render_model.dart';
import 'services/api_service.dart';
import 'widgets/horizontal_banner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RenderModel? _userModel;

  @override
  void initState() {
    print('init state called');
    _getData();
    super.initState();
  }

  void _getData() async {
    print('getData called');
    _userModel = await ApiService().getRenderData();
    print('CR-> ${_userModel?.banner?.length}');
    print('CR-> ${_userModel?.banner?.first.image}');
    // print('CR-> ${_userModel!.banner?[1].footerText}');
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Rendering APP'),
      ),
      body: _userModel?.banner == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          // : const Center(child: Text("Hello"))
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _userModel?.banner?.length,
              itemBuilder: (context, index) {
                return HorizontalBannerScreen(_userModel?.banner?[index]);
                // return const Center(child: Text("Hello"));
              },
            ),
    );
  }
}
