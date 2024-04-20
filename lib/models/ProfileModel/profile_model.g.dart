// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelResponseImpl _$$ProfileModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileModelResponseImpl(
      status: json['Status'] as bool?,
      success: json['Success'] == null
          ? null
          : ProfileModel.fromJson(json['Success'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelResponseImplToJson(
        _$ProfileModelResponseImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Success': instance.success,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
