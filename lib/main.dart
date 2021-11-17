import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/const/theme_data.dart';
import 'package:my_porto/provider/academics_provider.dart';
import 'package:my_porto/provider/achievements_provider.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/provider/experiences_provider.dart';
import 'package:my_porto/provider/portfolio_provider.dart';
import 'package:my_porto/provider/text_changed_provider.dart';
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
          return MaterialApp(
            title: 'MyPorto',
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            home: BottomBarWidget(),
            debugShowCheckedModeBanner: false,
            //routes: {},
          );
        }));
  }
}

//https://assets2.lottiefiles.com/packages/lf20_havdkcpe.json link animation loading lottie
//https://assets2.lottiefiles.com/packages/lf20_qlwqp9xi.json link animation no data lottie
//https://assets2.lottiefiles.com/private_files/lf30_bn5winlb.json link animation no data dessert theme
//https://assets7.lottiefiles.com/packages/lf20_597nlu.json link animation no experience lottie
