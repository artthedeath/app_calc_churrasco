import 'package:app_calc_churrasco/ui/historic_page.dart';
import 'package:app_calc_churrasco/ui/home_page.dart';
import 'package:app_calc_churrasco/ui/meat_page.dart';
import 'package:app_calc_churrasco/ui/result_page.dart';
import 'package:app_calc_churrasco/ui/sideDish_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'meat': (context) => MeatPage(),
        'sideDish': (context) => SideDishPage(),
        'result': (context) => ResultPage(),
        'historic': (context) => HistoricPage()
      }));
}
