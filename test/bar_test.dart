import 'package:get_it/get_it.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    GetIt.instance.registerFactory<int>(() => 123);
  });

  tearDown(GetIt.instance.reset);

  test('bar', () {
    expect(GetIt.instance<int>(), equals(123));
  });
}
