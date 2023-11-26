import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/features/auth/domain/providers/app_user_data_provider.dart';
import 'package:pets_next_door_flutter/features/sign_up/domain/profile_form.dart';
import 'package:pets_next_door_flutter/features/user/domain/provider/user_profile_info_provider.dart';
import 'package:pets_next_door_flutter/features/user/domain/user_profile_view_state.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet/widgets/pet_profile_list_tile.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/layout/user_nickname_text_form_field.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/providers/profile_form_provider.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/user_profile_view_event.dart';
import 'package:pets_next_door_flutter/presentation/pages/user/widget/user_profile_image.dart';

import 'package:pets_next_door_flutter/presentation/widgets/appbar/appbar.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/basic_activate_button.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/basic_icon_button.dart';

class UserProfileView extends ConsumerWidget {
  const UserProfileView({
    required this.profileViewState,
    super.key,
  });

  final UserProfileViewState profileViewState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// TODO: 여기서 수정이면 유저 정보 부르기

    final userInfo = ref.watch(appUserDataProvider);

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
                    UserPetListLayout(
                      previousProfileForm: ProfileForm(),
                    ),
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

class UserProfileSubmitButton extends StatelessWidget with SignUpPageEvent {
  const UserProfileSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final profileForm = ref.watch(profileFormNotifierProvider);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: PNDSizes.p24),
          child: PNDBasicActivateButton(
            onTap: () => onTapSubmit(ref, profileForm),
            text: '다음으로',
            isActive: profileForm.isFormValid,
          ),
        );
      },
    );
  }
}

class UserPetListLayout extends StatelessWidget {
  UserPetListLayout({
    required this.previousProfileForm,
    super.key,
  });

  final GlobalKey<AnimatedListState> _listStateKey = GlobalKey();

  final ProfileForm previousProfileForm;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final petList = ref.watch(petListNotifierProvider.notifier).build();

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
