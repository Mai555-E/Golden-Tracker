import 'package:dartz/dartz.dart';

import '../../../../core/networking/dio_helper.dart';
import '../model/gold.dart';
import '../model/silver.dart';

class MineralsRepos {
  Future<Either<String, Gold>> getGoldenData({required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final result = await DioHelper.getData(endpoint: endpoint);
      return right(Gold.fromJson(result.data));
    } catch (e) {
      return Left(e.toString());
    }
  }





  Future<Either<String, Silver>> getSilverData({required String endpoint, Map<String, dynamic>? queryParameters}) async {
    try {
      final result = await DioHelper.getData(endpoint: endpoint);
      return right(Silver.fromJson(result.data));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
