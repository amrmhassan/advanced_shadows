<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This package will let you to add inner and outer shadows for the same widget.

## Features

1. Add inner shadows
1. Add out shadows  
1. Just wrap your widget with AdvancedShadow and **Voilà**

## Getting started
Add the following to your pubspec.yaml file.


```yaml
dependencies:
  advanced_shadows: 0.0.1
```

## Usage

Wrap any widget with AdvancedShadow widget. provide shadows!


```dart
AdvancedShadow(
  innerShadows: [
    BoxShadow(
      color:Colors.grey.withOpacity(.3),
      blurRadius:20,
    ),
  ],
  outerShadows: [
    BoxShadow(
      color:Colors.grey.withOpacity(.3),
      blurRadius: 20,
    ),
  ],
  child: Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: colorTheme.backGround,
      borderRadius: BorderRadius.circular(1000),
    ),
  ),
),
```

## Additional information

You can also use individual InnerShadow widget.  
Just wrap with InnerShadow