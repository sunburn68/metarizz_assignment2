import 'package:flutter/material.dart';
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_leading_image.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_title.dart';
import 'package:metarizz_assignment/widgets/app_bar/custom_app_bar.dart';
import 'package:metarizz_assignment/widgets/custom_drop_down.dart';
import 'package:metarizz_assignment/widgets/custom_elevated_button.dart';
import 'package:metarizz_assignment/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class EHadithBooksListPopLightScreen extends StatelessWidget {
  EHadithBooksListPopLightScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  _buildEnglish(context),
                  SizedBox(height: 38.v),
                  _buildPrevious(context),
                  SizedBox(height: 32.v),
                  _buildThree(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 37.h, top: 20.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "e-Hadith Books List", margin: EdgeInsets.only(left: 14.h)),
        actions: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.symmetric(horizontal: 35.h, vertical: 13.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft1,
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
  Widget _buildEnglish(BuildContext context) {
    return SizedBox(
        height: 364.v,
        width: 352.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 26.h, top: 13.v, right: 35.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Sahih Al-Bukhari",
                        style: CustomTextStyles.titleSmallTeal90002),
                    SizedBox(height: 41.v),
                    Text("Revelation",
                        style: CustomTextStyles.labelLargeTeal90001),
                    SizedBox(height: 38.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Narrated",
                                        style: CustomTextStyles
                                            .labelLargeff408873),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "‘Umar bin Al-Khattab ",
                                        style:
                                            CustomTextStyles.labelLargeff00a879)
                                  ]),
                                  textAlign: TextAlign.left)),
                          CustomImageView(
                              imagePath: ImageConstant.imgHeart3LineTeal800,
                              height: 24.adaptSize,
                              width: 24.adaptSize)
                        ])
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 289.h,
                  margin: EdgeInsets.only(left: 26.h),
                  child: Text(
                      "I heard Allah's Messenger (ﷺ) saying, \"The reward of deeds depends upon the intentions and every person will get the reward according to what he has intended. So whoever emigrated for worldly benefits or for a woman to marry, his emigration was for what he emigrated for.\"",
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: theme.textTheme.bodyLarge))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
                  decoration: AppDecoration.fillBluegray900.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgListUnorderedTealA10004,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Container(
                                  margin:
                                      EdgeInsets.only(left: 44.h, bottom: 3.v),
                                  decoration: AppDecoration.outlineBlackF,
                                  child: Text("e-Hadith Navigation & Settings",
                                      style: CustomTextStyles.titleMediumBold))
                            ])),
                    SizedBox(height: 8.v),
                    SizedBox(
                        height: 164.v,
                        width: 311.h,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 34.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Volume 08",
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 3.v),
                                                    Row(children: [
                                                      Text("Volume 01",
                                                          style: CustomTextStyles
                                                              .titleSmallTeal300),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowDownGreenA100,
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 7.h,
                                                                  top: 5.v,
                                                                  bottom: 3.v))
                                                    ])
                                                  ]),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: 171.h,
                                                        margin: EdgeInsets.only(
                                                            right: 17.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text("Book 08",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleSmall),
                                                              Text("Hadith 08",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleSmall)
                                                            ])),
                                                    SizedBox(height: 2.v),
                                                    Row(children: [
                                                      CustomDropDown(
                                                          width: 74.h,
                                                          hintText: "Book 01",
                                                          items:
                                                              dropdownItemList,
                                                          onChanged:
                                                              (value) {}),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30.h),
                                                          child: Text(
                                                              "Hadith 01",
                                                              style: CustomTextStyles
                                                                  .titleSmallTeal300Bold)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowDownGreenA100,
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.h,
                                                                  top: 4.v,
                                                                  bottom: 4.v))
                                                    ])
                                                  ])
                                            ]),
                                        SizedBox(height: 1.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 17.h),
                                            child: _buildVolumeCounter(context,
                                                volumeCounter: "Volume 02",
                                                bookCounter: "Book 02",
                                                hadithCounter: "Hadith 02")),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 17.h),
                                            child: _buildVolumeCounter(context,
                                                volumeCounter: "Volume 03",
                                                bookCounter: "Book 03",
                                                hadithCounter: "Hadith 03"))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowLeftGreenA100,
                                            height: 13.v,
                                            width: 8.h,
                                            margin: EdgeInsets.only(
                                                top: 7.v, bottom: 8.v)),
                                        CustomElevatedButton(
                                            width: 127.h,
                                            text: "English",
                                            margin: EdgeInsets.only(left: 13.h),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientBlueGrayToTealDecoration),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowRight,
                                            height: 13.v,
                                            width: 8.h,
                                            margin: EdgeInsets.only(
                                                left: 13.h,
                                                top: 7.v,
                                                bottom: 8.v))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 11.h, right: 7.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 3.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 3.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Hadith Book : ",
                                                                    style: CustomTextStyles
                                                                        .labelLargeff005940),
                                                                TextSpan(
                                                                    text:
                                                                        "Sahih Al-Bukhari",
                                                                    style: CustomTextStyles
                                                                        .labelLargeff007f5b)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  CustomElevatedButton(
                                                      height: 23.v,
                                                      width: 106.h,
                                                      text: "Chose Alternate",
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .outlineBlackF,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelMediumTeal90002)
                                                ])),
                                        SizedBox(height: 95.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 27.h),
                                            child: Text("Hadith Language",
                                                style: CustomTextStyles
                                                    .labelLargeTeal60002)),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomIconButton(
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCloseTealA200)),
                                                  Container(
                                                      width: 61.h,
                                                      margin: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "Go to\nFavourites",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .labelLargeTeal60002))
                                                ]))
                                      ])))
                        ])),
                    SizedBox(height: 8.v)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 34.h, right: 37.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("- Previous", style: CustomTextStyles.labelMediumGray400),
          Text("Next -", style: CustomTextStyles.labelMediumTeal90003)
        ]));
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
        decoration: AppDecoration.gradientTealToGray900
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.v),
              Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Reference ",
                            style: CustomTextStyles.labelLargeff408873),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "Sahih al-Bukhari 1",
                            style: CustomTextStyles.labelLargeff003d2c)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "In-Book      ",
                            style: CustomTextStyles.labelLargeff43735e),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "Book 1 , Hadith 1",
                            style: CustomTextStyles.labelLargeff0d4936)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 63.h,
                            child: Text("USC-MSA web (English) reference",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeBluegray600)),
                        Container(
                            width: 50.h,
                            margin: EdgeInsets.only(left: 8.h, bottom: 15.v),
                            child: Text("Vol. 1, Book 1, Hadith 1",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeTeal900))
                      ])),
              SizedBox(height: 26.v),
              Container(
                  height: 80.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15.h)),
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0.07),
                          end: Alignment(0.5, 1),
                          colors: [appTheme.teal600, appTheme.gray900])))
            ]));
  }

  /// Common widget
  Widget _buildVolumeCounter(
    BuildContext context, {
    required String volumeCounter,
    required String bookCounter,
    required String hadithCounter,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(volumeCounter,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.teal80001)),
      Text(bookCounter,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.teal80001)),
      Text(hadithCounter,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.teal80001))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
