import 'package:flutter/material.dart';

Widget buildBarButton({title, onTap, selected}) {
  return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Text(title, style: selected),
      ),
      onTap: onTap);
}
