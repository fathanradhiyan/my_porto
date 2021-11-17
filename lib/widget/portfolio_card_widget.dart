import 'package:flutter/material.dart';
import 'package:my_porto/models/portfolio_model.dart';
import 'package:provider/provider.dart';

class PortfolioCardWidget extends StatefulWidget {
  @override
  _PortfolioCardWidgetState createState() => _PortfolioCardWidgetState();
}

class _PortfolioCardWidgetState extends State<PortfolioCardWidget> {
  @override
  Widget build(BuildContext context) {
    final portfolioAttributes = Provider.of<PortfolioModel>(context);
    List<dynamic> imageLists = portfolioAttributes.imageUrl;
    return Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            //   color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
            ]),
        child: InteractiveViewer(
          child: Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageLists.length,
              itemBuilder: (context, index){
                return Image(
                  image: AssetImage(imageLists[index]),
                );
              }
            ),
          ),
        ),
      );
  }
}
