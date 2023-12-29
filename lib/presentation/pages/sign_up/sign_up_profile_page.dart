import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/features/sign_up/entities/sign_up_data_entity.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/widgets/pet_profile_list_tile.dart';
import 'package:pets_next_door_flutter/presentation/pages/sign_up/sign_up_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/layout/user_nickname_text_form_field.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/widget/user_profile_image.dart';
import 'package:pets_next_door_flutter/presentation/widgets/appbar/appbar.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/basic_activate_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/basic_icon_button.dart';

class SignUpUserProfileStep extends ConsumerWidget {
  const SignUpUserProfileStep({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// TODO: 여기서 수정이면 유저 정보 부르기

    // final userInfo = ref.watch(appUserDataProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: UserProfileSubmitButton(),
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
                    UserNicknameTextFormField(
                      nicknameController: TextEditingController(
                        text: '',
                      ),
                    ),
                    gapH20,
                    UserPetListLayout(),
                    gapH20,
                    const UserPetAddButton(),
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

class UserPetAddButton extends StatelessWidget {
  const UserPetAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return PNDBasicIconButton(
          onTap: () async {
            final newPet = await context.pushNamed(AppRoute.registerPet.name);
          },
          text: '반려동물 추가하기',
          icon: const Icon(
            Icons.add,
            size: 16,
          ),
        );
      },
    );
  }
}

class UserProfileSubmitButton extends StatelessWidget with SignUpEvent {
  const UserProfileSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final signUpData = ref.watch(signUpDataProvider);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: PNDSizes.p24),
          child: PNDBasicActivateButton(
            onTap: () => onTapProfileNextButton(ref),
            text: '다음으로',
            isActive: signUpData.hasAllEssentialData,
          ),
        );
      },
    );
  }
}

class UserPetListLayout extends StatelessWidget {
  UserPetListLayout({
    super.key,
  });

  final GlobalKey<AnimatedListState> _listStateKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final petList = ref.watch(signUpDataProvider).pets;

        return AnimatedList(
          key: _listStateKey,
          shrinkWrap: true,
          initialItemCount: petList.length,
          itemBuilder: (context, index, animation) => PetProfileListTile(
            pet: petList[index],
          ),
        );
      },
    );
  }
}

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => Center(child: Text(e.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
