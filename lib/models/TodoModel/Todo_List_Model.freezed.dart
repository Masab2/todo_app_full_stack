// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Todo_List_Model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoListModel _$TodoListModelFromJson(Map<String, dynamic> json) {
  return _TodoListModel.fromJson(json);
}

/// @nodoc
mixin _$TodoListModel {
  @JsonKey(name: 'Status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  List<TodosList>? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoListModelCopyWith<TodoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListModelCopyWith<$Res> {
  factory $TodoListModelCopyWith(
          TodoListModel value, $Res Function(TodoListModel) then) =
      _$TodoListModelCopyWithImpl<$Res, TodoListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'Success') List<TodosList>? success});
}

/// @nodoc
class _$TodoListModelCopyWithImpl<$Res, $Val extends TodoListModel>
    implements $TodoListModelCopyWith<$Res> {
  _$TodoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<TodosList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListModelImplCopyWith<$Res>
    implements $TodoListModelCopyWith<$Res> {
  factory _$$TodoListModelImplCopyWith(
          _$TodoListModelImpl value, $Res Function(_$TodoListModelImpl) then) =
      __$$TodoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'Success') List<TodosList>? success});
}

/// @nodoc
class __$$TodoListModelImplCopyWithImpl<$Res>
    extends _$TodoListModelCopyWithImpl<$Res, _$TodoListModelImpl>
    implements _$$TodoListModelImplCopyWith<$Res> {
  __$$TodoListModelImplCopyWithImpl(
      _$TodoListModelImpl _value, $Res Function(_$TodoListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? success = freezed,
  }) {
    return _then(_$TodoListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      success: freezed == success
          ? _value._success
          : success // ignore: cast_nullable_to_non_nullable
              as List<TodosList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoListModelImpl implements _TodoListModel {
  _$TodoListModelImpl(
      {@JsonKey(name: 'Status') this.status,
      @JsonKey(name: 'Success') final List<TodosList>? success})
      : _success = success;

  factory _$TodoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoListModelImplFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final bool? status;
  final List<TodosList>? _success;
  @override
  @JsonKey(name: 'Success')
  List<TodosList>? get success {
    final value = _success;
    if (value == null) return null;
    if (_success is EqualUnmodifiableListView) return _success;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoListModel(status: $status, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._success, _success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListModelImplCopyWith<_$TodoListModelImpl> get copyWith =>
      __$$TodoListModelImplCopyWithImpl<_$TodoListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListModelImplToJson(
      this,
    );
  }
}

abstract class _TodoListModel implements TodoListModel {
  factory _TodoListModel(
          {@JsonKey(name: 'Status') final bool? status,
          @JsonKey(name: 'Success') final List<TodosList>? success}) =
      _$TodoListModelImpl;

  factory _TodoListModel.fromJson(Map<String, dynamic> json) =
      _$TodoListModelImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  bool? get status;
  @override
  @JsonKey(name: 'Success')
  List<TodosList>? get success;
  @override
  @JsonKey(ignore: true)
  _$$TodoListModelImplCopyWith<_$TodoListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodosList _$TodosListFromJson(Map<String, dynamic> json) {
  return _TodosList.fromJson(json);
}

/// @nodoc
mixin _$TodosList {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userid => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosListCopyWith<TodosList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosListCopyWith<$Res> {
  factory $TodosListCopyWith(TodosList value, $Res Function(TodosList) then) =
      _$TodosListCopyWithImpl<$Res, TodosList>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'userId') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'createdAt') String createdDate});
}

/// @nodoc
class _$TodosListCopyWithImpl<$Res, $Val extends TodosList>
    implements $TodosListCopyWith<$Res> {
  _$TodosListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userid = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosListImplCopyWith<$Res>
    implements $TodosListCopyWith<$Res> {
  factory _$$TodosListImplCopyWith(
          _$TodosListImpl value, $Res Function(_$TodosListImpl) then) =
      __$$TodosListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'userId') String userid,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'createdAt') String createdDate});
}

/// @nodoc
class __$$TodosListImplCopyWithImpl<$Res>
    extends _$TodosListCopyWithImpl<$Res, _$TodosListImpl>
    implements _$$TodosListImplCopyWith<$Res> {
  __$$TodosListImplCopyWithImpl(
      _$TodosListImpl _value, $Res Function(_$TodosListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userid = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? createdDate = null,
  }) {
    return _then(_$TodosListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodosListImpl implements _TodosList {
  _$TodosListImpl(
      {@JsonKey(name: '_id') this.id = '',
      @JsonKey(name: 'userId') this.userid = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'createdAt') this.createdDate = ''});

  factory _$TodosListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodosListImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'userId')
  final String userid;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'createdAt')
  final String createdDate;

  @override
  String toString() {
    return 'TodosList(id: $id, userid: $userid, title: $title, description: $description, date: $date, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userid, title, description, date, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosListImplCopyWith<_$TodosListImpl> get copyWith =>
      __$$TodosListImplCopyWithImpl<_$TodosListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodosListImplToJson(
      this,
    );
  }
}

abstract class _TodosList implements TodosList {
  factory _TodosList(
      {@JsonKey(name: '_id') final String id,
      @JsonKey(name: 'userId') final String userid,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'date') final String date,
      @JsonKey(name: 'createdAt') final String createdDate}) = _$TodosListImpl;

  factory _TodosList.fromJson(Map<String, dynamic> json) =
      _$TodosListImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'userId')
  String get userid;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'createdAt')
  String get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$TodosListImplCopyWith<_$TodosListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
