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

    return PNDInfinitePagedList<SosPostEntity>(
      pagingController: ref.watch(sosPagingControllerProvider),
      scrollController: _scrollController,
      itemBuilder: (context, sosPost, index) =>
          PndPostListTile.sosPage(
              imageUrl: sosPost.thumbnailUrl,
              title: sosPost.title,
              dateInfo:
                  '${sosPost.careStartAt.formatyyMMdd} ~ ${sosPost.careEndAt.formatyyMMdd}',
              location: '용답동',
              pay: '${sosPost.rewardPer} ${sosPost.reward}'),
    );
  }
}
