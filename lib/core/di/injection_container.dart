import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:route_challenge/features/home/domain/usecases/get_all_products_use_case.dart';
import 'package:route_challenge/features/home/presentation/cubit/home_cubit.dart';

import 'injection_container.config.dart';

final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
)  
void configureDependencies() => getIt.init();  

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ));
    return dio;
  }

  @lazySingleton
  HomeCubit get homeCubit => HomeCubit(
        getAllProductsUseCase: getIt<GetAllProductsUseCase>(),
      );
}
