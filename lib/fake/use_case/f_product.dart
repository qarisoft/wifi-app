import 'package:app/core/error/failure.dart';
import 'package:app/domain/index.dart';
import 'package:dartz/dartz.dart';

class FProducts extends ProductUseCase {
  static List<Charge> tracks = const [
    Charge(id: 1, productId: 1, inQnt: 3),
    Charge(id: 2, productId: 1, inQnt: 9),
    Charge(id: 3, productId: 1, outQnt: 8),
    Charge(id: 4, productId: 1, inQnt: 5),
    Charge(id: 5, productId: 1, outQnt: 2),
    Charge(id: 6, productId: 2, inQnt: 1),
    Charge(id: 7, productId: 2, inQnt: 4),
    Charge(id: 8, productId: 2, outQnt: 1),
    Charge(id: 9, productId: 2, inQnt: 3),
    Charge(id: 10, productId: 2, inQnt: 7),
    Charge(id: 11, productId: 3, outQnt: 3),
    Charge(id: 12, productId: 3, inQnt: 7),
    Charge(id: 13, productId: 3, outQnt: 4),
    Charge(id: 14, productId: 3, inQnt: 3),
    Charge(id: 15, productId: 3, outQnt: 1),
  ];

  static List<Product> products = [
    const Product(id: 1, name: 'name 1', price: 100),
    const Product(id: 2, name: 'name 2', price: 200),
    const Product(id: 3, name: 'name 3', price: 300),
  ];

  @override
  Future<Either<AppFailure, Product>> add(Map<String, dynamic> p) async {
    try {
      assert(p.keys.contains('price'));
      assert(p.keys.contains('name'));
      assert(p['name'] is String);
      assert(p['price'] is double);
      final Product product =
          Product(id: products.length + 2, name: p['name'], price: p['price']);
      products.add(product);
      return Right(product);
    } catch (e) {
      return const Left(AppFailure(0, 'msg'));
    }
  }

  @override
  Future<Either<AppFailure, bool>> delete(int id) async {
    products = products.where((p) => p.id != id).toList();
    return const Right(true);
  }

  @override
  Future<Either<AppFailure, Product>> edit(p) async {
    products = products.map((pro) {
      if (pro == p) {
        return p;
      }
      return pro;
    }).toList();
    return Right(p);
  }

  @override
  Future<Either<AppFailure, List<Product>>> getAll() async {
    return Right(products);
  }

  @override
  Future<Either<AppFailure, Product>> getById(int id) async {
    try {
      return Right(products.firstWhere((p) => p.id == id));
    } catch (e) {
      return const Left(AppFailure(0, 'msg'));
    }
  }

  @override
  Future<Either<AppFailure, List<ProductCharges>>> all() async {
    final res = products.map((prod) {
      final in_ = tracks
          .where((c) => (c.productId == prod.id) && c.outQnt == 0)
          .toList()
          // .map((c) => c.inQnt)
          .toList()
          .fold(0, (a, b) => a + b.inQnt);
      final out = tracks
          .where((c) => (c.productId == prod.id) && c.inQnt == 0)
          .toList()
          .fold(0, (a, b) => a + b.outQnt);

      return ProductCharges(in_: in_, out: out, product: prod, rest: in_ - out);
    }).toList();

    return Right(res);
  }

  @override
  Future<Either<AppFailure, ProductCharges>> chargeById(int id) {
    // TODO: implement chargeById
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, Product>> create(Product t) {
    // TODO: implement create
    throw UnimplementedError();
  }
}
