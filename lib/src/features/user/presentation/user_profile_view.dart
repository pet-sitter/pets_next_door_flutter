import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';
import 'package:pets_next_door_flutter/src/constants/svgs.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/pet.dart';
import 'package:pets_next_door_flutter/src/features/pet/domain/provider/pet_list_notifier_provider.dart';
import 'package:pets_next_door_flutter/src/features/pet/presentation/widgets/pet_profile_list_tile.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/layout/user_nickname_text_form_field.dart';
import 'package:pets_next_door_flutter/src/features/user/presentation/widget/user_profile_image.dart';
import 'package:pets_next_door_flutter/src/widgets/appbar/appbar.dart';
import 'package:pets_next_door_flutter/src/widgets/button/basic_activate_button.dart';
import 'package:pets_next_door_flutter/src/widgets/button/basic_icon_button.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedListState> _key = GlobalKey();

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
        child: PNDBasicActivateButton(
          text: '다음으로',
          isActive: true,
        ),
      ),
      appBar: const PNDAppBar(
        title: '프로필 설정하기',
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Column(
                  children: [
                    gapH24,
                    const UserProfileImage(),
                    gapH32,
                    const UserNicknameTextFormField(),
                    gapH20,
                    Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        final petList = ref.watch(petListNotifierProvider);
                        return AnimatedList(
                          key: _key,
                          shrinkWrap: true,
                          initialItemCount: petList.length,
                          itemBuilder: (context, index, animation) =>
                              PetProfileListTile(
                            pet: petList[index],
                          ),
                        );
                      },
                    ),
                    gapH20,
                    const PNDBasicIconButton(
                      text: '반려동물 추가하기',
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
