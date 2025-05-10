import 'package:flutter/material.dart';

import 'package:lic_assessment/data/model/question_model.dart' show QuestionModel;
import 'package:lic_assessment/presentation/practice/widgets/quizzer_button.dart';
import 'package:lic_assessment/utils/constants/lic_color.dart';
import 'package:lic_assessment/utils/constants/lic_textstyle.dart' show LicTextStyles;


class QuizzerTile extends StatefulWidget {
  final QuestionModel question;

  const QuizzerTile({Key? key, required this.question}) : super(key: key);

  @override
  State<QuizzerTile> createState() => _QuizzerTileState();
}

class _QuizzerTileState extends State<QuizzerTile> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.question.questionText, style: LicTextStyles.textBodyMd),
        SizedBox(height: 12),

        ...widget.question.options.map((option) => GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = option;
            });
          },
          child: QuizzerButton(
            text: option,
            selected: selectedOption == option,
          ),
        )),

        SizedBox(height: 8),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: LicAppColor.secondary,
          ),
          onPressed: () {
            final isCorrect = selectedOption == widget.question;
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(isCorrect ? 'Correct!' : 'Wrong Answer'),
            ));
          },
          child: Text(
            'Check Answer',
            style: LicTextStyles.textBodyMd.copyWith(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}