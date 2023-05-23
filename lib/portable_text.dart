// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'portable_text.g.dart';
part 'portable_text.freezed.dart';

@freezed
class PortableText with _$PortableText {
  const factory PortableText({
    required String style,
    required List<MarkDef> markDefs,
    required List<Child> children,
    @JsonKey(name: '_key') required String key,
    @JsonKey(name: '_type') required String type,
    int? level,
    String? listItem,
  }) = _PortableText;

  factory PortableText.fromJson(Map<String, Object?> json) =>
      _$PortableTextFromJson(json);
}

@freezed
class Child with _$Child {
  const factory Child({
    String? type,
    String? key,
    String? text,
    List<String>? marks,
  }) = _Child;

  factory Child.fromJson(Map<String, Object?> json) => _$ChildFromJson(json);
}

@freezed
class MarkDef with _$MarkDef {
  const factory MarkDef({
    @JsonKey(name: '_type') required String type,
    @JsonKey(name: '_key') required String key,
    String? href,
  }) = _MarkDef;
  factory MarkDef.fromJson(Map<String, Object?> json) =>
      _$MarkDefFromJson(json);
}
