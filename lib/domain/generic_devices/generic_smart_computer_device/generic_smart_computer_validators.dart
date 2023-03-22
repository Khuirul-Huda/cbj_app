import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericSmartComputerStateNotEmpty(
  String input,
) {
  return right(input);
}

/// Return all the valid actions for blinds
List<String> smartComputerAllValidActions() {
  return [
    DeviceActions.suspend.toString(),
    DeviceActions.shutdown.toString(),
    DeviceActions.itIsFalse.toString(),
  ];
}