import 'package:flutter/material.dart' hide SearchController;
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class RestaurantinfosliderItemWidget extends StatelessWidget {
  const RestaurantinfosliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.5, 1),
        colors: [
          appTheme.tealA10003,
          appTheme.teal70000,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.gradientTealToBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 54.v),
            Text(
              "Restaurant Name",
              style: CustomTextStyles.labelLargeTealA10002,
            ),
            Text(
              "Location",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
