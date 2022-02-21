import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/models/achievements_model.dart';
import 'package:provider/provider.dart';

class AchievementGridCard extends StatefulWidget {
  @override
  _AchievementGridCardState createState() => _AchievementGridCardState();
}

class _AchievementGridCardState extends State<AchievementGridCard> {
  @override
  Widget build(BuildContext context) {
    final achievementAttributes = Provider.of<AchievementsModel>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 260,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                        minHeight: 100,
                        maxHeight: MediaQuery.of(context).size.height * 0.3),
                    child: Image.asset(
                      // 'assets/images/ijazah.jpg',
                      achievementAttributes.imageUrl!,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(
                  //to move the badge use this
                  // bottom: 0,
                  // right: 5,
                  // top: 5,
                  child: Badge(
                    alignment: Alignment.center,
                    toAnimate: true,
                    shape: BadgeShape.square,
                    badgeColor: Colors.indigo.withOpacity(0.9),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(8)),
                    badgeContent:
                        Text('Verified', style: GoogleFonts.raleway(fontSize: 9,color: Colors.white)),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              margin: EdgeInsets.only(left: 5, bottom: 2, right: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    // 'UIN Jakarta',
                    achievementAttributes.verifiedBy!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.poppins(
                        color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 11),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      // 'Title',
                      achievementAttributes.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // 'released : 2021',
                        'released : ${achievementAttributes.releaseDate}',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(18),
                          child: Icon(Icons.more_horiz, color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
