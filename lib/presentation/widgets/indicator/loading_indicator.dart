import 'package:flutter/material.dart';
import 'package:pets_next_door_flutter/core/constants/colors.dart';

class PndLoadingIndicator extends StatelessWidget {
  const PndLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 35,
        width: 35,
        child: CircularProgressIndicator(
          color: AppColor.of.primaryGreen,
        ),
      ),
    );
  }
}
