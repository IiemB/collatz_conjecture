import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'license_state.dart';
part 'license_cubit.freezed.dart';

@injectable
class LicenseCubit extends Cubit<LicenseState> {
  final LicenseRepository _licenseRepository;
  LicenseCubit(this._licenseRepository) : super(const LicenseState.initial());

  void getLicense() async {
    emit(const LicenseState.loading());

    final result = await _licenseRepository.getLicensesData();

    result.fold(
      (l) => emit(LicenseState.error(l)),
      (r) => emit(LicenseState.loaded(r)),
    );
  }
}
