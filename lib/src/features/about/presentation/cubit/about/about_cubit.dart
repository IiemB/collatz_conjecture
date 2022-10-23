import 'package:bloc/bloc.dart';
import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:collatz_conjecture/src/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'about_state.dart';
part 'about_cubit.freezed.dart';

class AboutCubit extends Cubit<AboutState> {
  AboutCubit() : super(const AboutState.initial());

  void getAppInfo() async {
    emit(const AboutState.loading());

    await Future.delayed(const Duration(seconds: 4));

    final result = await AboutUsecases.getAppInfo();

    result.fold(
      (l) => emit(AboutState.error(l)),
      (r) => emit(AboutState.infoLoaded(r)),
    );
  }
}
