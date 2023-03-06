/// https://docs.getunleash.io/reference/feature-toggle-variants
class Variant {
  final String name;
  final bool enabled;
  final Map<String, dynamic> payload;

  static final defaultVariant = Variant(
    name: 'disabled',
    enabled: false,
    payload: <String, dynamic>{},
  );

  Variant({
    required this.name,
    required this.enabled,
    required this.payload,
  });

  factory Variant.fromJson(Map<String, dynamic> json) {
    return Variant(
      name: json["name"],
      enabled: json["enabled"],
      payload: json["payload"] ?? <String, dynamic>{},
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'enabled': enabled,
      'payload': payload,
    };
  }

  @override
  bool operator ==(Object other) {
    return other is Variant &&
        (other.name == name &&
            other.enabled == enabled &&
            other.payload == payload);
  }

  @override
  String toString() {
    return '{name: $name, enabled: $enabled, payload: $payload}';
  }

  @override
  int get hashCode => Object.hash(name, enabled, payload);
}
