import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_porto/models/portfolio_model.dart';
import 'package:my_porto/provider/portfolio_provider.dart';
import 'package:my_porto/screen/empty_page.dart';
import 'package:my_porto/widget/custom_refresh_page.dart';
import 'package:my_porto/widget/fade_in_transition.dart';
import 'package:my_porto/widget/portfolio_card_widget.dart';
import 'package:provider/provider.dart';

class MyPorto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final portfolioProviders = Provider.of<PortfolioProvider>(context);
    List<PortfolioModel> portfolioLists = portfolioProviders.portfolios;
    return portfolioLists.isEmpty ?
        Scaffold(
          body: EmptyPage(),
        )
      : Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Portfolio (${portfolioLists.length})',
            style: GoogleFonts.mcLaren(
                color: Theme.of(context).textSelectionColor),
          ),
        ),
        body: CustomRefreshPage(
          child: FadeInTransition(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(portfolioLists.length, (index) {
                  return ChangeNotifierProvider.value(
                    value: portfolioLists[index],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: PortfolioCardWidget(),
                    ),
                  );
                }),
              ),
            ),
          ),
        ));
  }
}
