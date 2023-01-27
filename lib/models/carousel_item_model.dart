import 'package:flutter/material.dart';

interface class HomeItemModel {
  final Widget text;
  final Widget image;

  HomeItemModel({
    required this.text,
    required this.image,
  });
}
