import 'package:flutter/cupertino.dart';

extension SizeExtension on int{
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}