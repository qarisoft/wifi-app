import 'package:app/domain/index.dart';
import 'package:app/fake/use_case.dart';
import 'package:app/fake/use_case/f_customer.dart';
import 'package:app/fake/use_case/f_order.dart';
import 'package:app/fake/use_case/f_order_item.dart';
import 'package:app/fake/use_case/f_product.dart';

ProductUseCase productUseCase() => FProducts();

CustomerUseCase customerUseCase() => FCustomers();

OrderUseCase orderUseCase() => FOrders();

OrderItemUseCase orderItemUseCase() => FOrderItems();
