import 'package:app_news/Models/cattegory_model.dart';
import 'package:flutter/material.dart';

import '../views/Category_view.dart';

class CatergotyCards extends StatelessWidget {
  const CatergotyCards({super.key, required this.cattegory});

  final CattegoryModel cattegory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: cattegory.cattegoryName,
          );
        }));
      },
      child: Container(
        width: 185,
        height: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(cattegory.image)),
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          cattegory.cattegoryName,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
