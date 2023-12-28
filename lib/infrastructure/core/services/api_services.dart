import 'package:chopper/chopper.dart';
import 'package:inshort_task/domain/core/url/url.dart';
part 'api_services.chopper.dart';

@ChopperApi(baseUrl: appBaseUrl)
abstract class ApiServices extends ChopperService {
  @Get(path: 'category=')
  Future<Response> getNews(@Query('category') String category);
  static ApiServices create() {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(appUrl),
      services: [
        _$ApiServices(),
      ],
      converter: const JsonConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );
    return _$ApiServices(client);
  }
}
