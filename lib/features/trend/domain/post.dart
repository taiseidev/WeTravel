import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_travel/features/trend/domain/value/media_type.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @mediaTypeConverter required MediaType type,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
