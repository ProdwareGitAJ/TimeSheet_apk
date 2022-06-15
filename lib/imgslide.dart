import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slideimg extends StatelessWidget {
  const slideimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Image> img;
    return (Scaffold(
      body: Container(
        child: Center(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                  height: 225,
                  width: double.infinity,
                  child: CarouselSlider(
                    items: img = [
                      Image.asset(
                        "Assets/images/slide1.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide2.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide3.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide1.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide2.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide3.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "Assets/images/slide1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 1200),
                    ),
                  )),
            )
          ],
        )),
      ),
    ));
  }
}
