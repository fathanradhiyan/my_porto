import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/const/theme_data.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/widget/fade_in_transition.dart';
import 'package:provider/provider.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: FadeInTransition(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: moreTitle('Personal Info')),
              Divider(
                thickness: 1,
                color: ColorsConsts.flamingo,
              ),
              moreListTile('Email', 'fathanradhiyan@gmail.com', 0, context),
              moreListTile('DoB', 'April 29, 1998', 1, context),
              moreListTile('Phone', '(+62)812 9022 0757', 2, context),
              moreListTile('Address', 'Ciputat, Tangerang Selatan', 3, context),

              Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: moreTitle('User Settings')),
              Divider(
                thickness: 1,
                color: ColorsConsts.flamingo,
              ),
              ListTileSwitch(
                value: themeChange.darkTheme,
                leading: Icon(themeChange.darkTheme? Icons.light_mode : Icons.dark_mode, color: ColorsConsts.flamingo,),
                onChanged: (value) {
                  setState(() {
                    themeChange.darkTheme = value;
                  });
                },
                visualDensity: VisualDensity.comfortable,
                switchType: SwitchType.cupertino,
                switchActiveColor: ColorsConsts.cream,
                switchInactiveColor: ColorsConsts.licorice,
                title: Text(themeChange.darkTheme? 'Light Theme':'Dark Theme', style: GoogleFonts.poppins(color: Theme.of(context).primaryColor),),
              ),
              moreListTile('Logout', 'exit app', 4, context),
            ],
          ),
        ),
      ),
    );
  }

  List<IconData> _moreTileIcons = [
    Icons.email,
    Icons.cake,
    Icons.phone,
    Icons.weekend,
    Icons.exit_to_app_rounded
  ];

  Widget moreListTile(
      String title, String subtitle, int index, BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: (){},
          title: Text(
            title,
            style: GoogleFonts.poppins(color: Theme.of(context).primaryColor),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.poppins(color: Theme.of(context).primaryColor),
          ),
          leading: Icon(
            _moreTileIcons[index],
            color: ColorsConsts.flamingo,
          ),
        ),
      ),
    );
  }

  Widget moreTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title,
          style: GoogleFonts.raleway(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20)),
    );
  }
}
