import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:route_challenge/core/error/server_failures.dart';
import 'package:route_challenge/features/home/domain/entities/product_entity.dart';
import 'package:route_challenge/features/home/domain/usecases/get_all_products_use_case.dart';
import 'package:route_challenge/features/home/presentation/cubit/home_cubit.dart';
import 'home_cubit_test.mocks.dart';

@GenerateMocks([GetAllProductsUseCase])
void main() {
  var getAllProductUseCase = MockGetAllProductsUseCase();

  HomeCubit cubit = HomeCubit(getAllProductsUseCase: getAllProductUseCase);

  group('homeCubit', () {
    test('cubit emits Success state when getAllProducts returns list',
        () async {
      List<ProductEntity> expectedList = [
        const ProductEntity(productID: 1),
        const ProductEntity(productID: 2)
      ];
      when(getAllProductUseCase.call())
          .thenAnswer((_) async => Right(expectedList));
      await cubit.getAllProducts();

      expect(cubit.state, isA<HomeGetProductsSuccessState>());
      expect(cubit.allProducts, expectedList);
    });
    test("cubit emits Error state when getAllProducts fail", () async {
      String errorMessage = "Fail Test case";
      when(getAllProductUseCase.call())
          .thenAnswer((_) async => Left(ServerFailures(errorMessage)));
      await cubit.getAllProducts();
      expect(cubit.state, isA<HomeGetProductsErrorState>());
    });
  });
}
