import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/svgs.dart';
import 'package:pets_next_door_flutter/presentation/widgets/image/image_type.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.size, required this.imageType});

  final double size;
  final ImageType imageType;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: imageType.when(
        asset: (String? path) {
          if (path == null)
            return _EmptyImage(
              size: size,
            );
          return Image.asset(
            path,
            width: size,
            height: size,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                _ErrorImage(size: size),
          );
        },
        network: (String? url) {
          if (url == null)
            return _EmptyImage(
              size: size,
            );
          return Image.network(
            url,
            width: size,
            height: size,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                _ErrorImage(size: size),
            loadingBuilder: (context, child, loadingProgress) =>
                (loadingProgress == null) ? child : _LoadingImage(size: size),
          );
        },
        file: (File? file) {
          if (file == null)
            return _EmptyImage(
              size: size,
            );
          return Image(
            width: size,
            height: size,
            image: FileImage(file),
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                _ErrorImage(size: size),
            loadingBuilder: (context, child, loadingProgress) =>
                (loadingProgress == null) ? child : _LoadingImage(size: size),
          );
        },
      ),
    );
  }
}

class _EmptyImage extends StatelessWidget {
  const _EmptyImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE2E2E2),
        borderRadius: BorderRadius.circular(4),
      ),
      height: size,
      width: size,
      alignment: Alignment.center,
      child: SvgPicture.asset(PNDSvgs.image),
    );
  }
}

class _ErrorImage extends StatelessWidget {
  const _ErrorImage({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColor.of.gray10,
      ),
      child: Icon(
        Icons.error_rounded,
        size: size / 2,
      ),
    );
  }
}

class _LoadingImage extends StatelessWidget {
  const _LoadingImage({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColor.of.gray10,
        ),
        child: Center(
          child: SizedBox(
            width: size / 2,
            height: size / 2,
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
