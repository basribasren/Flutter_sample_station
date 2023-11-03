import 'bloc/intro_one_bloc.dart';
import 'models/intro_one_model.dart';
import 'package:basri_s_application1/core/app_export.dart';
import 'package:basri_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroOneBloc>(
        create: (context) =>
            IntroOneBloc(IntroOneState(introOneModelObj: IntroOneModel()))
              ..add(IntroOneInitialEvent()),
        child: IntroOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<IntroOneBloc, IntroOneState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 18.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 14.h),
                            child: Text("lbl_skip".tr,
                                style: CustomTextStyles
                                    .titleSmallInterOnPrimary))),
                    Spacer(flex: 43),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 230.v,
                        width: 345.h),
                    SizedBox(height: 53.v),
                    Container(
                        width: 294.h,
                        margin: EdgeInsets.only(left: 25.h, right: 29.h),
                        child: Text("msg_find_nearby_ev_chargers_with".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall)),
                    SizedBox(height: 9.v),
                    Text("msg_finding_nearby_ev".tr,
                        style: theme.textTheme.labelLarge),
                    Spacer(flex: 56),
                    SizedBox(height: 42.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 23.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 14.v,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 23.v),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: 0,
                                          count: 3,
                                          effect: ScrollingDotsEffect(
                                              spacing: 22,
                                              activeDotColor:
                                                  theme.colorScheme.primary,
                                              dotColor: appTheme.gray300,
                                              dotHeight: 14.v,
                                              dotWidth: 14.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 44.h),
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          padding: EdgeInsets.all(15.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowRight)))
                                ])))
                  ]))));
    });
  }
}
