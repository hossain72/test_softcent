import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/dialog_box_product.dart';

import '../controllers/explore_page_controller.dart';

class ExplorePageView extends GetView<ExplorePageController> {
  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
                  TypeAheadFormField(
                    textFieldConfiguration: TextFieldConfiguration(
                        keyboardType: TextInputType.text,
                        controller: controller.searchController,
                        decoration: InputDecoration(
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.search,
                              size: 34,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: "Search item",
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(15)),
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        )),
                    onSuggestionSelected: (suggestion) {},
                    transitionBuilder: (context, suggestionsBox, controller) {
                      return suggestionsBox;
                    },
                    itemBuilder: (context, item) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              item.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      );
                    },
                    suggestionsCallback: (String pattern) => [],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                        onTap: () {
                          Get.dialog(DialogBoxProduct(
                            product: controller.mobileList[index],
                          ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            imageUrl: controller.mobileList[index].thumbnail
                                .toString(),
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
