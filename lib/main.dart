import 'package:aicook/theme/app_colors.dart';
import 'package:aicook/widgets/auth/auth_widget.dart';
import 'package:aicook/widgets/auth/splash_flow_widget.dart';
import 'package:aicook/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AICOOK DEMO',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryBackColorOne,
          titleTextStyle: TextStyle(
            color: AppColors.primaryAccentColorOne,
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.primaryBackColorOne,
          unselectedItemColor: AppColors.primaryAccentColorOne,
          selectedItemColor: AppColors.primaryAccentColorTwo,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/auth': (context) => const AuthWidget(),
        '/splash': (context) => const SplashFlow(),
        '/main_screen': (context) => const MainScreenWidget(),
      },
      initialRoute: '/splash',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('произошла ошибка навигации'),
            ),
          );
        });
      },
    );
  }
}
