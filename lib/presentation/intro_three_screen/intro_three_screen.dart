import 'bloc/intro_three_bloc.dart';
import 'models/intro_three_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroThreeScreen extends StatelessWidget {
  const IntroThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroThreeBloc>(
      create: (context) => IntroThreeBloc(IntroThreeState(
        introThreeModelObj: IntroThreeModel(),
      ))
        ..add(IntroThreeInitialEvent()),
      child: IntroThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<IntroThreeBloc, IntroThreeState>(
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
                    imagePath: ImageConstant.imgImage312x312,
                    height: 312.adaptSize,
                    width: 312.adaptSize,
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 237.h,
                      margin: EdgeInsets.only(
                        left: 36.h,
                        right: 46.h,
                      ),
                      child: Text(
                        "msg_plan_long_trips".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 313.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "msg_embark_on_epic_electric".tr,
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
            bottomNavigationBar: _buildFiftyOneRow(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFiftyOneRow(BuildContext context) {
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
