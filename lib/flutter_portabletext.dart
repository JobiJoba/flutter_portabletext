library flutter_portabletext;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portabletext/portable_text.dart';

class PortableTextRichText extends StatefulWidget {
  const PortableTextRichText({
    required this.portableText,
    this.onTapLink,
    this.mapStyle = const {
      'h1': TextStyle(fontSize: 24),
      'h2': TextStyle(fontSize: 22),
      'h3': TextStyle(fontSize: 20),
      'h4': TextStyle(fontSize: 18),
      'h5': TextStyle(fontSize: 16),
      'h6': TextStyle(fontSize: 14),
      'blockquote': TextStyle(fontSize: 12),
    },
    this.quoteStyle = const TextStyle(
      fontSize: 12,
    ),
    this.normalStyle = const TextStyle(fontSize: 10),
    this.externalLinkColor = const Color(0xFF0645AD),
    this.codeBackgroundColor = Colors.grey,
    this.externalLinkDecoration = TextDecoration.underline,
    super.key,
  });

  final List<PortableText> portableText;
  final Map<String, TextStyle> mapStyle;
  final TextStyle normalStyle;
  final TextStyle quoteStyle;
  final Color externalLinkColor;
  final Color codeBackgroundColor;
  final TextDecoration externalLinkDecoration;

  final void Function(String? value)? onTapLink;

  @override
  State<PortableTextRichText> createState() => _PortableTextRichTextState();
}

class _PortableTextRichTextState extends State<PortableTextRichText> {
  TextStyle correctStyle(TextStyle thisTextStyle, List<String>? listStyle,
      List<MarkDef> markDefs) {
    if (listStyle == null) {
      return thisTextStyle;
    }
    TextStyle newStyle = thisTextStyle;

    for (var style in listStyle) {
      if (style.contains('em')) {
        newStyle = newStyle.copyWith(fontStyle: FontStyle.italic);
      } else if (style.contains('strong')) {
        newStyle = newStyle.copyWith(fontWeight: FontWeight.bold);
      } else if (style.contains('underline')) {
        newStyle = newStyle.copyWith(decoration: TextDecoration.underline);
      } else if (style.contains("code")) {
        newStyle =
            newStyle.copyWith(backgroundColor: widget.codeBackgroundColor);
      } else if (style.contains('strike-through')) {
        newStyle = newStyle.copyWith(decoration: TextDecoration.lineThrough);
      }
    }

    if (markDefs.isNotEmpty) {
      for (var markDef in markDefs) {
        if (markDef.type == "link" && listStyle.contains(markDef.key)) {
          newStyle = newStyle.copyWith(
              color: widget.externalLinkColor,
              decoration: widget.externalLinkDecoration,
              decorationColor: widget.externalLinkColor);
        }
      }
    }

    return newStyle;
  }

  @override
  Widget build(BuildContext context) {
    int number = 1;
    Iterable<Widget> simpleVersion = widget.portableText.map((portableText) {
      Widget result = const SizedBox();

      if (portableText.style != "normal") {
        final List<TextSpan> textSpans = [];

        for (var child in portableText.children) {
          void Function()? onTap = child.marks == null
              ? null
              : generateOnTapForLink(
                  portableText.markDefs, child.marks!, widget.onTapLink);

          textSpans.add(TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: child.text,
              style: correctStyle(widget.mapStyle[portableText.style]!,
                  child.marks, portableText.markDefs)));
        }

        if (portableText.style == "blockquote") {
          result = Container(
              margin: const EdgeInsets.only(left: 8),
              padding: const EdgeInsets.only(left: 8),
              decoration: const BoxDecoration(
                  border:
                      Border(left: (BorderSide(color: Colors.grey, width: 2)))),
              child: Text.rich(TextSpan(
                children: textSpans,
              )));
        } else {
          // Not sure this is good here
          result = Text.rich(TextSpan(
            children: textSpans,
          ));
        }

        number = 1;
      } else if (portableText.style == "normal") {
        final List<TextSpan> textSpans = [];
        if (portableText.listItem != null &&
            portableText.listItem == "bullet") {
          for (var child in portableText.children) {
            void Function()? onTap = child.marks == null
                ? null
                : generateOnTapForLink(
                    portableText.markDefs, child.marks!, widget.onTapLink);

            textSpans.add(TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onTap,
                text: "- ${child.text}",
                style: correctStyle(
                    widget.normalStyle, child.marks, portableText.markDefs)));
          }
          result = Text.rich(TextSpan(
            children: textSpans,
            style: widget.normalStyle,
          ));
        } else if (portableText.listItem != null &&
            portableText.listItem == "number") {
          for (var child in portableText.children) {
            void Function()? onTap = child.marks == null
                ? null
                : generateOnTapForLink(
                    portableText.markDefs, child.marks!, widget.onTapLink);

            textSpans.add(TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onTap,
                text: "$number. ${child.text}",
                style: correctStyle(
                    widget.normalStyle, child.marks, portableText.markDefs)));
            number++;
          }
          result = Text.rich(TextSpan(
            children: textSpans,
            style: widget.normalStyle,
          ));
        } else {
          for (var child in portableText.children) {
            void Function()? onTap = child.marks == null
                ? null
                : generateOnTapForLink(
                    portableText.markDefs, child.marks!, widget.onTapLink);

            textSpans.add(TextSpan(
                recognizer: TapGestureRecognizer()..onTap = onTap,
                text: child.text,
                style: correctStyle(
                    widget.normalStyle, child.marks, portableText.markDefs)));
          }

          result = Text.rich(TextSpan(
            children: textSpans,
            style: widget.normalStyle,
          ));
          number = 1;
        }
      }

      return result;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: simpleVersion.toList(),
    );
  }
}

void Function()? generateOnTapForLink(List<MarkDef> markDefs,
    List<String> marks, void Function(String value)? onTapLink) {
  void Function()? onTap;

  for (var markDef in markDefs) {
    if (marks.contains(markDef.key)) {
      onTap = () => onTapLink != null ? onTapLink(markDef.href!) : null;
    }
  }

  return onTap;
}
