import 'package:flutter/material.dart';

class LicCard extends StatelessWidget {
  final Icon icon;
  final String? title;
  final String? superScript;
  final String? subScript;
  final Color backgroundColor;
  final bool showSimpleText;

  const LicCard({
    super.key,
    required this.icon,
    this.title,
    required this.backgroundColor,
    this.showSimpleText = true,
    this.superScript,
    this.subScript,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 8),
            showSimpleText
                ? Text(
              title ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
                : Center(
                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                  Text(
                    superScript ?? '',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subScript ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                                ],
                              ),
                ),
          ],
        ),
      ),
    );
  }
}
