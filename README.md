## WIP

Render PortableText used in Sanity using Flutter.

![Demo](/demo.png "Demo")

## Features

Render the RichText used in [Sanity.io](www.sanity.io) following the [PortableText](https://github.com/portabletext/portabletext) specifications.

## Getting started

Install the package using

```
flutter pub add flutter_portabletext
```

## Usage

```dart
    final portableText = retreiveYourPortableTextField;
    ...
    SizedBox(
        width: double.infinity,
        child: PortableTextRichText(
        portableText: portableText,
        onTapLink: (value) => print(value),
        ),
    ),
```

## Additional information

If you want to change the values please update as followed.

```dart
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
```

Custom fields will arrive soon.
Breaking change might happens in following versions the project is still early on.
