
import 'package:flutter/material.dart';
import 'package:youtube_music_clone/user/features/splash/splash.dart';

class RouteGenerator {
  static const String HomePageRoute = '/home_page';
  static const String LoginRoute = '/login';
  static const String SignUpRoute = '/signup';
  static const String SettingsRoute = '/settings';
  static const String VerifyPhoneNumberRoute = '/verify_phone_number_page';
  static const String CurrencyRoute = '/currency_page';
  static const String OrderListRoute = 'order_list_page';
  static const String PlaceOrderRoute = '/place_order';
  static const String ProductListRoute = '/product_list_page';
  static const String ProductDetailsRoute = '/product_details_page';
  static const String CartRoute = '/cart_page';
  static const String TablesListRoute = '/tables_list_page';
  static const String AddTableRoute = '/add_table_page';
  static const String OrderDetailsRoute = '/order_detail_page';
  static const String TableListRoute = '/table_list_page';
  static const String VendingMachineListRoute = '/vending_machine_list_page';
  static const String PrintQRRoute = '/print_qr_page';
  static const String ProfileRoute = '/profile_page';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case HomePageRoute:
        return MaterialPageRoute(
          builder: (_) => SplashScreenPage(),
        );
     
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
