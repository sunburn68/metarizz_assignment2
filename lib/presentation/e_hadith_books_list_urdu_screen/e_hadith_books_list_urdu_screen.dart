import 'package:flutter/material.dart';
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_leading_image.dart';
import 'package:metarizz_assignment/widgets/app_bar/appbar_title.dart';
import 'package:metarizz_assignment/widgets/app_bar/custom_app_bar.dart';

class EHadithBooksListUrduScreen extends StatelessWidget {
  const EHadithBooksListUrduScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                                        CustomTextStyles.titleSmallTeal90002)),
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
                  SizedBox(height: 29.v),
                  Text("كتاب بدء الوحى",
                      style: CustomTextStyles.bodyMediumInterTeal90001),
                  SizedBox(height: 37.v),
                  _buildNarratedUmarBin(context),
                  SizedBox(height: 8.v),
                  Container(
                      width: 289.h,
                      margin: EdgeInsets.only(left: 34.h, right: 37.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "حَدَّثَنَا",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text:
                                    " الْحُمَيْدِيُّ عَبْدُ اللَّهِ بْنُ الزُّبَيْرِ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "، قَالَ : حَدَّثَنَا",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: " سُفْيَانُ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "، قَالَ : حَدَّثَنَا",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: " يَحْيَى بْنُ سَعِيدٍ الْأَنْصَارِيُّ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "، قَالَ : أَخْبَرَنِي",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text:
                                    " مُحَمَّدُ بْنُ إِبْرَاهِيمَ التَّيْمِيُّ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "، أَنَّهُ سَمِعَ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: " عَلْقَمَةَ بْنَ وَقَّاصٍ اللَّيْثِيَّ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: "، يَقُولُ : سَمِعْتُ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text: " عُمَرَ بْنَ الْخَطَّابِ ",
                                style: theme.textTheme.bodyMedium),
                            TextSpan(
                                text:
                                    "رَضِيَ اللَّهُ عَنْهُ عَلَى الْمِنْبَرِ، قَالَ : سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ، يَقُولُ : \" إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ، وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى، فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى دُنْيَا يُصِيبُهَا أَوْ إِلَى امْرَأَةٍ يَنْكِحُهَا، فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ \"\n",
                                style: theme.textTheme.bodyMedium)
                          ]),
                          textAlign: TextAlign.justify)),
                  SizedBox(height: 59.v),
                  _buildPrevious(context),
                  SizedBox(height: 32.v),
                  _buildOne(context)
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
        padding: EdgeInsets.only(left: 32.h, right: 37.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeart3LineTeal800,
              height: 24.adaptSize,
              width: 24.adaptSize),
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
                  textAlign: TextAlign.left))
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
  Widget _buildOne(BuildContext context) {
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
