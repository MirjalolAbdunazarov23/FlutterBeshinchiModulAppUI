import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get mediumText {
    return GoogleFonts.poppins(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);
  }

  static TextStyle mediumTextCoco() {
    return const TextStyle(
        fontFamily: 'Coco',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }
}

class AppImage {
  static const String _asos = 'assets/image/DoctorPage/';
  static const String doctor = '${_asos}Doctor1.png';
  static const String doctor1 = '${_asos}Doctor.png';
  static const String doctor2 = '${_asos}Doctor2.png';
  static const String doctor3 = '${_asos}Doctor3.png';
  static const String doctor4 = '${_asos}Doctor4.png';
}
