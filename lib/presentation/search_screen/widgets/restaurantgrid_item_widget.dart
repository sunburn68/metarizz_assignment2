import 'package:flutter/material.dart' hide SearchController;
import 'package:metarizz_assignment/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class RestaurantgridItemWidget extends StatelessWidget {
  const RestaurantgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutlineGradientButton(
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
            height: 87.adaptSize,
            width: 87.adaptSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.53, -0.32),
                end: Alignment(0.5, 1),
                colors: [
                  appTheme.teal90000,
                  appTheme.black90001,
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 11.v),
        Container(
          width: 58.h,
          margin: EdgeInsets.only(left: 6.h),
          child: Text(
            "Restaurant \nName",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelMedium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            "Location",
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
