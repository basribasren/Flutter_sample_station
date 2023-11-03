import 'bloc/share_screen_bloc.dart';
import 'models/share_screen_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_floating_button.dart';
import 'package:basri_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ShareScreenBottomsheet extends StatelessWidget {
  const ShareScreenBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareScreenBloc>(
        create: (context) => ShareScreenBloc(
            ShareScreenState(shareScreenModelObj: ShareScreenModel()))
          ..add(ShareScreenInitialEvent()),
        child: ShareScreenBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SizedBox(
        height: 806.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 496.v),
                    _buildScrollView(context)
                  ])),
          _buildFloatingActionButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 14.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("lbl_share".tr,
                                style: theme.textTheme.titleLarge),
                            CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 119.h, top: 11.v, bottom: 4.v),
                                onTap: () {
                                  onTapImgClose(context);
                                })
                          ]))),
              SizedBox(height: 182.v),
              Row(mainAxisSize: MainAxisSize.min, children: [
                CustomIconButton(
                    height: 60.v,
                    width: 61.h,
                    padding: EdgeInsets.all(11.h),
                    decoration: IconButtonStyleHelper.fillPink,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgInstagram)),
                Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: CustomIconButton(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.all(11.h),
                        decoration: IconButtonStyleHelper.fillBlue,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgTwitter))),
                Spacer(flex: 29),
                CustomIconButton(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    padding: EdgeInsets.all(15.h),
                    decoration: IconButtonStyleHelper.fillGreenA,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgWhatsapp)),
                Spacer(flex: 70)
              ]),
              SizedBox(height: 11.v)
            ])));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 60,
        width: 60,
        backgroundColor: appTheme.indigo600,
        alignment: Alignment.bottomRight,
        child: CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 30.0.v,
            width: 30.0.h));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
