// ignore_for_file: must_be_immutable

part of 'intro_three_bloc.dart';

/// Represents the state of IntroThree in the application.
class IntroThreeState extends Equatable {
  IntroThreeState({this.introThreeModelObj});

  IntroThreeModel? introThreeModelObj;

  @override
  List<Object?> get props => [
        introThreeModelObj,
      ];
  IntroThreeState copyWith({IntroThreeModel? introThreeModelObj}) {
    return IntroThreeState(
      introThreeModelObj: introThreeModelObj ?? this.introThreeModelObj,
    );
  }
}
