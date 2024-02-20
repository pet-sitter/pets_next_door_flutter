part of '../sos_post_view.dart';

class _SosPostListView extends HookConsumerWidget with SosPostViewEvent {
  const _SosPostListView({
    this.onScrollDirectionChanged,
  });

  final void Function(ScrollDirection)? onScrollDirectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();

    final _scrollController = useScrollController();

    useEffect(() {
      void _callBack() {
        onScrollDirectionChanged
            ?.call(_scrollController.position.userScrollDirection);
      }

      _scrollController.addListener(_callBack);
      return () => _scrollController.removeListener(_callBack);
    }, [_scrollController]);

    return RefreshIndicator(
      color: AppColor.of.primaryGreen,
      displacement: 0,
      onRefresh: () => onListRefresh(ref),
      child: PagedListView<int, SosPostEntity>.separated(
        pagingController: ref.watch(sosPagingControllerProvider),
        scrollController: _scrollController,
        physics: AlwaysScrollableScrollPhysics(),
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, sosPost, index) => PndPostListTile.sosPage(
              postId: sosPost.hashCode.toString(),
              onTapSosPost: (postId) => onTapSosPost(ref, sosPost),
              imageUrl: sosPost.thumbnailUrl,
              title: sosPost.title,
              dateInfo:
                  '${sosPost.careStartAt.formatyyMMdd} ~ ${sosPost.careEndAt.formatyyMMdd}',
              location: '용답동',
              pay: '${sosPost.rewardPer} ${sosPost.reward}'),
          firstPageProgressIndicatorBuilder: (context) => PndLoadingIndicator(),
          newPageProgressIndicatorBuilder: (context) => PndLoadingIndicator(),
        ),
        separatorBuilder: (context, index) => Divider(
          height: 1,
          thickness: 1,
          color: AppColor.of.gray20,
        ),
      ),
    );
  }
}
