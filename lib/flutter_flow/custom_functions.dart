import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String digitFormat(int num) {
  // convert num into a string that is 3 digits long
  ++num;
  String numberText = '$num';
  if (num < 10) {
    return '00$numberText';
  } else if (num < 100) {
    return '0$numberText';
  }
  return numberText;
}

bool showMain(
  bool ascending,
  bool showList,
) {
  return !ascending && showList;
}

String heightFormatting(int heightDeci) {
  double heightIn = heightDeci * 3.937;

  // convert int to feet and inches
  String feet = (heightIn / 12).truncate().toString();
  String inches = (heightIn % 12).ceil().toString();
  String heightFin = feet == '0' ? '$inches inches' : '$feet\' ' + '$inches"';
  return heightFin;
}

int plusOne(int index) {
  // Add your function code here!
  return ++index;
}
