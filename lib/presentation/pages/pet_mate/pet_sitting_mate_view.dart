import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/app/router/app_router.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';

class PetSittingMateView extends HookConsumerWidget {
  PetSittingMateView({
    super.key,
    this.onScrollDirectionChanged,
  });

  final void Function(ScrollDirection)? onScrollDirectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _scrollController = useScrollController();

    useEffect(() {
      void _callBack() {
        onScrollDirectionChanged
            ?.call(_scrollController.position.userScrollDirection);
      }

      _scrollController.addListener(_callBack);
      return () => _scrollController.removeListener(_callBack);
    }, [_scrollController]);

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
        Expanded(
          child: ListView.separated(
              controller: _scrollController,
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
                            color: Colors.yellow,
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
        )
      ],
    );
  }
}
