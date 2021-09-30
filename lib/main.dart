import 'package:flutter/material.dart';
import 'package:projetofeirinha/modules/home/homepage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {"/home": (context) => HomePage()},
      title: "Projeto Feirinha",
    ));
