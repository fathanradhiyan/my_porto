import 'package:flutter/cupertino.dart';
import 'package:my_porto/models/portfolio_model.dart';

class PortfolioProvider with ChangeNotifier {
  List <PortfolioModel> _portfolios = [
    PortfolioModel(
      id: "portfolio01",
      imageUrl: [
        "assets/images/portfolios/portfolio_screen_1.jpg",
        "assets/images/portfolios/portfolio_screen_2.jpg",
        "assets/images/portfolios/portfolio_screen_3.jpg",
        "assets/images/portfolios/portfolio_screen_4.jpg",
        "assets/images/portfolios/portfolio_screen_5.jpg",
        "assets/images/portfolios/portfolio_screen_6.jpg",
        "assets/images/portfolios/portfolio_screen_7.jpg",
      ],
    ),
    PortfolioModel(
      id: "portfolio02",
      imageUrl: [
        "assets/images/portfolios/portfolio2_screen_1.jpg",
        "assets/images/portfolios/portfolio2_screen_2.jpg",
      ],
    ),
    PortfolioModel(
      id: "portfolio03",
      imageUrl: [
        "assets/images/portfolios/portfolio3_screen_1.jpg",
        "assets/images/portfolios/portfolio3_screen_2.jpg",
        "assets/images/portfolios/portfolio3_screen_3.jpg",
        "assets/images/portfolios/portfolio3_screen_4.jpg",
        "assets/images/portfolios/portfolio3_screen_5.jpg",
        "assets/images/portfolios/portfolio3_screen_6.jpg",
        "assets/images/portfolios/portfolio3_screen_7.jpg",
        "assets/images/portfolios/portfolio3_screen_8.jpg",
      ],
    ),
    PortfolioModel(
      id: "portfolio04",
      imageUrl: [
        "assets/images/portfolios/portfolio4_screen1.jpg",
        "assets/images/portfolios/portfolio4_screen2.jpg",
        "assets/images/portfolios/portfolio4_screen3.jpg",
        "assets/images/portfolios/portfolio4_screen4.jpg",
      ],
    ),
    PortfolioModel(
      id: "portfolio05",
      imageUrl: [
        "assets/images/portfolios/portfolio_photoshop.png",
        "assets/images/portfolios/portfolio_photoshop_2.png",
        "assets/images/portfolios/portfolio_photoshop_3.png",
        "assets/images/portfolios/portfolio_photoshop_4.png",
      ],
    ),
  ];

  List<PortfolioModel> get portfolios {
    return [..._portfolios];
  }
}