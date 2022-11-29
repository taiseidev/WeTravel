import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_type.freezed.dart';

@freezed
class MediaType with _$MediaType {
  const factory MediaType({
    required String value,
  }) = _MediaType;
}

const mediaTypeConverter = MediaTypeConverter();

class MediaTypeConverter implements JsonConverter<MediaType, String> {
  const MediaTypeConverter();

  @override
  MediaType fromJson(String value) {
    return MediaType(value: value);
  }

  @override
  String toJson(MediaType type) {
    if (type.runtimeType != String) {
      throw Exception('typeがString以外です。');
    }
    return type.value;
  }
}
