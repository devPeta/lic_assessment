import 'package:flutter/material.dart';

class QuestionModel{
  final String questionText;
  final List<String> options;
  final int correctAnswer;

  QuestionModel({
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });
}
