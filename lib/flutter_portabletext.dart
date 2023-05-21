library flutter_portabletext;

import 'package:flutter/widgets.dart';
import 'package:flutter_portabletext/portable_text.dart';

// We need to process the JSON into a class.

// We need to create a default "template"

// we need people to customize default template

class PortableTextRichText extends StatefulWidget {
  const PortableTextRichText({
    required this.portableText,
    super.key,
  });

  final List<PortableText> portableText;

  @override
  State<PortableTextRichText> createState() => _PortableTextRichTextState();
}

class _PortableTextRichTextState extends State<PortableTextRichText> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
