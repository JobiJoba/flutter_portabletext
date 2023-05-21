class PortableText {
  String type;
  String key;
  String style;
  List<MarkDef> markDefs;
  List<Child> children;
  int? level;
  String? listItem;

  PortableText({
    required this.key,
    required this.markDefs,
    required this.children,
    this.style = "normal",
    this.type = "block",
    this.level,
    this.listItem,
  });

  PortableText copyWith({
    String? type,
    String? key,
    String? style,
    List<MarkDef>? markDefs,
    List<Child>? children,
    int? level,
    String? listItem,
  }) =>
      PortableText(
        type: type ?? this.type,
        key: key ?? this.key,
        style: style ?? this.style,
        markDefs: markDefs ?? this.markDefs,
        children: children ?? this.children,
        level: level ?? this.level,
        listItem: listItem ?? this.listItem,
      );
}

class Child {
  String type;
  String key;
  String text;
  List<String> marks;

  Child({
    required this.key,
    required this.text,
    required this.marks,
    this.type = "span",
  });

  Child copyWith({
    String? type,
    String? key,
    String? text,
    List<String>? marks,
  }) =>
      Child(
        type: type ?? this.type,
        key: key ?? this.key,
        text: text ?? this.text,
        marks: marks ?? this.marks,
      );
}

class MarkDef {
  String type;
  String key;
  String href;

  MarkDef({
    required this.type,
    required this.key,
    required this.href,
  });

  MarkDef copyWith({
    String? type,
    String? key,
    String? href,
  }) =>
      MarkDef(
        type: type ?? this.type,
        key: key ?? this.key,
        href: href ?? this.href,
      );
}
