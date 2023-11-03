import 'bloc/selecting_car_two_bloc.dart';
import 'models/selecting_car_two_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SelectingCarTwoScreen extends StatelessWidget {
  const SelectingCarTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectingCarTwoBloc>(
      create: (context) => SelectingCarTwoBloc(SelectingCarTwoState(
        selectingCarTwoModelObj: SelectingCarTwoModel(),
      ))
        ..add(SelectingCarTwoInitialEvent()),
      child: SelectingCarTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 6.h,
                ),
                child: BlocSelector<SelectingCarTwoBloc, SelectingCarTwoState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search_company".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                height: 448.v,
                width: 312.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMoreArrowBlueGray900,
                      height: 431.v,
                      width: 8.h,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_40".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 27.v),
                            Text(
                              "msg_40w_supercharger".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 34.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_60".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 29.v),
                            Text(
                              "msg_60w_supercharger".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 28.v),
                            Text(
                              "lbl_85".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 31.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_p85".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Text(
                              "lbl_85d".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 31.v),
                            Text(
                              "lbl_p85d".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 30.v),
                            Text(
                              "lbl_70d".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSectionsBlueGray100,
                      height: 415.v,
                      width: 311.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcon,
        margin: EdgeInsets.only(
          left: 37.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_trim".tr,
      ),
    );
  }
}
