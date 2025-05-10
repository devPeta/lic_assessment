import 'package:flutter/material.dart';
import 'package:lic_assessment/utils/constants/lic_color.dart';
import 'package:lic_assessment/utils/constants/lic_textstyle.dart' show LicTextStyles;

class QuizzerButton extends StatelessWidget {
  final String text;
  final bool selected;

  const QuizzerButton({
    Key? key,
    required this.text,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: selected
            ? LicAppColor.secondary.withOpacity(0.7)
            : Color(0xff000000).withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: selected ? Colors.greenAccent : Colors.transparent,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              selected ? Icons.check_circle : Icons.circle_outlined,
              color: selected ? Colors.greenAccent : Colors.white54,
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                text,
                style: LicTextStyles.textBodyMd.copyWith(
                  color: Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}