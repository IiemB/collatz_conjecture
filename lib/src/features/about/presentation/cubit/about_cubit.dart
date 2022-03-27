import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/about/domain/repositories/about_repository.dart';
import 'package:collatz_conjecture/src/services/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'about_state.dart';
part 'about_cubit.freezed.dart';

@injectable
class AboutCubit extends Cubit<AboutState> {
  final AboutRepository _aboutRepository;
  AboutCubit(this._aboutRepository) : super(const AboutState.initial());

  void getAppInfo() async {
    emit(const AboutState.loading());

    await Future.delayed(const Duration(seconds: 4));

    final _result = await _aboutRepository.getAppInfo();

    _result.fold(
      (l) => emit(AboutState.error(l)),
      (r) => emit(AboutState.infoLoaded(r)),
    );
  }
}
