import 'package:flutter_test/flutter_test.dart';
import 'package:openapi/openapi.dart';
import 'package:one_of/one_of.dart';

/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  test('Test polymorphic request body fails serialization', () async {

    // Test body
    final requestBody = TestRequest(
      (b) => b
        ..type = TestRequestTypeEnum.requestB
        ..oneOf = OneOf1<RequestB>(
          value: RequestB(
            (b) => b
              ..name = ""
              ..credentials = RequestA((b) => b
                ..email = "email"
                ..password = "password").toBuilder(),
          ),
        ),
    );

    // Will fail due to serialization error
    await instance.test(
        testRequest: requestBody,
      );
  });
}
