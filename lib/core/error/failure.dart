final class AppFailure {
  const AppFailure(this.code, this.msg);

  final int code;
  final String msg;

  factory AppFailure.dbFailure({int? c, String? m}) =>
      AppFailure(c ?? 0, m ?? 'db failure');
}
