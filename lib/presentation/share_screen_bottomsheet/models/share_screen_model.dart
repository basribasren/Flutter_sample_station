// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [share_screen_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ShareScreenModel extends Equatable {
  ShareScreenModel() {}

  ShareScreenModel copyWith() {
    return ShareScreenModel();
  }

  @override
  List<Object?> get props => [];
}
