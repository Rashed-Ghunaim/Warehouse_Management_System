
/// flutter:
///   fonts:
///    - family:  MyIcons
///      fonts:
///       - asset: fonts/MyIcons.ttf
///
/// 
/// * Font Awesome 5, Copyright (C) 2016 by Dave Gandy
///         Author:    Dave Gandy
///         License:   SIL (https://github.com/FortAwesome/Font-Awesome/blob/master/LICENSE.txt)
///         Homepage:  http://fortawesome.github.com/Font-Awesome/
///
import 'package:flutter/widgets.dart';

class MyIcons {
  

  static const _kFontFam = 'MyIcons';
  static const String? _kFontPkg = null;
  static const _kFontFamm = 'FF';

  static const IconData user = IconData(0xf007, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData down_open = IconData(0xe800, fontFamily: _kFontFamm, fontPackage: _kFontPkg);
}
