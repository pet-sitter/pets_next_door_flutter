import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/enums/pet_type.dart';
import 'package:pets_next_door_flutter/core/constants/images.dart';

class PetTypeSelectionButton extends StatelessWidget {
  const PetTypeSelectionButton({
    required this.petType,
    required this.active,
    this.onTap,
    super.key,
  });

  final PetType petType;
  final bool active;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final imgWidget = switch (petType) {
      PetType.cat => Image.asset(
          PNDImages.cat,
          height: 160,
        ),
      PetType.dog => Image.asset(
          PNDImages.dog,
          height: 115,
        ),
    };

    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 166,
        decoration: BoxDecoration(
          color: active ? Colors.amber : Colors.grey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 12,
              left: 16,
              child: Text(
                petType.displayName,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  active ? Colors.transparent : Colors.grey,
                  BlendMode.saturation,
                ),
                child: imgWidget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
