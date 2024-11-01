import 'package:app/core/error/failure.dart';
import 'package:app/domain/index.dart';
import 'package:dartz/dartz.dart';

class FCustomers extends CustomerUseCase {
  List<Customer> customers = [
    const Customer(id: 1, name: 'name 1', phone: '772953640'),
    const Customer(id: 2, name: 'name 2', phone: '772953641'),
    const Customer(id: 3, name: 'name 3', phone: '772953642'),
  ];

  @override
  Future<Either<AppFailure, Customer>> add(Map<String, dynamic> c) async {
    try {
      assert(c.keys.contains('name'));
      assert(c['name'] is String);
      Customer customer = Customer(
          id: customers.length + 2, name: c['name'], phone: c['phone']);
      customers.add(customer);
      return Right(customer);
    } catch (e) {
      return Left(AppFailure.dbFailure());
    }
  }

  @override
  Future<Either<AppFailure, bool>> delete(int id) async {
    try {
      final customers2 = customers.where((cr) => cr.id != id).toList();
      customers = customers2;
      return const Right(true);
    } catch (e) {
      return Left(AppFailure.dbFailure());
    }
  }

  @override
  Future<Either<AppFailure, Customer>> edit(Customer c) async {
    try {
      customers = customers.map((cr) {
        if (cr == c) {
          return c;
        }
        return cr;
      }).toList();
      return Right(c);
    } catch (e) {
      return Left(AppFailure.dbFailure());
    }
  }

  @override
  Future<Either<AppFailure, List<Customer>>> getAll() async {
    return Right(customers);
  }

  @override
  Future<Either<AppFailure, Customer>> getById(int id) async {
    try {
      final c = customers.firstWhere((cr) => cr.id == id);
      return Right(c);
    } catch (e) {
      return Left(AppFailure.dbFailure());
    }
  }

  @override
  Future<Either<AppFailure, Customer>> create(Customer t) {
    // TODO: implement create
    throw UnimplementedError();
  }
}
