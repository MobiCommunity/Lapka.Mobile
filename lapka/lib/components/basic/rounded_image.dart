import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lapka/components/basic/loading_indicator.dart';

class ImageFromUrl extends StatelessWidget {
  final String imageUrl;
  final double height;
  final bool rounded;
  const ImageFromUrl(
      {Key? key,
      required this.imageUrl,
      required this.height,
      this.rounded = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rounded ? 14 : 0),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) =>
          Container(height: height, child: LoadingIndicator()),
      errorWidget: (context, url, error) => Container(
          height: height,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(rounded ? 14 : 0))),
    );
  }
}
