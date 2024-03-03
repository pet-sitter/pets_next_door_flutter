import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pets_next_door_flutter/core/services/image_picker_service.dart';
import 'package:pets_next_door_flutter/core/services/toast_service.dart';
import 'package:pets_next_door_flutter/features/media/media.dart';
import 'package:pets_next_door_flutter/presentation/widgets/toast/app_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_profile_img_provider.g.dart';

///
/// 로컬에서 불러온 파일 이미지를 관리하는 프로바이더
///
@riverpod
class SignUpProfileImg extends _$SignUpProfileImg {
  @override
  File? build() {
    return null;
  }

  Future<void> pickImageFile(ImageSource imageSource) async {
    try {
      final imageFile = await ImagePickerService.to.pickImage(imageSource);
      state = imageFile;
    } on Exception catch (e) {
      if (e is PlatformException) {
        ToastService.show(const CustomToast(message: '권한을 허용해주세요'));
      } else {
        ToastService.show(const CustomToast(
            message: '사진첩에서 정상적으로 이미지를 불러오지 못했어요. 다시 시도해주세요'));
      }
    }
  }

  Future<int?> uploadImage() async {
    if (state == null) return null;

    final uploadedImage = await uploadImageUseCase.call(state!);

    return uploadedImage.fold(
      onSuccess: (image) {
        return image.id;
      },
      onFailure: (failure) => throw failure,
    );
  }
}
