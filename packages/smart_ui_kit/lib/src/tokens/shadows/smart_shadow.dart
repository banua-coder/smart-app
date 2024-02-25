import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class SmartShadow {
  const SmartShadow._();

  static List<BoxShadow> card = [
    BoxShadow(
      blurRadius: 2.r,
      color: const Color(0x0A101828),
      offset: Offset(0, 1.h),
    ),
  ];

  static List<BoxShadow> cardDark = [
    BoxShadow(
      blurRadius: 2.r,
      color: const Color(0x2608080D),
      offset: Offset(0, 1.h),
    ),
  ];

  static List<BoxShadow> header = [
    BoxShadow(
      blurRadius: 4.r,
      color: const Color(0x053D4A5C),
      offset: Offset(0, 1.h),
    ),
    BoxShadow(
      blurRadius: 12.r,
      color: const Color(0x143D4A5C),
      offset: Offset(0, 4.h),
      spreadRadius: -2.r,
    ),
  ];

  static List<BoxShadow> headerDark = [
    BoxShadow(
      blurRadius: 4.r,
      color: const Color(0x1F08080D),
      offset: Offset(0, 1.h),
    ),
    BoxShadow(
      blurRadius: 12.r,
      color: const Color(0x3308080D),
      offset: Offset(0, 4.h),
      spreadRadius: -2.r,
    ),
  ];

  static List<BoxShadow> footer = [
    BoxShadow(
      blurRadius: 4.r,
      color: const Color(0x1A354050),
      offset: Offset(0, -1.h),
      spreadRadius: -2.r,
    ),
    BoxShadow(
      blurRadius: 8.r,
      color: const Color(0x1AACB6C3),
      offset: Offset(0, -6.h),
      spreadRadius: -2.r,
    ),
  ];

  static List<BoxShadow> footerDark = [
    BoxShadow(
      blurRadius: 2.r,
      color: const Color(0x1408080D),
      offset: Offset(0, -1.h),
      spreadRadius: -2.r,
    ),
    BoxShadow(
      blurRadius: 12.r,
      color: const Color(0x2408080D),
      offset: Offset(0, -6.h),
      spreadRadius: -2.r,
    ),
  ];

  static List<BoxShadow> modal = [
    BoxShadow(
      blurRadius: 8.r,
      color: const Color(0x14354050),
      offset: Offset(0, 2.h),
      spreadRadius: -4.r,
    ),
    BoxShadow(
      blurRadius: 24.r,
      color: const Color(0x0A354050),
      offset: Offset(0, 20.h),
      spreadRadius: -4.r,
    ),
  ];

  static List<BoxShadow> modalDark = [
    BoxShadow(
      blurRadius: 8.r,
      color: const Color(0x0F08080D),
      offset: Offset(0, 4.h),
      spreadRadius: -4.r,
    ),
    BoxShadow(
      blurRadius: 24.r,
      color: const Color(0x2908080D),
      offset: Offset(0, 24.h),
      spreadRadius: -4.r,
    ),
  ];
}
