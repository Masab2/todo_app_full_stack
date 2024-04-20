// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'Todo_List_Model.freezed.dart';
part 'Todo_List_Model.g.dart'; 

@freezed
class TodoListModel with _$TodoListModel {
  factory TodoListModel({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'Success') List<TodosList>? success,
  }) = _TodoListModel;

  factory TodoListModel.fromJson(Map<String, dynamic> json) =>
      _$TodoListModelFromJson(json);
}

@freezed
class TodosList with _$TodosList {
  factory TodosList({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'userId') @Default('') String userid,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'date') @Default('') String date,
    @JsonKey(name: 'createdAt') @Default('') String createdDate,
  }) = _TodosList;

  factory TodosList.fromJson(Map<String, dynamic> json) =>
      _$TodosListFromJson(json);
}
