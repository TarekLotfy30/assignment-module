// an abstract contract for all DTOs
abstract class BaseModel<T> {
  Map<String, dynamic> toJson();
  T fromJson(Map<String, dynamic> json);
}
