import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: data['correct_answer'] == data['user_answer']
                            ? Colors.lightBlue
                            : const Color.fromARGB(255, 213, 129, 227),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 230, 203, 221),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: TextStyle(
                                color: Color.fromARGB(255, 228, 93, 183)),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(
                              color: Color.fromARGB(255, 93, 228, 183),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
