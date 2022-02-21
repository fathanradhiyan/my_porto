import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/const/theme_data.dart';
import 'package:my_porto/provider/academics_provider.dart';
import 'package:my_porto/provider/achievements_provider.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/provider/experiences_provider.dart';
import 'package:my_porto/provider/portfolio_provider.dart';
import 'package:my_porto/provider/text_changed_provider.dart';
import 'package:my_porto/screen/sign_in_page.dart';
import 'package:my_porto/widget/bottom_bar_widget.dart';
import 'package:provider/provider.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();
  TextChangedProvider textChangedProvider = TextChangedProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  //set share preferences untuk theme
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) {
            return themeChangeProvider;
          }),
          // ChangeNotifierProvider(create: (_) {
          //   return textChangedProvider;
          // }),
          ChangeNotifierProvider(
            create: (_) => AchievementsProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => AcademicsProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ExperiencesProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => PortfolioProvider(),
          ),
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return GetMaterialApp(
            title: 'MyPorto',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            // home: BottomBarWidget(),
            home: SignInPage(),
            debugShowCheckedModeBanner: false,
            //routes: {},
          );
        }));
  }
}

