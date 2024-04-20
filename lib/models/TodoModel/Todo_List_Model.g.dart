// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Todo_List_Model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListModelImpl _$$TodoListModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoListModelImpl(
      status: json['Status'] as bool?,
      success: (json['Success'] as List<dynamic>?)
          ?.map((e) => TodosList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoListModelImplToJson(_$TodoListModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.success,
    };

_$TodosListImpl _$$TodosListImplFromJson(Map<String, dynamic> json) =>
    _$TodosListImpl(
      id: json['_id'] as String? ?? '',
      userid: json['userId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      date: json['date'] as String? ?? '',
      createdDate: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$TodosListImplToJson(_$TodosListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userid,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'createdAt': instance.createdDate,
    };
