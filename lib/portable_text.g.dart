// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portable_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortableText _$$_PortableTextFromJson(Map<String, dynamic> json) =>
    _$_PortableText(
      style: json['style'] as String,
      markDefs: (json['markDefs'] as List<dynamic>)
          .map((e) => MarkDef.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      key: json['_key'] as String,
      type: json['_type'] as String,
      level: json['level'] as int?,
      listItem: json['listItem'] as String?,
    );

Map<String, dynamic> _$$_PortableTextToJson(_$_PortableText instance) =>
    <String, dynamic>{
      'style': instance.style,
      'markDefs': instance.markDefs,
      'children': instance.children,
      '_key': instance.key,
      '_type': instance.type,
      'level': instance.level,
      'listItem': instance.listItem,
    };

_$_Child _$$_ChildFromJson(Map<String, dynamic> json) => _$_Child(
      type: json['type'] as String?,
      key: json['key'] as String?,
      text: json['text'] as String?,
      marks:
          (json['marks'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ChildToJson(_$_Child instance) => <String, dynamic>{
      'type': instance.type,
      'key': instance.key,
      'text': instance.text,
      'marks': instance.marks,
    };

_$_MarkDef _$$_MarkDefFromJson(Map<String, dynamic> json) => _$_MarkDef(
      type: json['_type'] as String,
      key: json['_key'] as String,
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$_MarkDefToJson(_$_MarkDef instance) =>
    <String, dynamic>{
      '_type': instance.type,
      '_key': instance.key,
      'href': instance.href,
    };
