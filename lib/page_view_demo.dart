import 'package:flutter/material.dart';
import 'package:flutter_b19/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'Trending news', image: 'assets/images/2.png'),
    OnBoardingModel(
        title: 'React,Save & Share News', image: 'assets/images/3.png'),
    OnBoardingModel(
        title: 'Video & live News From Youtube', image: 'assets/images/4.png'),
    OnBoardingModel(
        title: 'Browse News From Variety Of Categories',
        image: 'assets/images/5.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      SizedBox(
                        height: 20,
                      ),
                      Text(onBoardingList[i].title.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
