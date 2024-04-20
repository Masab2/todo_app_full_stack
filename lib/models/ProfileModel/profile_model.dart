// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModelResponse with _$ProfileModelResponse {
  const factory ProfileModelResponse({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'Success') ProfileModel? success,
  }) = _ProfileModelResponse;

  factory ProfileModelResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelResponseFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
    @JsonKey(name: 'updatedAt') @Default('') String updatedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
