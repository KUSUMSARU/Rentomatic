import 'package:flutter/material.dart';
import 'package:user/src/blocs/auth_bloc.dart';
import 'package:user/src/ui/pages/add_card.dart';
import 'package:user/src/ui/pages/add_payment_method.dart';
import 'package:user/src/ui/pages/free_room.dart';
import 'package:user/src/ui/pages/help.dart';
import 'package:user/src/ui/pages/home.dart';
import 'package:user/src/ui/pages/login.dart';
import 'package:user/src/ui/pages/payment.dart';
import 'package:user/src/ui/pages/select_issue.dart';
import 'package:user/src/ui/pages/settings.dart';
import 'package:user/src/ui/pages/your_trips.dart';

void main() => runApp(MyApp(
    AuthBloc(),
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: './',
      routes: {
        '/home': (context) => MyHomePage(title: 'Uber Clone'),
        '/': (context) => LoginPage(),
        '/payment': (context) => PaymentPage(),
        '/add_payment': (context) => AddPaymentMethodPage(),
        '/add_card': (context) => AddCardPage(),
        '/your_trip': (context) => YourTripPage(),
        '/select_issue': (context) => SelectIssuePage(),
        '/free_rides': (context) => FreeRidesPage(),
        '/help': (context) => HelpPage(),
        '/settings': (context) => SettingsPage(),
      },
    )));

class MyApp extends InheritedWidget {
  final AuthBloc authBloc;
  final Widget child;
  MyApp(this.authBloc, this.child) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static MyApp of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyApp);
  }
}
