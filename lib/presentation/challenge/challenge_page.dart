import 'package:flutter/material.dart';
import 'package:lic_assessment/common/lic_card_style.dart' show LicCard;
import 'package:lic_assessment/data/model/card_model.dart' show LicCardModel;
import 'package:lic_assessment/utils/constants/lic_color.dart';
import '../../common/lic_circular_avater.dart' show LicCircularAvater;
import '../../utils/constants/lic_textstyle.dart' show LicTextStyles;
class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final List<LicCardModel> cards = const [
      LicCardModel(icon: Icon(Icons.shuffle), title: 'Random',),
      LicCardModel(icon: Icon(Icons.tag), title: 'Exam Number'),
      LicCardModel(icon: Icon(Icons.search), title: 'Topic',),
      LicCardModel(icon: Icon(Icons.table_rows_outlined), title: 'In a row'),
    ];


    return Scaffold(
      backgroundColor:  LicAppColor.darkBackground,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///Appbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Practice', style: LicTextStyles.textHeaderMd,),
                        ],
                      ),

                      ///Account Circle
                      LicCircularAvater(),
                    ],
                  ),

                  SizedBox(height: height * 0.01,),

                  ///Text Social
                  Text('Challenge your \nknowledge', style: LicTextStyles.textHeaderMd.copyWith(
                    color: Colors.white,
                  ),
                  ),

                  Text('type of question', style: LicTextStyles.textHeaderMd.copyWith(
                    fontSize: 18,
                  ),
                  ),
                  SizedBox(height: height * 0.02,),

                  ///Four Tile
                  SizedBox(
                    height: 320,
                    child: GridView.builder(
                      itemCount: cards.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (context, index) {
                        final card = cards[index];
                        return SizedBox(
                          height: 100,
                          width: 120,
                          child: LicCard(
                            icon: card.icon,
                            backgroundColor: Colors.blueAccent.withOpacity(0.2),
                            showSimpleText: true,
                            title: card.title,
                          ),
                        );
                      },
                    ),
                  ),
                  
                  SizedBox(height: height * 0.04,),

                  ///sky blue color
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: LicAppColor.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Mistakes practice', style: LicTextStyles.textBodyMd.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000),
                          )),
                          SizedBox(height: height * 0.02,),
                          Text('Practice more the very exams exercise which you re doing worst.', style: LicTextStyles.textBodyMd.copyWith(
                            fontSize: 16, color: Color(0xff000000),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
