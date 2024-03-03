part of '../home_view.dart';

class _SearchBar extends ConsumerWidget with HomeEvent {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSearchBar = ref.watch(showSearchBarProvider);

    return AnimatedSearchBar(
      showSearchBar: showSearchBar,
      onSubmitted: (text) => onSearchTextSubmitted(ref, text),
      enableDivider: true,
    );
  }
}
