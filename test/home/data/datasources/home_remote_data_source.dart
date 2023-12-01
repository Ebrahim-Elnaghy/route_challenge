import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:route_challenge/core/api/api_service.dart';
import 'package:route_challenge/core/api/end_points.dart';
import 'package:route_challenge/core/error/failures.dart';
import 'package:route_challenge/core/error/server_failures.dart';
import 'package:route_challenge/features/home/data/datasources/home_remote_data_source.dart';
import 'package:route_challenge/features/home/data/models/product_model.dart';

import 'home_remote_data_source.mocks.dart';

@GenerateMocks([ApiService])
main() {
  var apiService = MockApiService();
  var homeRemoteDataSource = HomeRemoteDataSource(apiService: apiService);

  group('homeRemoteDataSource', () {
    test('return products if the http call complete successfully ', () async {
      var response = {
        "products": [
          {
            "id": 1,
          },
        ]
      };
      when(apiService.get(endPoint: EndPoints.products))
          .thenAnswer((_) async => response);

      expect(await homeRemoteDataSource.getAllProducts(),
          isA<Right<Failures, List<ProductModel>>>());
    });
    test('return products if the http call complete fail ', () async {
      when(apiService.get(endPoint: EndPoints.products))
          .thenThrow((_) async => ServerFailures("message"));

      expect(await homeRemoteDataSource.getAllProducts(),
          isA<Left<Failures, dynamic>>());
    });
  });
}
