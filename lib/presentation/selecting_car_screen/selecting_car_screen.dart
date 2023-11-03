import 'bloc/selecting_car_bloc.dart';
import 'models/selecting_car_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SelectingCarScreen extends StatelessWidget {
  const SelectingCarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectingCarBloc>(
      create: (context) => SelectingCarBloc(SelectingCarState(
        selectingCarModelObj: SelectingCarModel(),
      ))
        ..add(SelectingCarInitialEvent()),
      child: SelectingCarScreen(),
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
            horizontal: 34.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 7.h,
                ),
                child: BlocSelector<SelectingCarBloc, SelectingCarState,
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
              SizedBox(height: 16.v),
              SizedBox(
                height: 550.v,
                width: 313.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMoreArrow,
                      height: 534.v,
                      width: 8.h,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_aiways".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "lbl_aptera".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_arcimoto".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 33.v),
                          Text(
                            "lbl_ather_energy".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_audi".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "lbl_avtovaz".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 30.v),
                          Text(
                            "lbl_baic".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "lbl_bjev".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 30.v),
                          Text(
                            "lbl_bmw".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 33.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_roadster".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          SizedBox(height: 27.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_tesla".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSections,
                      height: 518.v,
                      width: 312.h,
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
          top: 18.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_select_your_car".tr,
      ),
    );
  }
}
