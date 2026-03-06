// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  userId: json['user_id'] as String,
  deviceId: json['device_id'] as String,
  username: json['username'] as String,
  nickname: json['nickname'] as String?,
  email: json['email'] as String?,
  avatar: json['avatar'] as String?,
  isVip: json['is_vip'] as bool?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'user_id': instance.userId,
  'device_id': instance.deviceId,
  'username': instance.username,
  'nickname': instance.nickname,
  'email': instance.email,
  'avatar': instance.avatar,
  'is_vip': instance.isVip,
  'created_at': instance.createdAt?.toIso8601String(),
};
