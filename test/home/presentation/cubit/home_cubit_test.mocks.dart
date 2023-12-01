// Mocks generated by Mockito 5.4.3 from annotations
// in route_challenge/test/home/presentation/cubit/home_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:route_challenge/core/error/failures.dart' as _i6;
import 'package:route_challenge/features/home/domain/entities/product_entity.dart'
    as _i7;
import 'package:route_challenge/features/home/domain/repositories/home_domain_repo.dart'
    as _i2;
import 'package:route_challenge/features/home/domain/usecases/get_all_products_use_case.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeHomeDomainRepo_0 extends _i1.SmartFake
    implements _i2.HomeDomainRepo {
  _FakeHomeDomainRepo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetAllProductsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAllProductsUseCase extends _i1.Mock
    implements _i4.GetAllProductsUseCase {
  MockGetAllProductsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.HomeDomainRepo get homeDomainRepo => (super.noSuchMethod(
        Invocation.getter(#homeDomainRepo),
        returnValue: _FakeHomeDomainRepo_0(
          this,
          Invocation.getter(#homeDomainRepo),
        ),
      ) as _i2.HomeDomainRepo);

  @override
  set homeDomainRepo(_i2.HomeDomainRepo? _homeDomainRepo) => super.noSuchMethod(
        Invocation.setter(
          #homeDomainRepo,
          _homeDomainRepo,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failures, List<_i7.ProductEntity>>> call() =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i6.Failures, List<_i7.ProductEntity>>>.value(
                _FakeEither_1<_i6.Failures, List<_i7.ProductEntity>>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failures, List<_i7.ProductEntity>>>);
}