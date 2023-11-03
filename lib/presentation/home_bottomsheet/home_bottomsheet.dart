import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_elevated_button.dart';
import 'package:basri_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeBottomsheet extends StatelessWidget {
  const HomeBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 13.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_qi_charging_station".tr,
                      style: CustomTextStyles.titleSmallInterSemiBold,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgHeartFavourite,
                    height: 26.v,
                    width: 28.h,
                    margin: EdgeInsets.only(left: 75.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIsolationMode,
                  height: 21.v,
                  width: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_324_vespucci_beach".tr,
                    style: CustomTextStyles.titleSmallSecondaryContainer_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgStarFill,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    top: 4.v,
                    bottom: 6.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "msg_4_8_66_reviews".tr,
                    style: CustomTextStyles.labelLargeSecondaryContainer_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLayer1,
                  height: 25.v,
                  width: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_07_kw".tr,
                    style: CustomTextStyles.bodyMediumPoppins14,
                  ),
                ),
                Spacer(
                  flex: 50,
                ),
                Container(
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 4.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder9,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgDollar,
                    height: 14.v,
                    width: 8.h,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_30_00_kw".tr,
                    style: CustomTextStyles.bodyMediumPoppins14,
                  ),
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 21.v,
                  width: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_3_5_km_30_min".tr,
                    style: CustomTextStyles.bodyMediumPoppins14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "msg_available_connectors".tr,
            style: CustomTextStyles.titleSmallInterSemiBold,
          ),
          SizedBox(height: 14.v),
          CustomImageView(
            imagePath: ImageConstant.imgVectorOnerror,
            height: 38.v,
            width: 309.h,
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              right: 9.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    text: "lbl_view".tr,
                    margin: EdgeInsets.only(right: 21.h),
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_book".tr,
                    margin: EdgeInsets.only(left: 21.h),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
