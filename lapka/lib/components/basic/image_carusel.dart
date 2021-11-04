import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class ImageCarusel extends StatefulWidget {
  final List<Widget> images;
  const ImageCarusel({Key? key, required this.images}) : super(key: key);

  @override
  _ImageCaruselState createState() => _ImageCaruselState();
}

class _ImageCaruselState extends State<ImageCarusel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.images,
          carouselController: _controller,
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Container(
            padding: EdgeInsets.only(top: 235),
            alignment: Alignment.topCenter,
            child:
                ImageIndicator(current: _current, lenght: widget.images.length))
      ],
    );
  }
}

class ImageIndicator extends StatefulWidget {
  int current, lenght;
  ImageIndicator({Key? key, required this.current, required this.lenght})
      : super(key: key);

  @override
  _ImageIndicatorState createState() => _ImageIndicatorState();
}

class _ImageIndicatorState extends State<ImageIndicator> {
  List<Widget> indicators = [];
  @override
  void initState() {
    _generateIndicators();
    super.initState();
  }

  _generateIndicators() {
    indicators = [];
    if (widget.lenght == 1) {
      indicators.add(Container());
      return;
    }
    for (var i = 0; i < widget.lenght; i++) {
      if (i == widget.current)
        indicators.add(Container(
            height: 4,
            width: 20,
            decoration: BoxDecoration(
                color: BasicColors.white.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(2)))));
      else
        indicators.add(Container(
            height: 4,
            width: 10,
            decoration: BoxDecoration(
                color: BasicColors.white.withOpacity(0.4),
                borderRadius: BorderRadius.all(Radius.circular(2)))));
      if (i != widget.lenght - 1)
        indicators.add(SizedBox(
          width: 8,
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    _generateIndicators();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }
}
