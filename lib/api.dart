



import 'package:dio/dio.dart';
import 'package:juiceproject/loginresponse.dart';
import 'package:juiceproject/registerresponse.dart';
import 'package:juiceproject/url.dart';

class ApiClass {
  static ApiClass instance = ApiClass();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();
   
   ApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
    );
   }

   Future<Register?> registerUserApi(FormData formData) async {
    print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTT $formData");
    try {
      final result = await dio.post(url.registerEndpoint, data: formData);
      return Register.fromJson((result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }

   }

   Future<Loginclass?> loginUserApi(FormData formData) async {
    try {
      
      final result = await dio.post(url.baseUrl+ url.loginEndpoint, data: formData);
      print("hello");
      return Loginclass.fromJson(result.data);
    } on DioError catch (e) {
      print(e);
    } catch (e) {
      print(e);
  
  }
 

}}