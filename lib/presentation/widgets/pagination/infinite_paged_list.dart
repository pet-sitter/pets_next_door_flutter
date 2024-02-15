import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';
import 'package:pets_next_door_flutter/presentation/widgets/indicator/loading_indicator.dart';

class PNDInfinitePagedList<T> extends StatelessWidget {
  PNDInfinitePagedList({
    super.key,
    required this.pagingController,
    this.scrollController,
    required this.itemBuilder,
    this.separatorBuilder,
  });

  final PagingController<int, T> pagingController;
  final ScrollController? scrollController;
  final ItemWidgetBuilder<T> itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColor.of.primaryGreen,
      displacement: 0.0,
      child: PagedListView<int, T>.separated(
        pagingController: pagingController,
        scrollController: scrollController,
        physics: AlwaysScrollableScrollPhysics(),
        builderDelegate: PagedChildBuilderDelegate<T>(
          itemBuilder: itemBuilder,
          firstPageProgressIndicatorBuilder: (context) => PndLoadingIndicator(),
          newPageProgressIndicatorBuilder: (context) => PndLoadingIndicator(),
        ),
        separatorBuilder: separatorBuilder ??
            (context, index) => Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColor.of.gray20,
                ),
      ),
      onRefresh: () => Future.sync(
        () => pagingController.refresh(),
      ),
    );
  }
}
