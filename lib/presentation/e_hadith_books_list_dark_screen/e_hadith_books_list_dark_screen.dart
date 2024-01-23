import 'package:flutter/material.dart';
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_leading_image.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_title.dart';
import 'package:metarizz_assignment/widgets/app_bar/custom_app_bar.dart';

class EHadithBooksListDarkScreen extends StatelessWidget {
  const EHadithBooksListDarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 13.v),
                                child: Text("Sahih Al-Bukhari",
                                    style:
                                        CustomTextStyles.titleSmallTealA10001)),
                            Container(
                                height: 44.v,
                                width: 70.h,
                                margin: EdgeInsets.only(left: 54.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 13.h, vertical: 10.v),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL5),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgListUnordered,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.centerLeft))
                          ])),
                  SizedBox(height: 28.v),
                  Text("Revelation",
                      style: CustomTextStyles.labelLargeTeal90001),
                  SizedBox(height: 38.v),
                  _buildNarratedUmarBin(context),
                  SizedBox(height: 29.v),
                  Container(
                      width: 289.h,
                      margin: EdgeInsets.only(left: 34.h, right: 37.h),
                      child: Text(
                          "I heard Allah's Messenger (ﷺ) saying, \"The reward of deeds depends upon the intentions and every person will get the reward according to what he has intended. So whoever emigrated for worldly benefits or for a woman to marry, his emigration was for what he emigrated for.\"",
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyLargeYellow5001)),
                  SizedBox(height: 38.v),
                  _buildPrevious(context),
                  SizedBox(height: 32.v),
                  _buildTwo(context)
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
  Widget _buildNarratedUmarBin(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Narrated",
                        style: CustomTextStyles.labelLargeff408873),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "‘Umar bin Al-Khattab ",
                        style: CustomTextStyles.labelLargeff00a879)
                  ]),
                  textAlign: TextAlign.left)),
          CustomImageView(
              imagePath: ImageConstant.imgHeart3Line,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 34.h, right: 37.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("- Previous",
              style: CustomTextStyles.labelMediumTealA10001Medium),
          Text("Next -", style: CustomTextStyles.labelMediumTealA10001)
        ]));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
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
                            style: CustomTextStyles.labelLargeff93ffe0)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 34.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "In-Book      ",
                            style: CustomTextStyles.labelLargeff408873),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "Book 1 , Hadith 1",
                            style: CustomTextStyles.labelLargeff93ffe0)
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
                                style: theme.textTheme.labelLarge))
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
