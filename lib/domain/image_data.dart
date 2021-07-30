import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ImageData {
  late final String id;
  final File image;
  final String caption;
  final String link;

  ImageData({
    required this.image,
    required this.caption,
    required this.link,
  }) : id = uuid.v1();

  setId() {
    id = uuid.v1();
  }

  factory ImageData.withEmptyInfo({required File image}) => ImageData(
        image: image,
        caption: '',
        link: '',
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageData &&
        other.id == id &&
        other.image == image &&
        other.caption == caption &&
        other.link == link;
  }

  @override
  int get hashCode {
    return id.hashCode ^ image.hashCode ^ caption.hashCode ^ link.hashCode;
  }

  ImageData copyWith({
    String? id,
    File? image,
    String? caption,
    String? link,
  }) {
    if (id != null) {
      return ImageData(
        image: image ?? this.image,
        caption: caption ?? this.caption,
        link: link ?? this.link,
      )..setId();
    }
    return ImageData(
      image: image ?? this.image,
      caption: caption ?? this.caption,
      link: link ?? this.link,
    );
  }

  @override
  String toString() {
    return 'ImageData(id: $id, image: $image, caption: $caption, link: $link)';
  }
}
