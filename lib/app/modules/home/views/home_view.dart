import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:test_softcent/app/modules/home/views/widgets/dialog_box_product.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  //final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() => Container(
            width: width,
            height: height,
            color: Colors.white,
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GridView.custom(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: 3,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      //repeatPattern: QuiltedGridRepeatPattern.inverted,
                      pattern: const [
                        //QuiltedGridTile(2, 2),
                        /*QuiltedGridTile(2, 3),
                        QuiltedGridTile(1, 2),
                        QuiltedGridTile(1, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),*/
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(2, 2),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                        QuiltedGridTile(1, 1),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                      (context, index) => InkWell(
                        onTap: (){
                          Get.dialog(DialogBoxProduct(product: controller.mobileList[index],));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            imageUrl:
                                controller.mobileList[index].thumbnail.toString(),
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.fill),
                              ),
                            ),
                            fit: BoxFit.fill,
                            placeholder: (context, url) => Image.asset(
                              'assets/images/png/placeholder_img.png',
                              fit: BoxFit.cover,
                            ),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/images/png/placeholder_img.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      childCount: controller.mobileList.length,
                    ),
                  )
                ],
              ),
            )),
          )),
    );
  }
}
