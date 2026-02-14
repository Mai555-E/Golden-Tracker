import 'package:gold_tracker/feature/auth/data/model/silver.dart';

import '../../data/model/gold.dart';

abstract class MineralsState {}

class InitialState extends MineralsState {}

class LoadingState extends MineralsState {}

class ErrorState extends MineralsState {
  final String errorMsg;

  ErrorState({required this.errorMsg});

}

class SuccessGoldenState extends MineralsState {
  final Gold gold;

  SuccessGoldenState({required this.gold});
}

class SuccessSilverState extends MineralsState {
  final Silver gold;

  SuccessSilverState({required this.gold});
}
