import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pets_next_door_flutter/core/enums/image_format.enum.dart';
import 'package:pets_next_door_flutter/presentation/widgets/bottom_sheet/option_bottom_sheet.dart';

class ImagePickerService {
  ImagePickerService._();

  final _imagePicker = ImagePicker();

  static final ImagePickerService to = ImagePickerService._();

  Future<File?> pickImage(ImageSource imageSource) async {
    XFile? imageXFile = await _imagePicker.pickImage(source: imageSource);

    if (imageXFile == null) return null;

    return File(imageXFile.path);
  }

  static Future<ImageSource?> showImageSourceOptions(
      BuildContext context) async {
    return showModalBottomSheet<ImageSource?>(
      context: context,
      builder: (context) => OptionListBottomSheet<ImageSource>(
          options: ImageSource.values.map((e) => e.name).toList(),
          onOptionTapped: (int option) {
            context.pop(ImageSource.values[option]);
          },
          onCloseBtnTapped: () {
            context.pop();
          },
          leadingText: ''),
    );
  }

  static Future<File?> compressAndConvertFormat(
    File imageFile, {
    CompressFormat format = CompressFormat.png,
    int quality = 100,
    int? minWidth,
    int? minHeight,
  }) async {
    XFile? result;

    try {
      result = await FlutterImageCompress.compressAndGetFile(
        imageFile.path,
        '${(await getTemporaryDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}.${format.name}',
        format: format,
        quality: quality,
        minWidth: minWidth ?? 1920,
        minHeight: minHeight ?? 1080,
      );

      if (result == null) return null;
    } on UnsupportedError catch (e) {}

    return File(result!.path);
  }

  static ImageFormat? getImageFormat(File file) {
    if (file.path.endsWith('.${ImageFormat.jpeg.str}') ||
        file.path.endsWith('.jpg')) {
      return ImageFormat.jpeg;
    } else if (file.path.endsWith('.${ImageFormat.png.str}')) {
      return ImageFormat.png;
    } else {
      return null;
    }
  }
}
