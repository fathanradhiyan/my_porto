import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/models/experiences_model.dart';
import 'package:provider/provider.dart';

class ExperienceCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final experienceAttributes = Provider.of<ExperiencesModel>(context);
    return Card(
      elevation: 5,
      color: Colors.white.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image(
                  image: AssetImage(
                      experienceAttributes.imageUrl!
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(experienceAttributes.workspaceName!, style: GoogleFonts.raleway(color: Theme.of(context).textSelectionColor, fontWeight: FontWeight.w600)),
                  SizedBox(height: 5,),
                  Text(experienceAttributes.roleName!, style: GoogleFonts.oswald(color: Theme.of(context).focusColor)),
                  SizedBox(height: 5,),
                  Text(experienceAttributes.startDate! + " - " + experienceAttributes.endDate!, style: GoogleFonts.raleway(color: Colors.grey),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
