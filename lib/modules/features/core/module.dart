import 'package:flutter/material.dart';
import 'package:koin/koin.dart';
import 'package:koin_bloc/koin_bloc.dart';
import 'package:rose_de_mur/features/core/data/moor/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/data/moor/repository/supplies_repository.dart';
import 'package:rose_de_mur/features/core/data/moor/source/dao/plants_dao.dart';
import 'package:rose_de_mur/features/core/data/moor/source/dao/supplies_dao.dart';
import 'package:rose_de_mur/features/core/data/moor/source/database.dart';
import 'package:rose_de_mur/features/core/domain/repository/plants_repository.dart';
import 'package:rose_de_mur/features/core/domain/repository/supply_repository.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/create_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/delete_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/get_plant_info_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/get_plants_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/update_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/watch_plant_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/plants_crud/watch_plants_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/create_supply_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/delete_supply_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/get_supplies_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/get_supply_info_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/update_supply_use_case.dart';
import 'package:rose_de_mur/features/core/domain/use_case/supply_crud/watch_supplies_use_case.dart';
import 'package:rose_de_mur/features/core/presentation/router/router.dart';
import 'package:rose_de_mur/features/core/presentation/theming/colors.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/app_bar/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/application/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/details/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/details/update_supply_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/details/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/plants_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/supplies_bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/home/widget.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/bloc/bloc.dart';
import 'package:rose_de_mur/features/core/presentation/widgets/supply_page/widget.dart';

abstract class CoreModule {
  CoreModule._();

  static Module create() => module()
    ..single((scope) => Database())
    ..single((scope) => PlantsDao(scope.get()))
    ..single((scope) => SuppliesDao(scope.get()))
    // ..single<MemorySource>((scope) => MemorySourceImpl())
    // ..single<PlantsRepository>((scope) => PlantsRepositoryInMemoryImpl(scope.get()))
    // ..single<SupplyRepository>((scope) => SupplyRepositoryInMemoryImpl(scope.get(), scope.get()))
    ..single<PlantsRepository>((scope) => PlantsRepositoryMoorImpl(scope.get()))
    ..single<SupplyRepository>((scope) => SupplyRepositoryMoorImpl(scope.get(), scope.get()))
    ..factory((scope) => GetPlantsUseCase(scope.get()))
    ..factory((scope) => GetPlantInfoUseCase(scope.get()))
    ..factory((scope) => CreatePlantUseCase(scope.get()))
    ..factory((scope) => UpdatePlantUseCase(scope.get()))
    ..factory((scope) => DeletePlantUseCase(scope.get()))
    ..factory((scope) => WatchPlantsUseCase(scope.get()))
    ..factory((scope) => WatchPlantUseCase(scope.get()))
    ..factory((scope) => GetSuppliesUseCase(scope.get()))
    ..factory((scope) => GetSupplyInfoUseCase(scope.get()))
    ..factory((scope) => CreateSupplyUseCase(scope.get()))
    ..factory((scope) => UpdateSupplyUseCase(scope.get()))
    ..factory((scope) => DeleteSupplyUseCase(scope.get()))
    ..factory((scope) => WatchSuppliesUseCase(scope.get()))
    ..single((scope) => ThemeData(
          primaryColor: Palette.primary,
          accentColor: Palette.primaryAccent,
          scaffoldBackgroundColor: Colors.white,
          dividerColor: Colors.black,
          dividerTheme: DividerThemeData(
            thickness: pBorderThickness,
            space: pBorderThickness,
          ),
          appBarTheme: AppBarTheme(
            color: Color(0xFFE5EDE9),
            brightness: Brightness.light,
          ),
        ))
    ..single((scope) => SimpleRouter(
          {
            Routes.plants: (context) => HomeGridWidget(),
            Routes.supply: (context) => SupplyPageWidget(),
          },
          initialRoute: Routes.plants,
        ))
    ..scope<Application>((dsl) => dsl.scopedCubit((scope) => ApplicationBloc()))
    ..scope<HomeGridWidget>((dsl) => dsl
      ..scopedCubit((scope) => PlantsBloc(scope.get()))
      ..scopedCubit((scope) => SuppliesBloc(scope.get(), scope.get())))
    ..scope<PlantsSelector>((dsl) => dsl.scopedCubit((scope) => PlantsBloc(scope.get())))
    ..scope<DetailsWidget>((dsl) => dsl.scopedCubit((scope) => DetailsBloc(scope.get(), scope.get(), scope.get())))
    ..scope<SupplyPageWidget>((dsl) => dsl.scopedCubit((scope) => SupplyPageBloc(scope.get())))
    ..scope<SupplyRow>((dsl) => dsl.scopedCubit((scope) => UpdateSupplyBloc(scope.get())));
}
