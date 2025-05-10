import 'package:flutter/material.dart' show Icon;

class LicCardModel {
  final Icon icon;
  final String? title;
  final String? base;
  final String? superscript;

  const LicCardModel({
    this.title,
    required this.icon,
    this.base,
    this.superscript,
  });
}