import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';
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
        vertical: Sizes.p12,
        horizontal: Sizes.p16,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100 - (Sizes.p12 * 2),
            width: 100 - (Sizes.p12 * 2),
            decoration: BoxDecoration(
              color: Colors.amber,
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
                children: [Text(pet.name), Icon(Icons.female_rounded)],
              )),
              Expanded(
                  child: Row(
                children: [
                  Text(pet.breed),
                  Text(
                    pet.birthDate.year.toString(),
                  )
                ],
              )),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber),
                      child: Text('중성화 ${pet.neutered}'))),
            ],
          )
        ],
      ),
    );
  }
}
