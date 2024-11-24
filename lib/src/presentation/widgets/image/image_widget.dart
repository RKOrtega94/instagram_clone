import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class AppImageWidget extends StatelessWidget {
  final String image;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final Color? filterColor;
  const AppImageWidget({
    required this.image,
    this.fit,
    this.alignment = Alignment.center,
    this.filterColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _buildImage(image);
  }

  Widget _buildImage(String image) {
    if (image.startsWith('http')) {
      if (image.endsWith('.svg')) {
        return _svgNetworkImage(image);
      }
      return _networkImage(image);
    } else if (image.endsWith('.svg')) {
      return _svgImage(image);
    } else {
      return _assetImage(image);
    }
  }

  Widget _networkImage(String image) {
    final Alignment alignment = this.alignment as Alignment;
    return CachedNetworkImage(
      imageUrl: image,
      fit: fit,
      alignment: alignment,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.white,
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }

  Widget _svgNetworkImage(String image) {
    return SvgPicture.network(
      image,
      fit: fit ?? BoxFit.contain,
      alignment: alignment as Alignment,
      colorFilter: filterColor != null
          ? ColorFilter.mode(filterColor!, BlendMode.srcIn)
          : null,
    );
  }

  Widget _svgImage(String image) {
    return SvgPicture.asset(
      image,
      fit: fit ?? BoxFit.contain,
      alignment: alignment as Alignment,
      colorFilter: filterColor != null
          ? ColorFilter.mode(filterColor!, BlendMode.srcIn)
          : null,
    );
  }

  Widget _assetImage(String image) {
    return Image.asset(
      image,
      fit: fit,
      alignment: alignment as Alignment,
      color: filterColor,
    );
  }
}
