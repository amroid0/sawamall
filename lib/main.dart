import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sawamall/providers/bottom_nav_provider.dart';
import 'package:sawamall/providers/locale_provider.dart';
import 'package:sawamall/r.g.dart';
import 'package:sawamall/routes.dart';

import 'constants/app_theme.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
          providers: [
      ChangeNotifierProvider(
        create: (context) => AppLocale(),),
            ChangeNotifierProvider(
              create: (context) => BottomNavigationBarProvider(),)
    ],
        child: Consumer<AppLocale>(
            builder: (context, locale, child) {
              return MaterialApp(
                title: 'Flutter Demo',
                theme: themeData,
                locale: Provider.of<AppLocale>(context).locale,
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,

                initialRoute: '/',
                onGenerateRoute: RouteGenerator.generateRoute,
              );
            }));
  }

}
