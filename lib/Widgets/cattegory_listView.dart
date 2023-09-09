import 'package:flutter/cupertino.dart';

import '../Models/cattegory_model.dart';
import 'cattegory_card.dart';

class  CattegoryListVew extends StatelessWidget {
  const CattegoryListVew({
    super.key,
  });

  final List<CattegoryModel>  cattegory = const[
      CattegoryModel(image: 'assets/science.avif', cattegoryName: 'business'),
      CattegoryModel(image: 'assets/entertaiment.avif', cattegoryName: 'entertainment'),  
      CattegoryModel(image: 'assets/technology.jpeg', cattegoryName: 'general'), 
      CattegoryModel(image: 'assets/health.avif', cattegoryName: 'health'),  
      CattegoryModel(image: 'assets/science.avif', cattegoryName: 'science'),  
      CattegoryModel(image: 'assets/entertaiment.avif', cattegoryName: 'sports'), 
      CattegoryModel(image: 'assets/technology.jpeg', cattegoryName: 'technology'),        
  ] ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 120,
      child: ListView.builder(
        physics: const  BouncingScrollPhysics(),
       scrollDirection: Axis.horizontal,
            itemCount: cattegory.length,
            itemBuilder: (context , index){
              return  Padding(
                padding: const EdgeInsets.only( right:  16.0),
                child: CatergotyCards(
                  cattegory: cattegory[index]
                ),
              ) ;
               
            },
        
      ),
    );
  }
}