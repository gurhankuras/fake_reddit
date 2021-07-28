import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reddit_clone/domain/i_image_service.dart';

class ImageService implements IImageService {
  @override
  Future<Option<File>> selectFromGallery() async {
    return await select(source: ImageSource.gallery);
  }

  @override
  Future<Option<File>> fromCamera() async {
    return await select(source: ImageSource.camera);
  }

  Future<Option<File>> select({required ImageSource source}) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: source);
    if (image == null) {
      return none();
    }
    return some(File(image.path));
  }

  @override
  Future<Option<File>> selectAndCrop() {
    // TODO: implement selectAndCrop
    throw UnimplementedError();
  }
}
