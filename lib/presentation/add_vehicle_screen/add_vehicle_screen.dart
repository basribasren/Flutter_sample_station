import 'bloc/add_vehicle_bloc.dart';
import 'models/add_vehicle_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddVehicleBloc>(
      create: (context) => AddVehicleBloc(AddVehicleState(
        addVehicleModelObj: AddVehicleModel(),
      ))
        ..add(AddVehicleInitialEvent()),
      child: AddVehicleScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AddVehicleBloc, AddVehicleState>(
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
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 23.h),
                      child: Text(
                        "lbl_skip".tr,
                        style: CustomTextStyles.titleSmallInterOnPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 60.v),
                  Text(
                    "lbl_add_vehicle".tr,
                    style: CustomTextStyles.headlineSmallOnPrimary,
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
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildChooseVehicle(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChooseVehicle(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_choose_vehicle".tr,
      margin: EdgeInsets.only(
        left: 43.h,
        right: 47.h,
        bottom: 54.v,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallInterWhiteA70001,
    );
  }
}
