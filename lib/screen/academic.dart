import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/models/academics_model.dart';
import 'package:my_porto/provider/academics_provider.dart';
import 'package:my_porto/screen/empty_page.dart';
import 'package:my_porto/widget/academic_card_widget.dart';
import 'package:my_porto/widget/fade_in_transition.dart';
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
            body: FadeInTransition(
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
