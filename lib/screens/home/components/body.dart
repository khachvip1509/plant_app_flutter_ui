import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/screens/home/components/recommend_plants.dart';
import 'package:plant_app_flutter_ui/screens/home/components/title_with_more_btn.dart';

import '../../../constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provie us total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Feature Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}