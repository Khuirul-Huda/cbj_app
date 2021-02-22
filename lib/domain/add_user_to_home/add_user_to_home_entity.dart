import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_to_home_entity.freezed.dart';

@freezed
abstract class AddUserToHomeEntity implements _$AddUserToHomeEntity {
  const AddUserToHomeEntity._();

  const factory AddUserToHomeEntity({
    @required AddUserToHomeEmail email,
    @required AddUserToHomePermission permission,
  }) = _AddUserToHomeEntity;

  factory AddUserToHomeEntity.empty() => AddUserToHomeEntity(
        email: AddUserToHomeEmail(''),
        permission: AddUserToHomePermission(''),
      );

  Option<AddUserToHomeFailures<dynamic>> get failureOption {
    return email.value.fold((f) => some(f), (_) => none());
  }
}