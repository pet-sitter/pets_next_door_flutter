import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/core/constants/images.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';
import 'package:pets_next_door_flutter/core/constants/text_style.dart';

typedef _ImgIconUrl = String;
typedef _TextWithIconImgUrl = ({_ImgIconUrl imgIconUrl, String text});

const double _kImageHeight = 88;
const double _kImageWidth = 88;
const double _kContentIconSize = 16;
const double _kContentSpacing = PNDSizes.p4;

/// 앱에서 게시물 보여줄 때 사용하는 ListTile
class PndPostListTile extends StatelessWidget {
  const PndPostListTile({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.contentsList,
    this.imageHeight = _kImageHeight,
    this.imageWidth = _kImageWidth,
    this.contentsSpacing = _kContentSpacing,
  });
  final String title;
  final String imageUrl;
  final double imageWidth;
  final double imageHeight;
  final List<_TextWithIconImgUrl> contentsList;
  final double contentsSpacing;

  /// 돌봄급구에서 보여주는 ListTile
  /// 나중에 돌봄급구와 메이트 디자인 변경될 수 있을 것 같아서 빼놓음
  factory PndPostListTile.sosPage({
    Key? key,
    required String? imageUrl,
    required String title,
    required String dateInfo,
    required String location,
    required String pay,
  }) {
    return PndPostListTile(
      key: key,
      imageUrl: imageUrl ?? '',
      title: title,
      contentsList: [
        (imgIconUrl: PNDImages.calander, text: dateInfo),
        (imgIconUrl: PNDImages.location, text: location),
        (imgIconUrl: PNDImages.payment, text: pay),
      ],
    );
  }

  /// 돌봄메이트에서 보여주는 ListTile
  factory PndPostListTile.matePage({
    Key? key,
    required String? imageUrl,
    required String title,
    required String dateInfo,
    required String location,
    required String pay,
  }) {
    return PndPostListTile(
      key: key,
      imageUrl: imageUrl ?? '',
      title: title,
      contentsList: [
        (imgIconUrl: PNDImages.calander, text: dateInfo),
        (imgIconUrl: PNDImages.location, text: location),
        (imgIconUrl: PNDImages.payment, text: pay),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: GestureDetector(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                    height: imageHeight,
                    width: imageWidth,
                    decoration: BoxDecoration(
                      color: AppColor.of.gray20,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Center(
                        child: Icon(
                          Icons.image,
                          size: 25,
                          color: AppColor.of.gray30,
                        ),
                      ),
                    )),
              ),
              gapW8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.bodyBold1,
                    ),
                    gapH8,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: contentsList.indexed
                          .map(
                            (contents) => Container(
                              margin: contents.$1 != contentsList.length - 1
                                  ? EdgeInsets.only(bottom: contentsSpacing)
                                  : null,
                              child: Row(
                                children: [
                                  Image.asset(
                                    contents.$2.imgIconUrl,
                                    width: _kContentIconSize,
                                    height: _kContentIconSize,
                                    color: AppColor.of.gray90,
                                  ),
                                  gapW4,
                                  Text(
                                    contents.$2.text,
                                    style: AppTextStyle.bodyRegular3,
                                    softWrap: false,
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
