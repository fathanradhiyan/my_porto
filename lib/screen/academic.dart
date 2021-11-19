import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/models/academics_model.dart';
import 'package:my_porto/provider/academics_provider.dart';
import 'package:my_porto/screen/empty_page.dart';
import 'package:my_porto/widget/academic_card_widget.dart';
import 'package:my_porto/widget/custom_refresh_page.dart';
import 'package:provider/provider.dart';

class Academic extends StatefulWidget {
  @override
  _AcademicState createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  Widget build(BuildContext context) {
    // final textChanged = Provider.of<TextChangedProvider>(context);
    final academicProviders = Provider.of<AcademicsProvider>(context);
    List<AcademicsModel> academicLists = academicProviders.academics;
    return academicLists.isEmpty
        ? Scaffold(
            body: EmptyPage(),
          )
        : Scaffold(
            appBar: AppBar(
              elevation: 3,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(
                'Academic',
                style: GoogleFonts.mcLaren(
                    color: Theme.of(context).textSelectionColor),
              ),
            ),
            body: CustomRefreshPage(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(academicLists.length, (index) {
                    return ChangeNotifierProvider.value(
                      value: academicLists[index],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                        child: AcademicCardWidget(),
                      ),
                    );
                  }),
                ),
              ),
            ));
  }
}

// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Padding(
//       padding: const EdgeInsets.only(
//         top: 10,
//         right: 20,
//         left: 20,
//       ),
//       child: Container(
//         height: 250.0,
//         width: double.infinity,
//         child: Carousel(
//             boxFit: BoxFit.fill,
//             autoplay: true,
//             animationCurve: Curves.fastOutSlowIn,
//             animationDuration: Duration(milliseconds: 1000),
//             dotSize: 5.0,
//             dotIncreasedColor: ColorsConsts.flamingo,
//             dotBgColor: Colors.black.withOpacity(0.2),
//             dotPosition: DotPosition.bottomCenter,
//             // dotVerticalPadding: 10.0,
//             showIndicator: true,
//             indicatorBgPadding: 5.0,
//             images:
//             [
//               NetworkImage(_carouselImages[0]),
//               NetworkImage(_carouselImages[1]),
//               NetworkImage(_carouselImages[2]),
//               NetworkImage(_carouselImages[3]),
//             ]
//             // onImageChange: (value) {
//             //   setState(() {
//             //     textChanged = value;
//             //   });
//             // },
//             ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//               'academyGrade',
//               // academicAttributes.academyGrade,
//               style: GoogleFonts.raleway(
//                 color: Theme.of(context).textSelectionColor,
//               ),
//             ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Text(
//               'Academy Name'.toUpperCase(),
//               // academicAttributes.academyName.toUpperCase(),
//               style: GoogleFonts.lato(
//                   color: Theme.of(context).textSelectionColor,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600),
//             ),
//           ),
//           Text(
//             'Degree',
//             // academicAttributes.academyDegree,
//             style: GoogleFonts.raleway(
//                 color: Theme.of(context).textSelectionColor,
//                 fontSize: 14),
//           ),
//           Text(
//             'Graduate year : 2021',
//             //'Graduate year : ${academicAttributes.graduateYear}',
//             style: GoogleFonts.raleway(
//                 color: Theme.of(context).textSelectionColor,
//                 fontSize: 14),
//           ),
//         ],
//       ),
//     )
//   ],
// ),
