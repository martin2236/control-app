import 'dart:convert';

List<ProductoDb> productoDbFromJson(String str) =>
    List<ProductoDb>.from(json.decode(str).map((x) => ProductoDb.fromJson(x)));

String productoDbToJson(List<ProductoDb> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductoDb {
  final int id;
  final String nombre;
  final String imagen;
  final String categoria;
  final String cantidad;
  final String unidad;
  final double precio;
  final int estado;
  final int updatedAt;
  final int? deletedAt;

  ProductoDb({
    required this.id,
    required this.nombre,
    required this.imagen,
    required this.categoria,
    required this.cantidad,
    required this.unidad,
    required this.precio,
    required this.estado,
    required this.updatedAt,
    required this.deletedAt,
  });

    factory ProductoDb.fromJson(Map<String, dynamic> json) => ProductoDb(
        id: json["id"],
        nombre: json["nombre"],
        imagen: json["imagen"],
        categoria: json["fkcategoria"].toString(), 
        cantidad: json["cantidad"].toString(), 
        unidad: json["fkunidad"].toString(), 
        precio: json["precio"].toDouble(),
        estado: json["estado"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"] != null ? json["deleted_at"] as int? : null, 
      );

  Map<String, dynamic> toJson() => {
        "id":id,
        "nombre": nombre,
        "imagen": imagen,
        "categoria": categoria,
        "cantidad": cantidad,
        "unidad": unidad,
        "precio": precio,
        "estado": estado,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };
}
