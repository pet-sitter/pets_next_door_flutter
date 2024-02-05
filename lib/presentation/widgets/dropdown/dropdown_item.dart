import 'package:flutter/material.dart';

class PndDropdownItem<T> extends PopupMenuItem<T> {
  PndDropdownItem({
    super.key,
    @override T? value,
    String? valueStr,
  }) : super(
          padding: EdgeInsets.all(0),
          height: 40,
          value: value,
          child: Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              valueStr ?? '',
            ),
          ),
        );
}
