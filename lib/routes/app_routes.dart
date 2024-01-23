import 'package:flutter/material.dart';
import 'package:metarizz_assignment/presentation/search_screen/search_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_dark_screen/e_hadith_books_list_dark_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_popup_dark_screen/e_hadith_books_list_popup_dark_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_light_screen/e_hadith_books_list_light_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_pop_light_screen/e_hadith_books_list_pop_light_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_urdu_screen/e_hadith_books_list_urdu_screen.dart';
import 'package:metarizz_assignment/presentation/e_hadith_books_list_urdu_popup_screen/e_hadith_books_list_urdu_popup_screen.dart';
import 'package:metarizz_assignment/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchScreen = '/search_screen';

  static const String eHadithBooksListDarkScreen =
      '/e_hadith_books_list_dark_screen';

  static const String eHadithBooksListPopupDarkScreen =
      '/e_hadith_books_list_popup_dark_screen';

  static const String eHadithBooksListLightScreen =
      '/e_hadith_books_list_light_screen';

  static const String eHadithBooksListPopLightScreen =
      '/e_hadith_books_list_pop_light_screen';

  static const String eHadithBooksListUrduScreen =
      '/e_hadith_books_list_urdu_screen';

  static const String eHadithBooksListUrduPopupScreen =
      '/e_hadith_books_list_urdu_popup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    searchScreen: (context) => SearchScreen(),
    eHadithBooksListDarkScreen: (context) => EHadithBooksListDarkScreen(),
    eHadithBooksListPopupDarkScreen: (context) =>
        EHadithBooksListPopupDarkScreen(),
    eHadithBooksListLightScreen: (context) => EHadithBooksListLightScreen(),
    eHadithBooksListPopLightScreen: (context) =>
        EHadithBooksListPopLightScreen(),
    eHadithBooksListUrduScreen: (context) => EHadithBooksListUrduScreen(),
    eHadithBooksListUrduPopupScreen: (context) =>
        EHadithBooksListUrduPopupScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
