import 'package:flutter/material.dart';
import 'package:lic_assessment/common/lic_card_style.dart' show LicCard;
import 'package:lic_assessment/common/lic_circular_avater.dart' show LicCircularAvater;
import 'package:lic_assessment/data/model/card_model.dart';
import 'package:lic_assessment/utils/constants/lic_color.dart' show LicAppColor;
import 'package:lic_assessment/utils/constants/lic_textstyle.dart' show LicTextStyles;
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<LicCardModel> cards = const [
    LicCardModel(icon: Icon(Icons.school, color: Colors.black,), base: '/5 topics', superscript: '3'),
    LicCardModel(icon: Icon(Icons.library_books, color: Colors.black,), base: '/16 questions', superscript: '4'),
  ];


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: LicAppColor.primary,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16),
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
                    Text('Hello,\nAlexandra!', style: LicTextStyles.textBodyMd,),
                  ],
                ),

                ///Account Circle
                LicCircularAvater(),
              ],
            ),
            SizedBox(height: height * 0.02,),

            ///Text Social
            Text('Social Studies', style: LicTextStyles.textBodyMd.copyWith(
              color: Colors.black45, fontSize: 26, fontWeight: FontWeight.w700
            ),),
            Text('Exam Preparation', style: LicTextStyles.textGreen.copyWith(
                color: Colors.black45, fontSize: 26, fontWeight: FontWeight.w700
            ),
            ),

            SizedBox(height: height * 0.01,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '58',
                              style: LicTextStyles.textBodyMd.copyWith(
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: '/100',
                              style: LicTextStyles.textBodyMd.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('Your recent score', style: LicTextStyles.textBodyMd.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black45
                      ),),
                    ]),

                ///Button
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('More Details', style: LicTextStyles.textBodyMd,),
                      Icon(Icons.navigate_next)
                    ],
                  )
              ),
              ],
            ),
            SizedBox(height: height * 0.03,),


            ///Grid View
            Expanded(
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
                    backgroundColor: Colors.white,
                    showSimpleText: false,
                    subScript: card.base,
                    superScript: card.superscript,
                  ),
                );
              },
              ),
            ),

            ///TabBar
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    LeftAndRightText(subScript: '/ h', superScript: '3', rightHandText: 'Overall Time Spent',),
                    LeftAndRightText(subScript: '/6', superScript: '20', rightHandText: 'Variants Solved',),
                    LeftAndRightText(leftHandText: '28', rightHandText: 'Mistakes Made',),
                  ],
                ),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}

class LeftAndRightText extends StatelessWidget {
  final String? leftHandText;
  final String? rightHandText;
  final String? superScript;
  final String? subScript;

  const LeftAndRightText({
    super.key,
    this.leftHandText,
    this.rightHandText,
    this.superScript,
    this.subScript,
  });

  @override
  Widget build(BuildContext context) {
    final hasSupSub = superScript != null && subScript != null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hasSupSub
              ? RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: superScript!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                  ),
                ),
                TextSpan(
                  text: subScript,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
              : Text(
            leftHandText ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Text(
            rightHandText ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}




