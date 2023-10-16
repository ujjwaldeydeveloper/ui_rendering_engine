import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:banner_image/banner_image.dart';

import '../model/banner.dart';

class HorizontalBannerScreen extends StatelessWidget {
  const HorizontalBannerScreen(this.bannerModel, {super.key});

  final BannerModel? bannerModel;
  @override
  Widget build(BuildContext context) {
    print('CR-> ${bannerModel?.image}');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.width * 0.60,
                child: Stack(children: [
                  CachedNetworkImage(
                    imageUrl: bannerModel?.image ?? "",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    // color: Colors.red,
                    child: Text(
                      bannerModel?.headerText ?? "",
                    ),
                  ),
                  Container(
                     alignment: Alignment.bottomLeft,
                    child: Text(
                      bannerModel?.footerText ?? "",
                    ),
                  ),
                ]),
              ),
            ),
          ],
        )
      ],
    );

    // itemCount: bannerModel?.itemLength,
    // itemBuilder: (context, index) {
    //   return CachedNetworkImage(
    //    imageUrl: bannerModel?.image ?? "",
    //     fit: BoxFit.cover,
    //   );
    // });
    // return ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: bannerModel?.itemLength,
    //     itemBuilder: (context, index) {
    //       return CachedNetworkImage(
    //        imageUrl: bannerModel?.image ?? "",
    //         fit: BoxFit.cover,
    //       );
    //     });
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Horizontal Banner'),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         BannerImage(
    //           padding: const EdgeInsets.only(),
    //           itemLength: list.length,
    //           children: List.generate(list.length, (index) => Image.asset(
    //             list[index],
    //             fit: BoxFit.cover,
    //           ),),
    //           selectedIndicatorColor: Colors.red,
    //           autoPlay: true,
    //           scrollDirection: Axis.vertical,
    //         ),
    //         const SizedBox(height: 15),
    //         BannerImage(
    //           itemLength: list.length,
    //           children: List.generate(list.length, (index) => Image.asset(
    //             list[index],
    //             fit: BoxFit.cover,
    //           ),),
    //           borderRadius: BorderRadius.circular(8),
    //           selectedIndicatorColor: Colors.blue,
    //           indicatorColor: Colors.green.shade100,
    //           scrollDirection: Axis.vertical,
    //         ),
    //         const SizedBox(height: 15),
    //         BannerImage(
    //           aspectRatio: 2,
    //           itemLength: list.length,
    //           borderRadius: BorderRadius.circular(8),
    //           children: List.generate(list.length, (index) => Image.asset(
    //             list[index],
    //             fit: BoxFit.cover,
    //           ),),
    //           selectedIndicatorColor: Colors.red,
    //           withOutIndicator: true,
    //           scrollDirection: Axis.vertical,
    //         ),
    //         const SizedBox(height: 15),
    //         BannerImage(
    //           aspectRatio: 20 / 10,
    //           itemLength: list.length,
    //           borderRadius: BorderRadius.circular(8),
    //           children: List.generate(list.length, (index) => Image.asset(
    //             list[index],
    //             fit: BoxFit.cover,
    //           ),),
    //           selectedIndicatorColor: Colors.red,
    //           scrollDirection: Axis.vertical,
    //         ),
    //         const SizedBox(height: 30),
    //       ],
    //     ),
    //   ),
    // );
  }
}
