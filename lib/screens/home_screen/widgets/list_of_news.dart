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
            ClipRRect(
              child: Image.asset('Assets/n2.png'),
            ),
            CoustmText(text: 'aaaadshfhfhfhfhfhfbf'),
            Image.asset('Assets/n2.png'),
            CoustmText(text: 'aaa'),
            Image.asset('Assets/n3.png'),
            CoustmText(text: 'aaa'),
            Image.asset('Assets/n4.png'),
            CoustmText(text: 'aaa'),
          ],
        )),
      ),
    );
  }
}
