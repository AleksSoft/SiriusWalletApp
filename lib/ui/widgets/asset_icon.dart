import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:get/get.dart';

class AssetIcon extends StatelessWidget {
  AssetIcon(this.iconUrl, this.size, {Key key}) : super(key: key);
  final String iconUrl;
  final double size;

  Widget get _placeholder => SizedBox(
        height: size,
        width: size,
      );
  @override
  Widget build(BuildContext context) {
    return !iconUrl.isNullOrBlank
        ? FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: iconUrl,
            height: size,
            width: size,
            imageErrorBuilder: (_, error, ___) => SvgPicture.network(
              iconUrl,
              width: size,
              height: size,
              placeholderBuilder: (context) => _placeholder,
            ),
          )
        : _placeholder;
  }
}
