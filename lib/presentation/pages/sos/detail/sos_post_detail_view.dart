import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';
import 'package:pets_next_door_flutter/features/media/entities/media_image_entity.dart';
import 'package:pets_next_door_flutter/features/sos/data/dto/author_dto.dart';
import 'package:pets_next_door_flutter/features/sos/entities/sos_post_entity.dart';
import 'package:pets_next_door_flutter/presentation/pages/home/home_event.dart';
import 'package:pets_next_door_flutter/presentation/widgets/appbar/appbar.dart';
import 'package:pets_next_door_flutter/presentation/widgets/button/activation_button.dart';

part 'layouts/sos_post_detail_tab_view.dart';

class SosPostDetailView extends StatelessWidget {
  const SosPostDetailView(
      {super.key, required this.postId, this.sosPostEntity});

  final int postId;
  final SosPostEntity? sosPostEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ActivationButton(
          text: '채팅하기',
          buttonColor: AppColor.of.primaryGreen,
          isActive: true,
          onTap: () {},
        ),
      ),
      appBar: PNDAppBar(
        leadingIconColor: AppColor.of.white,
        backgroundColor: Colors.transparent,
      ),
      body: (sosPostEntity == null)
          // TODO: 여기서 Async로 바꾸어서 로딩될동안은 캐시데이터, 캐시데이터가 없으면 로딩바, 데이터 받아왔을 경우에는 데이터 표시하도록 로직 변경 필요
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.longestSide),
                child: Column(
                  children: [
                    _SosPostInfoWithImage(
                      author: sosPostEntity!.author,
                      mediaList: sosPostEntity!.mediaList,
                      title: sosPostEntity!.title,
                    ),
                    const _SosPostDetailTabView(),
                  ],
                ),
              ),
            ),
    );
  }
}

class _SosPostInfoWithImage extends StatelessWidget {
  const _SosPostInfoWithImage(
      {super.key,
      required this.author,
      required this.mediaList,
      required this.title});
  final AuthorDto author;
  final List<MediaImageEntity> mediaList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 270,
          width: double.infinity,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.of.black.withOpacity(0.2),
                AppColor.of.black.withOpacity(0.1),
                AppColor.of.black.withOpacity(0.5),
              ],
            ),
          ),
          child: CachedNetworkImage(
            imageUrl: mediaList.first.url,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => Center(
              child: Icon(
                Icons.image,
                size: 25,
                color: AppColor.of.gray30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.headlineBold1
                    .copyWith(color: AppColor.of.white),
              ),
              gapH8,
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.of.white),
                  ),
                  gapW4,
                  Text(
                    author.nickname,
                    style: AppTextStyle.bodyRegular3
                        .copyWith(color: AppColor.of.white),
                  ),
                  Container(
                    height: 2,
                    width: 2,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.of.white),
                  ),
                  Text(
                    '염창1동',
                    style: AppTextStyle.bodyRegular3
                        .copyWith(color: AppColor.of.white),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
