import 'bloc/selecting_car_three_bloc.dart';
import 'models/selecting_car_three_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectingCarThreeScreen extends StatelessWidget {
  const SelectingCarThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectingCarThreeBloc>(
      create: (context) => SelectingCarThreeBloc(SelectingCarThreeState(
        selectingCarThreeModelObj: SelectingCarThreeModel(),
      ))
        ..add(SelectingCarThreeInitialEvent()),
      child: SelectingCarThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SelectingCarThreeBloc, SelectingCarThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 18.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 18.v,
                    width: 11.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 23.h),
                  ),
                  SizedBox(height: 61.v),
                  Text(
                    "lbl_add_vehicle".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 27.v),
                  Container(
                    width: 271.h,
                    margin: EdgeInsets.only(
                      left: 42.h,
                      right: 48.h,
                    ),
                    child: Text(
                      "msg_you_vehicle_is_used".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 25.v),
                  CustomImageView(
                    imagePath: ImageConstant.img63879721,
                    height: 238.v,
                    width: 356.h,
                  ),
                  SizedBox(height: 95.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 27.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 12.v),
                        Text(
                          "lbl_bmw".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 15.v),
                        Divider(),
                        SizedBox(height: 16.v),
                        Text(
                          "lbl_85d".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildAddThisVehicle(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddThisVehicle(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_add_this_vehicle".tr,
      margin: EdgeInsets.only(
        left: 43.h,
        right: 47.h,
        bottom: 54.v,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallInterWhiteA70001,
    );
  }
}
