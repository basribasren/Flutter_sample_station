import 'bloc/view_charger_tab_container_bloc.dart';
import 'models/view_charger_tab_container_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/presentation/view_charger_page/view_charger_page.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application1/widgets/custom_elevated_button.dart';
import 'package:basri_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ViewChargerTabContainerScreen extends StatefulWidget {
  const ViewChargerTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ViewChargerTabContainerScreenState createState() =>
      ViewChargerTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ViewChargerTabContainerBloc>(
      create: (context) =>
          ViewChargerTabContainerBloc(ViewChargerTabContainerState(
        viewChargerTabContainerModelObj: ViewChargerTabContainerModel(),
      ))
            ..add(ViewChargerTabContainerInitialEvent()),
      child: ViewChargerTabContainerScreen(),
    );
  }
}

class ViewChargerTabContainerScreenState
    extends State<ViewChargerTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ViewChargerTabContainerBloc,
        ViewChargerTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 393.h,
              child: Column(
                children: [
                  _buildTwentyFour(context),
                  SizedBox(height: 20.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 18.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.v),
                                    child: Text(
                                      "msg_qi_charging_station".tr,
                                      style: CustomTextStyles
                                          .titleSmallInterOnPrimarySemiBold,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgArrowUp,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                    margin: EdgeInsets.only(left: 86.h),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          _buildSixtyOne(context),
                          SizedBox(height: 27.v),
                          _buildSpecs(context),
                          SizedBox(height: 29.v),
                          Text(
                            "msg_available_connectors".tr,
                            style: CustomTextStyles.titleSmallInter,
                          ),
                          SizedBox(height: 13.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorOnerror,
                            height: 38.v,
                            width: 312.h,
                          ),
                          SizedBox(height: 14.v),
                          _buildFiftyEight(context),
                          SizedBox(height: 27.v),
                          _buildTabview(context),
                          SizedBox(
                            height: 1039.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                ViewChargerPage.builder(context),
                                ViewChargerPage.builder(context),
                                ViewChargerPage.builder(context),
                                ViewChargerPage.builder(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return SizedBox(
      height: 338.v,
      width: 393.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEvCharging1001x565,
            height: 338.v,
            width: 393.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 45.v,
            leadingWidth: 43.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgGroup19,
              margin: EdgeInsets.only(left: 15.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgHeartFavouriteWhiteA70001,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  right: 10.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 13.h,
      ),
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
              style: CustomTextStyles.titleSmallSecondaryContainer,
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
              style: CustomTextStyles.labelLargeSecondaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 15.h,
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
              style: CustomTextStyles.bodyMediumPoppins,
            ),
          ),
          Spacer(
            flex: 49,
          ),
          Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 1.v,
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
              style: CustomTextStyles.bodyMediumPoppins,
            ),
          ),
          Spacer(
            flex: 50,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 21.v,
            width: 16.h,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_3_5_km_30_min".tr,
              style: CustomTextStyles.bodyMediumPoppins,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_view".tr,
              margin: EdgeInsets.only(right: 21.h),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_route_planner".tr,
              margin: EdgeInsets.only(left: 21.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 44.v,
      width: 323.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 15.126201629638672.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.126201629638672.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_info".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_chargers".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_check_ins".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_reviews".tr,
            ),
          ),
        ],
      ),
    );
  }
}
