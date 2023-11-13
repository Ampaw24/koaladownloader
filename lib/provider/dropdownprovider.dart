import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UIProvider extends ChangeNotifier {
  List<String> dropDownContent = [
    'Mp3',
    '144 Mp4',
    '360 Mp4',
    '480 Mp4',
    '720 Mp4',
    '1080 Mp4',
    '4K Mp4',
    '8K Mp4',
  ];
  late String _selectedItem = 'Mp3';

  String get selectedItem => _selectedItem;

  set selectedItem(String value) {
    _selectedItem = value;
  }
}
