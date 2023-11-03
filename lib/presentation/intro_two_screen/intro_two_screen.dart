import 'bloc/intro_two_bloc.dart';
import 'models/intro_two_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroTwoScreen extends StatelessWidget {
  const IntroTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroTwoBloc>(
      create: (context) => IntroTwoBloc(IntroTwoState(
        introTwoModelObj: IntroTwoModel(),
      ))
        ..add(IntroTwoInitialEvent()),
      child: IntroTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<IntroTwoBloc, IntroTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 18.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_skip".tr,
                      style: CustomTextStyles.titleSmallInterOnPrimary,
                    ),
                  ),
                  SizedBox(height: 77.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage304x304,
                    height: 304.adaptSize,
                    width: 304.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    width: 265.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 29.h,
                    ),
                    child: Text(
                      "msg_book_charging_slots".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.only(
                      left: 21.h,
                      right: 14.h,
                    ),
                    child: Text(
                      "msg_take_control_of".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildChargingSlots(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChargingSlots(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 41.h,
        right: 44.h,
        bottom: 61.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 60.v,
            width: 61.h,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
            ),
          ),
          Container(
            height: 14.v,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 30.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 22,
                activeDotColor: theme.colorScheme.primary,
                dotColor: appTheme.gray300,
                dotHeight: 14.v,
                dotWidth: 14.h,
              ),
            ),
          ),
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(15.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          ),
        ],
      ),
    );
  }
}
