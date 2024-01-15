import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/presentation/widgets/box/skeleton_box.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.size, required this.imgUrl});

  final double size;
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return (imgUrl == null)
        ? SkeletonBox(
            width: size,
            height: size,
            borderRadius: 4,
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              imgUrl!,
              width: size,
              height: size,
              errorBuilder: (context, error, stackTrace) => SkeletonBox(
                width: size,
                height: size,
                borderRadius: 4,
              ),
            ),
          );
  }
}
