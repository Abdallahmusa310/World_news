import 'package:flutter/material.dart';
import 'package:world_news/widgets/coustm_text.dart';

class ListOfNews extends StatelessWidget {
  const ListOfNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset('Assets/n2.png'),
            CoustmText(
                text:
                    'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
            Image.asset('Assets/n2.png'),
            CoustmText(text: 'aaa'),
            Image.asset('Assets/n2.png'),
            CoustmText(text: 'aaa'),
            Image.asset('Assets/n2.png'),
            CoustmText(text: 'aaa'),
          ],
        )),
      ),
    );
  }
}
