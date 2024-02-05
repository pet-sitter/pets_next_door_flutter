part of '../pet_sos_view.dart';

class _PetSosListView extends HookConsumerWidget {
  const _PetSosListView({
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

    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        controller: _scrollController,
        shrinkWrap: true,
        itemBuilder: (context, index) => PndPostListTile.sosPage(
          imageUrl:
              'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FP6btQ%2Fbtq2dCpzo9w%2F6KwuwdcKiC01N800kBegAk%2Fimg.jpg',
          title: '안녕하세요 푸들 한마리 돌봄 급하게 구합니다.',
          dateInfo: '23.03.21 ~ 23.03.28',
          location: '용답동',
          pay: '시급 9000원',
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
