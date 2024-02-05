import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/core/constants/sizes.dart';

class PNDInfinitePagedList<PageKeyType, ItemType> extends StatelessWidget {
  PNDInfinitePagedList({
    super.key,
    required this.pagingController,
    required this.builderDelegate,
    this.separatorBuilder,
  });

  final PagingController<PageKeyType, ItemType> pagingController;
  final PagedChildBuilderDelegate<ItemType> builderDelegate;
  final IndexedWidgetBuilder? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: PagedListView<PageKeyType, ItemType>.separated(
        pagingController: pagingController,
        builderDelegate: builderDelegate,
        separatorBuilder: separatorBuilder ?? (context, index) => gapH16,
      ),
      onRefresh: () => Future.sync(
        () => pagingController.refresh(),
      ),
    );
  }
}
