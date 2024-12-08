import 'package:app/core/utils/extensions.dart';
// import 'package:app/core/utils/types.dart';
import 'package:app/domain/use_cases/use_case.dart';
import 'package:app/ui/providers/v2/ui/state.dart';
import 'package:app/ui/providers/v2/ui/ui.dart' show appUiProvider;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class ResNotifier<T> extends AsyncNotifier<T> {
  get start => ref.read(appUiProvider.notifier).startLoading;

  get end => ref.read(appUiProvider.notifier).stopLoading;

  get _call => callFn;

  get dealWith => ref.dealWith;

  callFn(
    Future<RTp> Function() fun, {
    Function(RTp res)? deal,
    AppMsg? ms,
    ProviderOrFamily? p,
  }) async =>
      await ref.callFn(
        fun,
        deal: deal,
        ms: ms,
        p: p,
      );
}

abstract class ListR<T, CD> extends ResNotifier<List<T>> {
  CreateDeleteUpdate<T, CD> get useCase;

  CD fromModel(T d);

  int getId(T d);

  @override
  FutureOr<List<T>> build() async {
    final res = await useCase.getAll();
    return res.dataList;
  }

  create(CD formData) => callFn(
        () => useCase.create(formData),
      );

  edit(T data) => callFn(
        () => useCase.update(fromModel(data), getId(data)),
      );

  editData(CD data, int id) => callFn(
        () => useCase.update(data, id),
      );

  del(int id) => callFn(
        () => useCase.delete(id),
      );
}

extension ProviderHelper<T> on Ref<T> {
  dealWith(
    RTp res, {
    AppMsg? ms,
    ProviderOrFamily? invProvider,
  }) {
    res.fold(
      (l) => end(er: l),
      (r) {
        end(ms: ms ?? const AppMsg.wellDone());
        invalidateSelf();
        if (invProvider != null) {
          invalidate(invProvider);
        }
      },
    );
  }

  Future<void> callFn(
    Future<RTp> Function() fun, {
    Function(RTp res)? deal,
    AppMsg? ms,
    ProviderOrFamily? p,
  }) async {
    start();
    final res = await fun();
    //
    deal != null ? deal.call(res) : dealWith(res, ms: ms, invProvider: p);
  }

  get start => read(appUiProvider.notifier).startLoading;

  get end => read(appUiProvider.notifier).stopLoading;
}
