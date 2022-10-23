import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/license/domain/usecases/licenses_usecases.dart';
import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'license_state.dart';
part 'license_cubit.freezed.dart';

@injectable
class LicenseCubit extends Cubit<LicenseState> {
  LicenseCubit() : super(const LicenseState.initial());

  void getLicense() async {
    emit(const LicenseState.loading());

    final result = await LicensesUsecases.getLicensesData();

    result.fold(
      (l) => emit(LicenseState.error(l)),
      (r) => emit(LicenseState.loaded(r)),
    );
  }
}
