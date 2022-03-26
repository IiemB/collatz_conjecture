import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:collatz_conjecture/src/features/license/data/repositories/license_repository.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
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

    final _result = await _licenseRepository.getLicensesData();

    _result.fold(
      (l) => emit(LicenseState.error(l)),
      (r) => emit(LicenseState.loaded(r)),
    );
  }
}
