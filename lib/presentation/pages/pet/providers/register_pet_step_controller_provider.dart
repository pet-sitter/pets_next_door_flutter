import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_pet_step_controller_provider.g.dart';

@riverpod
class RegisterPetStepController extends _$RegisterPetStepController {
  final _pagingDuration = Duration(milliseconds: 500);
  final _pagingCurve = Curves.easeOutExpo;

  @override
  Raw<PageController> build() {
    final controller = PageController();

    ref.onDispose(
      controller.dispose,
    );

    return controller;
  }

  void next() {
    state.nextPage(
      duration: _pagingDuration,
      curve: _pagingCurve,
    );
  }

  void prev() {
    state.previousPage(
      duration: _pagingDuration,
      curve: _pagingCurve,
    );
  }
}

@riverpod
class CanBackToPreviousStep extends _$CanBackToPreviousStep {
  @override
  bool build() {
    final controller = ref.watch(registerPetStepControllerProvider);
    void listenController() {
      state = controller.hasClients && controller.page!.ceil() >= 1;
    }

    controller.addListener(
      listenController,
    );

    ref.onDispose(
      () => controller.removeListener(
        listenController,
      ),
    );

    return false;
  }
}
