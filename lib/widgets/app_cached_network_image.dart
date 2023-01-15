import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_search/extensions/string_extensions.dart';
import 'package:github_search/styles/app_images.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final double borderRadius;
  final BoxFit? fit;
  final String? imageUrl;
  final int memCacheWidth;
  final double? width;

  const AppCachedNetworkImage(
    this.imageUrl, {
    super.key,
    this.borderRadius = 0.0,
    this.fit,
    this.memCacheWidth = 1000,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isNullOrBlank) return _buildDefaultPlaceholder();
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        width: width,
        errorWidget: (_, __, ___) => _buildDefaultPlaceholder(),
        fit: fit,
        imageUrl: imageUrl!,
        memCacheWidth: memCacheWidth,
        placeholder: (_, __) => _buildDefaultPlaceholder(),
      ),
    );
  }

  Widget _buildDefaultPlaceholder() {
    return Center(
      child: Image.asset(
        AppImages.pngImages.githubLogo,
      ),
    );
  }
}
