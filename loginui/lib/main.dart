import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:loginui/edit_profile.dart';
import 'package:loginui/explore.dart';
import 'package:loginui/forget_password.dart';
import 'package:loginui/homepage.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/notifications.dart';
import 'package:loginui/profile.dart';
import 'package:loginui/profile_main.dart';
import 'package:loginui/settings.dart';
import 'sign_in.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Ứng dụng của tôi',
    home: main_profile(),
  ));
}
