// ignore_for_file: must_be_immutable

part of 'intro_two_bloc.dart';

/// Represents the state of IntroTwo in the application.
class IntroTwoState extends Equatable {
  IntroTwoState({this.introTwoModelObj});

  IntroTwoModel? introTwoModelObj;

  @override
  List<Object?> get props => [
        introTwoModelObj,
      ];
  IntroTwoState copyWith({IntroTwoModel? introTwoModelObj}) {
    return IntroTwoState(
      introTwoModelObj: introTwoModelObj ?? this.introTwoModelObj,
    );
  }
}
