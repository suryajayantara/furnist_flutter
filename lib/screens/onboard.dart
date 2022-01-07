import 'package:flutter/material.dart';
import 'package:furnist_app/screens/welcome.dart';
import 'package:furnist_app/widgets/components/solid_btn.dart';
import 'package:furnist_app/widgets/onboard_pv.dart';
import 'package:get/get.dart';

class OnboardPages extends StatefulWidget {
  // const OnboardPages({Key? key}) : super(key: key);

  @override
  _OnboardPagesState createState() => _OnboardPagesState();
}

class _OnboardPagesState extends State<OnboardPages> {
  // Init Var

  PageController _pageController = PageController(initialPage: 0);
  List<Widget> _pages = [];
  int activePages = 1;
  String title = "Next";

  // void onChange

  @override
  Widget build(BuildContext context) {
    _pages = [
      OnboardPV(
          imgUrl: "assets/theme/onboarding-1.png",
          title: "Dream Room",
          desc:
              'Design your best room with the best furniture, for greater comfort at home'),
      OnboardPV(
          imgUrl: "assets/theme/onboarding-2.png",
          title: "Best Quality & Prices",
          desc:
              'Find the furniture of your dreams here, with quality materials and affordable prices'),
    ];
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                activePages = value + 1;
                if (activePages < _pages.length) {
                  title = "Next";
                } else {
                  title = "Get Started";
                }
              });
            },
            children: _pages,
          ),
          Positioned(
              top: 100,
              child: Column(
                children: [
                  Image(image: AssetImage('assets/icon.png')),
                  Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Row(
                        children: List.generate(_pages.length, (index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                                color: activePages - 1 == index
                                    ? Colors.black
                                    : Colors.black87.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10)),
                          );
                        }),
                      ))
                ],
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: SolidBtn(
                    title: title,
                    onTap: () {
                      setState(() {
                        activePages += 1;
                      });

                      if (activePages > _pages.length) {
                        Get.to(() => WelcomePage());
                      } else {
                        _pageController.animateToPage(_pages.length,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.easeInOut);
                      }
                    },
                  )))
        ],
      ),
    );
  }
}
