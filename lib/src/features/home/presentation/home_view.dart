import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';
import 'package:pets_next_door_flutter/src/routing/app_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 8),
                child: Text('용답동'),
              ),
            ],
          ),
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
                shrinkWrap: true,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () => context.goNamed(AppRoute.login.name),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 88,
                              width: 88,
                              color: Colors.red,
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
      ),
    );
  }
}
