import '../search_screen/widgets/restaurantgrid_item_widget.dart';
import '../search_screen/widgets/restaurantinfoslider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_title.dart';
import 'package:metarizz_assignment/widgets/app_bar/custom_app_bar.dart';
import 'package:metarizz_assignment/widgets/custom_search_view.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup22),
                                  fit: BoxFit.cover)),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 42.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMapPin2Fill,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 1.v, bottom: 16.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      Text("Mumbai",
                                                          style: CustomTextStyles
                                                              .bodyLargeInterGreen600),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowDown,
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  top: 7.v,
                                                                  bottom: 3.v))
                                                    ]),
                                                    Text("INDIA",
                                                        style: CustomTextStyles
                                                            .labelLargeGreen600)
                                                  ]))
                                        ]))),
                            SizedBox(height: 21.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 37.h, right: 35.h),
                                child: CustomSearchView(
                                    controller: searchController,
                                    hintText: "Search Foods / Restaurants")),
                            SizedBox(height: 22.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 40.h),
                                    child: Text("Specials Near You",
                                        style: CustomTextStyles
                                            .titleMediumTealA10002))),
                            SizedBox(height: 13.v),
                            _buildRestaurantInfoSlider(context),
                            SizedBox(height: 9.v),
                            SizedBox(
                                height: 6.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: sliderIndex,
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 8,
                                        activeDotColor: appTheme.tealA100,
                                        dotHeight: 6.v,
                                        dotWidth: 6.h))),
                            SizedBox(height: 23.v),
                            _buildFavouritesRow(context),
                            SizedBox(height: 30.v),
                            _buildRestaurantGrid(context)
                          ])),
                      SizedBox(height: 1.v),
                      _buildSuggestedRow(context),
                      SizedBox(height: 28.v),
                      _buildSeventySevenRow(context),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h, right: 50.h),
                          child: _buildEightyOneRow(context,
                              restaurantName1: "Restaurant \nName",
                              restaurantName2: "Restaurant \nName",
                              restaurantName3: "Restaurant \nName")),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h, right: 70.h),
                          child: _buildEightyTwoRow(context,
                              locationText1: "Location",
                              locationText2: "Location",
                              locationText3: "Location")),
                      SizedBox(height: 18.v),
                      _buildEightyRow(context),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h, right: 50.h),
                          child: _buildEightyOneRow(context,
                              restaurantName1: "Restaurant \nName",
                              restaurantName2: "Restaurant \nName",
                              restaurantName3: "Restaurant \nName")),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h, right: 70.h),
                          child: _buildEightyTwoRow(context,
                              locationText1: "Location",
                              locationText2: "Location",
                              locationText3: "Location"))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: Container(
            height: 23.v,
            width: 14.h,
            margin: EdgeInsets.only(left: 37.h, top: 20.v, bottom: 13.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 23.v,
                  width: 14.h,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 23.v,
                  width: 14.h,
                  alignment: Alignment.center)
            ])),
        title: Container(
            height: 19.999996.v,
            width: 138.h,
            margin: EdgeInsets.only(left: 14.h),
            child: Stack(alignment: Alignment.center, children: [
              AppbarTitle(text: "Halal Food Search"),
              AppbarTitle(text: "Halal Food Search")
            ])),
        actions: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.symmetric(horizontal: 35.h, vertical: 13.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft30x30,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgSettings2Line,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5.h))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildRestaurantInfoSlider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 108.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return RestaurantinfosliderItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFavouritesRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Favourites", style: CustomTextStyles.labelLargeGreenA200),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      child: Divider(indent: 10.h)))
            ]));
  }

  /// Section Widget
  Widget _buildRestaurantGrid(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 139.v,
            crossAxisCount: 3,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return RestaurantgridItemWidget();
        });
  }

  /// Section Widget
  Widget _buildSuggestedRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Suggested",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGreenA200),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 5.v, bottom: 9.v),
                      child: Divider(indent: 9.h)))
            ]));
  }

  /// Section Widget
  Widget _buildSeventySevenRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Container(
                  height: 87.adaptSize,
                  width: 87.adaptSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.53, -0.32),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.teal90000, appTheme.black90001])))),
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Container(
                      height: 87.adaptSize,
                      width: 87.adaptSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          gradient: LinearGradient(
                              begin: Alignment(0.53, -0.32),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.teal90000,
                                appTheme.black90001
                              ]))))),
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Container(
                      height: 87.adaptSize,
                      width: 87.adaptSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          gradient: LinearGradient(
                              begin: Alignment(0.53, -0.32),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.teal90000,
                                appTheme.black90001
                              ])))))
        ]));
  }

  /// Section Widget
  Widget _buildEightyRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Container(
                  height: 87.adaptSize,
                  width: 87.adaptSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.53, -0.32),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.teal90000, appTheme.black90001])))),
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Container(
                      height: 87.adaptSize,
                      width: 87.adaptSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          gradient: LinearGradient(
                              begin: Alignment(0.53, -0.32),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.teal90000,
                                appTheme.black90001
                              ]))))),
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.tealA10003, appTheme.teal70000]),
              corners: Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Container(
                      height: 87.adaptSize,
                      width: 87.adaptSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          gradient: LinearGradient(
                              begin: Alignment(0.53, -0.32),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.teal90000,
                                appTheme.black90001
                              ])))))
        ]));
  }

  /// Common widget
  Widget _buildEightyOneRow(
    BuildContext context, {
    required String restaurantName1,
    required String restaurantName2,
    required String restaurantName3,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          width: 61.h,
          child: Text(restaurantName1,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: appTheme.tealA10002))),
      Spacer(flex: 50),
      SizedBox(
          width: 61.h,
          child: Text(restaurantName2,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: appTheme.tealA10002))),
      Spacer(flex: 50),
      SizedBox(
          width: 61.h,
          child: Text(restaurantName3,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: appTheme.tealA10002)))
    ]);
  }

  /// Common widget
  Widget _buildEightyTwoRow(
    BuildContext context, {
    required String locationText1,
    required String locationText2,
    required String locationText3,
  }) {
    return Row(children: [
      Text(locationText1,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.tealA10002)),
      Spacer(flex: 50),
      Text(locationText2,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.tealA10002)),
      Spacer(flex: 50),
      Text(locationText3,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.tealA10002))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
