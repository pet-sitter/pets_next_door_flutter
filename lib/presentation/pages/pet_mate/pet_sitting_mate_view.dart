import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/theme/extension/app_color.dart';
import 'package:pets_next_door_flutter/presentation/pages/pet_mate/providers/pet_sitting_mate_scroll_controller_provider.dart';

class PetSittingMateView extends StatelessWidget {
  const PetSittingMateView({
    super.key,
  });
  static const pageName = '돌봄메이트';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              DropdownMenu(
                initialSelection: 0,
                inputDecorationTheme: InputDecorationTheme(
                    constraints: BoxConstraints(maxWidth: 100),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0)),
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: 0,
                    label: 'asdf',
                  )
                ],
              ),
            ],
          ),
        ),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return Expanded(
              child: ListView.separated(
                  controller: ref.watch(petSittingMateScrollControllerProvider),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () => context.goNamed(AppRoute.signIn.name),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 88,
                                width: 88,
                                decoration: BoxDecoration(
                                    color: AppColor.of.gray30,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              gapW8,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '푸들 한마리 급하게 ㅁㅇ너랴ㅐㅓㅁㅇㄴ래ㅑ머ㅔㅐㅑ',
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '23.03.21 ~ 23.03.28',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '용답동',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '시급 9000원',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 10),
            );
          },
        )
      ],
    );
  }
}
