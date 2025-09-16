
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sonar_assistant/api/models/request/request_models.dart';
import 'package:sonar_assistant/api/models/response/response_models.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://api.perplexity.ai")
abstract class PerplexityApi {
  factory PerplexityApi(Dio dio, {String? baseUrl}) = _PerplexityApi;

  @POST('/chat/completions')
  Future<ChatResponse> sendMessage(
    @Header('Authorization') String authorization,
    @Body() ChatRequest request,
  );
}
