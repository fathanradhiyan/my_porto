import 'package:backdrop/backdrop.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/const/colors.dart';
import 'package:my_porto/models/experiences_model.dart';
import 'package:my_porto/provider/dark_theme_provider.dart';
import 'package:my_porto/provider/experiences_provider.dart';
import 'package:my_porto/screen/experience_empty.dart';
import 'package:my_porto/widget/back_layer_menu.dart';
import 'package:my_porto/widget/custom_refresh_page.dart';
import 'package:my_porto/widget/experience_card_widget.dart';
import 'package:my_porto/widget/fade_in_transition.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _carouselImages = [
    'assets/images/carousel_1.png',
    'assets/images/carousel_2.png',
    'assets/images/carousel_3.png',
    'assets/images/carousel_4.png',
    'assets/images/carousel_5.png',
    'assets/images/carousel_6.png',
    'assets/images/carousel_7.png',
    'assets/images/carousel_8.jpg',
  ];

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    final experienceProviders = Provider.of<ExperiencesProvider>(context);
    List<ExperiencesModel> experienceLists = experienceProviders.experiences;

    int _current = 0;
    final List<Widget> imageSliders = _carouselImages
        .map((item) => Container(
      // margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 1000),
              //positioned untuk filter gelap
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 20.0),
                ),
              ),
            ],
          )),
    ))
        .toList();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackdropScaffold(
        frontLayerBorderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero),
        headerHeight: size.height * 0.10,
        appBar: BackdropAppBar(
          title: Align(
            alignment: Alignment.center,
            child: Image(
              height: 100,
              image: AssetImage(themeChange.darkTheme
                  ? 'assets/images/logo_dark.png'
                  : 'assets/images/logo_light.png'),
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 2,
          leading: BackdropToggleButton(
            icon: AnimatedIcons.close_menu,
            color: Theme.of(context).textSelectionColor,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                iconSize: 15,
                padding: EdgeInsets.all(10),
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Theme.of(context).textSelectionColor,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundImage: NetworkImage(
                      'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg',
                    ),
                  ),
                ))
          ],
        ),
        stickyFrontLayer: true,
        frontLayer: CustomRefreshPage(
          child: FadeInTransition(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: imageSliders,
                      carouselController: _controller,
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      // boxFit: BoxFit.fill,
                      // autoplay: true,
                      // animationCurve: Curves.fastOutSlowIn,
                      // animationDuration: Duration(milliseconds: 1000),
                      // dotSize: 5.0,
                      // dotIncreasedColor: ColorsConsts.flamingo,
                      // dotBgColor: Theme.of(context)
                      //     .scaffoldBackgroundColor
                      //     .withOpacity(0.2),
                      // dotPosition: DotPosition.bottomCenter,
                      // // dotVerticalPadding: 10.0,
                      // showIndicator: true,
                      // indicatorBgPadding: 5.0,
                      // images: [
                      //   ExactAssetImage(_carouselImages[0]),
                      //   ExactAssetImage(_carouselImages[1]),
                      //   ExactAssetImage(_carouselImages[2]),
                      //   ExactAssetImage(_carouselImages[3]),
                      //   ExactAssetImage(_carouselImages[4]),
                      //   ExactAssetImage(_carouselImages[5]),
                      //   ExactAssetImage(_carouselImages[6]),
                      //   ExactAssetImage(_carouselImages[7]),
                      // ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Portfolio',
                          style: GoogleFonts.pacifico(
                            color: ColorsConsts.flamingo,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Muhammad Fathan Radhiyan'.toUpperCase(),
                          style: GoogleFonts.lato(
                            color: Theme.of(context).textSelectionColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mobile Developer',
                          style: GoogleFonts.raleway(
                            color: ColorsConsts.flamingo,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(2, 0, 0, 5),
                              child: Text('Experiences',
                                  style: GoogleFonts.raleway(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            experienceLists.isEmpty
                                ? ExperienceEmpty()
                                : ListView(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    children: List.generate(experienceLists.length,
                                        (index) {
                                      return ChangeNotifierProvider.value(
                                        value: experienceLists[index],
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: ExperienceCardWidget(),
                                        ),
                                      );
                                    }),
                                  )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        backLayer: BackLayerMenu(),
      ),
    );
  }
}
