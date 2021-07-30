import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class IImageService {
  Future<Option<File>> selectFromGallery();
  Future<Option<List<File>>> pickImageMultiple();

  Future<Option<File>> fromCamera();
  Future<Option<File>> selectAndCrop();
  Future<Option<File>> select({required ImageSource source});
}
