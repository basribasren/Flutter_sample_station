import 'bloc/view_charger_bloc.dart';
import 'models/view_charger_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_elevated_button.dart';
import 'package:basri_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ViewChargerPage extends StatefulWidget {
  const ViewChargerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ViewChargerPageState createState() => ViewChargerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ViewChargerBloc>(
      create: (context) => ViewChargerBloc(ViewChargerState(
        viewChargerModelObj: ViewChargerModel(),
      ))
        ..add(ViewChargerInitialEvent()),
      child: ViewChargerPage(),
    );
  }
}

class ViewChargerPageState extends State<ViewChargerPage>
    with AutomaticKeepAliveClientMixin<ViewChargerPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ViewChargerBloc, ViewChargerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 124.v),
                    _buildSeventyOne(context),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 16.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
              right: 24.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.outlineErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder17,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 3.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_parking".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        "lbl_free".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Divider(
                  indent: 3.h,
                  endIndent: 3.h,
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_cost".tr,
                    time: "lbl_30_00_kw".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            margin: EdgeInsets.only(
              left: 11.h,
              right: 23.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder17,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 7.v),
                SizedBox(
                  height: 35.v,
                  width: 289.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 59.h),
                          child: Text(
                            "lbl_24_hours".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                right: 3.h,
                              ),
                              child: _buildFiftySeven(
                                context,
                                facilities: "lbl_open".tr,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_monday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_tuesday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_wednesday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_thursday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_friday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_saturday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildSixtyTwo(
                    context,
                    dayName: "lbl_sunday".tr,
                    time: "lbl_00_00_00_00".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 15.h,
                right: 19.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlineErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder17,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 3.h,
                    ),
                    child: _buildFiftySeven(
                      context,
                      facilities: "lbl_facilities".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      right: 13.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 24.v,
                          width: 26.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_washroom".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorPrimary,
                          height: 17.v,
                          width: 21.h,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_wi_fi".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomImageView(
            imagePath: ImageConstant.img114036Oolog1321,
            height: 203.v,
            width: 314.h,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 23.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_locate".tr,
                  margin: EdgeInsets.only(right: 21.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_book_now".tr,
                  margin: EdgeInsets.only(left: 21.h),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyTwo(
    BuildContext context, {
    required String dayName,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dayName,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          time,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFiftySeven(
    BuildContext context, {
    required String facilities,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          facilities,
          style: CustomTextStyles.titleMediumPrimaryContainer.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowUpErrorcontainer,
          height: 9.v,
          width: 14.h,
          margin: EdgeInsets.only(bottom: 9.v),
        ),
      ],
    );
  }
}
