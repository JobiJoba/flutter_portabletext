// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portable_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortableText _$PortableTextFromJson(Map<String, dynamic> json) {
  return _PortableText.fromJson(json);
}

/// @nodoc
mixin _$PortableText {
  String get style => throw _privateConstructorUsedError;
  List<MarkDef> get markDefs => throw _privateConstructorUsedError;
  List<Child> get children => throw _privateConstructorUsedError;
  @JsonKey(name: '_key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: '_type')
  String get type => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get listItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortableTextCopyWith<PortableText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortableTextCopyWith<$Res> {
  factory $PortableTextCopyWith(
          PortableText value, $Res Function(PortableText) then) =
      _$PortableTextCopyWithImpl<$Res, PortableText>;
  @useResult
  $Res call(
      {String style,
      List<MarkDef> markDefs,
      List<Child> children,
      @JsonKey(name: '_key') String key,
      @JsonKey(name: '_type') String type,
      int? level,
      String? listItem});
}

/// @nodoc
class _$PortableTextCopyWithImpl<$Res, $Val extends PortableText>
    implements $PortableTextCopyWith<$Res> {
  _$PortableTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? markDefs = null,
    Object? children = null,
    Object? key = null,
    Object? type = null,
    Object? level = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      markDefs: null == markDefs
          ? _value.markDefs
          : markDefs // ignore: cast_nullable_to_non_nullable
              as List<MarkDef>,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      listItem: freezed == listItem
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortableTextCopyWith<$Res>
    implements $PortableTextCopyWith<$Res> {
  factory _$$_PortableTextCopyWith(
          _$_PortableText value, $Res Function(_$_PortableText) then) =
      __$$_PortableTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String style,
      List<MarkDef> markDefs,
      List<Child> children,
      @JsonKey(name: '_key') String key,
      @JsonKey(name: '_type') String type,
      int? level,
      String? listItem});
}

/// @nodoc
class __$$_PortableTextCopyWithImpl<$Res>
    extends _$PortableTextCopyWithImpl<$Res, _$_PortableText>
    implements _$$_PortableTextCopyWith<$Res> {
  __$$_PortableTextCopyWithImpl(
      _$_PortableText _value, $Res Function(_$_PortableText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? markDefs = null,
    Object? children = null,
    Object? key = null,
    Object? type = null,
    Object? level = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_$_PortableText(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      markDefs: null == markDefs
          ? _value._markDefs
          : markDefs // ignore: cast_nullable_to_non_nullable
              as List<MarkDef>,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Child>,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      listItem: freezed == listItem
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortableText implements _PortableText {
  const _$_PortableText(
      {required this.style,
      required final List<MarkDef> markDefs,
      required final List<Child> children,
      @JsonKey(name: '_key') required this.key,
      @JsonKey(name: '_type') required this.type,
      this.level,
      this.listItem})
      : _markDefs = markDefs,
        _children = children;

  factory _$_PortableText.fromJson(Map<String, dynamic> json) =>
      _$$_PortableTextFromJson(json);

  @override
  final String style;
  final List<MarkDef> _markDefs;
  @override
  List<MarkDef> get markDefs {
    if (_markDefs is EqualUnmodifiableListView) return _markDefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markDefs);
  }

  final List<Child> _children;
  @override
  List<Child> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey(name: '_key')
  final String key;
  @override
  @JsonKey(name: '_type')
  final String type;
  @override
  final int? level;
  @override
  final String? listItem;

  @override
  String toString() {
    return 'PortableText(style: $style, markDefs: $markDefs, children: $children, key: $key, type: $type, level: $level, listItem: $listItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortableText &&
            (identical(other.style, style) || other.style == style) &&
            const DeepCollectionEquality().equals(other._markDefs, _markDefs) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.listItem, listItem) ||
                other.listItem == listItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      style,
      const DeepCollectionEquality().hash(_markDefs),
      const DeepCollectionEquality().hash(_children),
      key,
      type,
      level,
      listItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortableTextCopyWith<_$_PortableText> get copyWith =>
      __$$_PortableTextCopyWithImpl<_$_PortableText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortableTextToJson(
      this,
    );
  }
}

abstract class _PortableText implements PortableText {
  const factory _PortableText(
      {required final String style,
      required final List<MarkDef> markDefs,
      required final List<Child> children,
      @JsonKey(name: '_key') required final String key,
      @JsonKey(name: '_type') required final String type,
      final int? level,
      final String? listItem}) = _$_PortableText;

  factory _PortableText.fromJson(Map<String, dynamic> json) =
      _$_PortableText.fromJson;

  @override
  String get style;
  @override
  List<MarkDef> get markDefs;
  @override
  List<Child> get children;
  @override
  @JsonKey(name: '_key')
  String get key;
  @override
  @JsonKey(name: '_type')
  String get type;
  @override
  int? get level;
  @override
  String? get listItem;
  @override
  @JsonKey(ignore: true)
  _$$_PortableTextCopyWith<_$_PortableText> get copyWith =>
      throw _privateConstructorUsedError;
}

Child _$ChildFromJson(Map<String, dynamic> json) {
  return _Child.fromJson(json);
}

/// @nodoc
mixin _$Child {
  String? get type => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<String>? get marks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildCopyWith<Child> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildCopyWith<$Res> {
  factory $ChildCopyWith(Child value, $Res Function(Child) then) =
      _$ChildCopyWithImpl<$Res, Child>;
  @useResult
  $Res call({String? type, String? key, String? text, List<String>? marks});
}

/// @nodoc
class _$ChildCopyWithImpl<$Res, $Val extends Child>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? key = freezed,
    Object? text = freezed,
    Object? marks = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$$_ChildCopyWith(_$_Child value, $Res Function(_$_Child) then) =
      __$$_ChildCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? key, String? text, List<String>? marks});
}

/// @nodoc
class __$$_ChildCopyWithImpl<$Res> extends _$ChildCopyWithImpl<$Res, _$_Child>
    implements _$$_ChildCopyWith<$Res> {
  __$$_ChildCopyWithImpl(_$_Child _value, $Res Function(_$_Child) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? key = freezed,
    Object? text = freezed,
    Object? marks = freezed,
  }) {
    return _then(_$_Child(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value._marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Child implements _Child {
  const _$_Child({this.type, this.key, this.text, final List<String>? marks})
      : _marks = marks;

  factory _$_Child.fromJson(Map<String, dynamic> json) =>
      _$$_ChildFromJson(json);

  @override
  final String? type;
  @override
  final String? key;
  @override
  final String? text;
  final List<String>? _marks;
  @override
  List<String>? get marks {
    final value = _marks;
    if (value == null) return null;
    if (_marks is EqualUnmodifiableListView) return _marks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Child(type: $type, key: $key, text: $text, marks: $marks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Child &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._marks, _marks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, key, text,
      const DeepCollectionEquality().hash(_marks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChildCopyWith<_$_Child> get copyWith =>
      __$$_ChildCopyWithImpl<_$_Child>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChildToJson(
      this,
    );
  }
}

abstract class _Child implements Child {
  const factory _Child(
      {final String? type,
      final String? key,
      final String? text,
      final List<String>? marks}) = _$_Child;

  factory _Child.fromJson(Map<String, dynamic> json) = _$_Child.fromJson;

  @override
  String? get type;
  @override
  String? get key;
  @override
  String? get text;
  @override
  List<String>? get marks;
  @override
  @JsonKey(ignore: true)
  _$$_ChildCopyWith<_$_Child> get copyWith =>
      throw _privateConstructorUsedError;
}

MarkDef _$MarkDefFromJson(Map<String, dynamic> json) {
  return _MarkDef.fromJson(json);
}

/// @nodoc
mixin _$MarkDef {
  @JsonKey(name: '_type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: '_key')
  String get key => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkDefCopyWith<MarkDef> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkDefCopyWith<$Res> {
  factory $MarkDefCopyWith(MarkDef value, $Res Function(MarkDef) then) =
      _$MarkDefCopyWithImpl<$Res, MarkDef>;
  @useResult
  $Res call(
      {@JsonKey(name: '_type') String type,
      @JsonKey(name: '_key') String key,
      String? href});
}

/// @nodoc
class _$MarkDefCopyWithImpl<$Res, $Val extends MarkDef>
    implements $MarkDefCopyWith<$Res> {
  _$MarkDefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? key = null,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarkDefCopyWith<$Res> implements $MarkDefCopyWith<$Res> {
  factory _$$_MarkDefCopyWith(
          _$_MarkDef value, $Res Function(_$_MarkDef) then) =
      __$$_MarkDefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_type') String type,
      @JsonKey(name: '_key') String key,
      String? href});
}

/// @nodoc
class __$$_MarkDefCopyWithImpl<$Res>
    extends _$MarkDefCopyWithImpl<$Res, _$_MarkDef>
    implements _$$_MarkDefCopyWith<$Res> {
  __$$_MarkDefCopyWithImpl(_$_MarkDef _value, $Res Function(_$_MarkDef) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? key = null,
    Object? href = freezed,
  }) {
    return _then(_$_MarkDef(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarkDef implements _MarkDef {
  const _$_MarkDef(
      {@JsonKey(name: '_type') required this.type,
      @JsonKey(name: '_key') required this.key,
      this.href});

  factory _$_MarkDef.fromJson(Map<String, dynamic> json) =>
      _$$_MarkDefFromJson(json);

  @override
  @JsonKey(name: '_type')
  final String type;
  @override
  @JsonKey(name: '_key')
  final String key;
  @override
  final String? href;

  @override
  String toString() {
    return 'MarkDef(type: $type, key: $key, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkDef &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, key, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkDefCopyWith<_$_MarkDef> get copyWith =>
      __$$_MarkDefCopyWithImpl<_$_MarkDef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkDefToJson(
      this,
    );
  }
}

abstract class _MarkDef implements MarkDef {
  const factory _MarkDef(
      {@JsonKey(name: '_type') required final String type,
      @JsonKey(name: '_key') required final String key,
      final String? href}) = _$_MarkDef;

  factory _MarkDef.fromJson(Map<String, dynamic> json) = _$_MarkDef.fromJson;

  @override
  @JsonKey(name: '_type')
  String get type;
  @override
  @JsonKey(name: '_key')
  String get key;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_MarkDefCopyWith<_$_MarkDef> get copyWith =>
      throw _privateConstructorUsedError;
}
