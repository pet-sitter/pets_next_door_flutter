import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/src/constants/sizes.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';

class PetProfileListTile extends StatelessWidget {
  const PetProfileListTile({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: PNDSizes.p12,
        horizontal: PNDSizes.p16,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xffEBEBEB)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100 - (PNDSizes.p12 * 2),
            width: 100 - (PNDSizes.p12 * 2),
            decoration: BoxDecoration(
              color: Color(0xffFFF0DD),
              shape: BoxShape.circle,
            ),
          ),
          gapW16,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Row(
                children: [Text(pet.name ?? ''), Icon(Icons.female_rounded)],
              )),
              Expanded(
                  child: Row(
                children: [
                  Text(pet.breed ?? ''),
                  Text(
                    (pet.birthDate?.year ?? -1).toString(),
                  )
                ],
              )),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffFFF0DD),
                      ),
                      child: Text(
                        '중성화 ${pet.neutered}',
                        style: TextStyle(color: Color(0xffFF8B00)),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
