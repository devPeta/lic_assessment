import 'package:flutter/material.dart';
import 'package:lic_assessment/common/lic_circular_avater.dart' show LicCircularAvater;
import 'package:lic_assessment/data/model/question_model.dart' show QuestionModel, question;
import 'package:lic_assessment/presentation/practice/widgets/quizzer_tile.dart';
import 'package:lic_assessment/utils/constants/lic_color.dart';
import 'package:lic_assessment/utils/constants/lic_textstyle.dart' show LicTextStyles;

class PracticePage extends StatelessWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    // Sample question data
    final QuestionModel sampleQuestion = QuestionModel(
        questionText: 'Select the correct judgement about the global economy from the list below',
        options: ['The function of the world labor is based on the international division of labor',
          'The trade balance is the difference between imports and exports for a certain period',
          'State regulation of foreign trade is carried out exclusively by tariffs method',
          'International  economic relations are carried out  in the form of monetary and credit relation'],
        correctAnswer: 1
    );

    return Scaffold(
      backgroundColor: LicAppColor.darkBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// Appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_backspace_rounded),
                  ),
                  LicCircularAvater(),
                ],
              ),

              SizedBox(height: height * 0.01),

              /// Text: Economics
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Economics', style: LicTextStyles.textGreen),
                  Text('#6', style: LicTextStyles.textGreen),
                ],
              ),
              SizedBox(height: height * 0.01),

              /// Question tile
              QuizzerTile(question: sampleQuestion),
            ],
          ),
        ),
      ),
    );
  }
}




