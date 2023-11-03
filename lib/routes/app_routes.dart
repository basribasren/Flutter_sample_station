import 'package:flutter/material.dart';
import 'package:basri_s_application1/presentation/intro_one_screen/intro_one_screen.dart';
import 'package:basri_s_application1/presentation/intro_two_screen/intro_two_screen.dart';
import 'package:basri_s_application1/presentation/intro_three_screen/intro_three_screen.dart';
import 'package:basri_s_application1/presentation/add_vehicle_screen/add_vehicle_screen.dart';
import 'package:basri_s_application1/presentation/selecting_car_screen/selecting_car_screen.dart';
import 'package:basri_s_application1/presentation/selecting_car_two_screen/selecting_car_two_screen.dart';
import 'package:basri_s_application1/presentation/selecting_car_three_screen/selecting_car_three_screen.dart';
import 'package:basri_s_application1/presentation/view_charger_tab_container_screen/view_charger_tab_container_screen.dart';
import 'package:basri_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String introOneScreen = '/intro_one_screen';

  static const String introTwoScreen = '/intro_two_screen';

  static const String introThreeScreen = '/intro_three_screen';

  static const String addVehicleScreen = '/add_vehicle_screen';

  static const String selectingCarScreen = '/selecting_car_screen';

  static const String selectingCarTwoScreen = '/selecting_car_two_screen';

  static const String selectingCarThreeScreen = '/selecting_car_three_screen';

  static const String viewChargerPage = '/view_charger_page';

  static const String viewChargerTabContainerScreen =
      '/view_charger_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        introOneScreen: IntroOneScreen.builder,
        introTwoScreen: IntroTwoScreen.builder,
        introThreeScreen: IntroThreeScreen.builder,
        addVehicleScreen: AddVehicleScreen.builder,
        selectingCarScreen: SelectingCarScreen.builder,
        selectingCarTwoScreen: SelectingCarTwoScreen.builder,
        selectingCarThreeScreen: SelectingCarThreeScreen.builder,
        viewChargerTabContainerScreen: ViewChargerTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: IntroOneScreen.builder
      };
}
