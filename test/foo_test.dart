import 'package:get_it/get_it.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    GetIt.instance.registerFactory<int>(() => 42);
  });

  tearDown(GetIt.instance.reset);

  test('foo', () {
    expect(GetIt.instance<int>(), equals(42));
  });
}
