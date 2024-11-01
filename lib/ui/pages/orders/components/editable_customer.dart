import 'package:app/ui/pages/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/models/v1/customer.dart';
import '../../../providers/v1/customers/customers.dart';
import '../../../providers/v1/orders/get_order.dart';
import '../../../providers/v1/orders/orders.dart';
import '../../../widgets/buttons/confirm.dart';
import '../../../widgets/loading/loading.dart';

class DeliverWidget extends StatelessWidget {
  const DeliverWidget({super.key, required this.val, this.onChange});

  final bool val;
  final Function(bool?)? onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Delivered'),
        Checkbox(
          value: val,
          onChanged: onChange,
        )
      ],
    );
  }
}

class CustomerEditableWidget extends ConsumerWidget {
  const CustomerEditableWidget(this.orderId, {super.key});

  final int orderId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (customer, order) = ref.watch(getOrderWithCustomerProvider(orderId));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(customer?.name ?? '-'),
        ),
        IconButton(
            onPressed: (order != null && !order.isDelivered)
                ? () => showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        // titlePadding: EdgeInsets.all(5),
                        contentPadding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: const Text('Customer'),
                        children: [
                          HookConsumer(
                            builder: (context, ref, child) {
                              final controller = useTextEditingController();
                              final selectedCustomer =
                                  useState<Customer?>(customer);
                              final customers =
                                  ref.watch(customersReadyProvider);
                              return Column(
                                children: [
                                  DropdownMenu<Customer>(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    controller: controller,
                                    enableFilter: true,
                                    requestFocusOnTap: true,
                                    label: const Text('Customer'),
                                    onSelected: (Customer? customer) =>
                                        selectedCustomer.value = customer,
                                    dropdownMenuEntries: customers
                                        .map<DropdownMenuEntry<Customer>>(
                                      (Customer c) {
                                        return DropdownMenuEntry<Customer>(
                                          value: c,
                                          label: c.name,
                                        );
                                      },
                                    ).toList(),
                                    initialSelection: selectedCustomer.value,
                                  ),
                                  20.vSpace,
                                  ConfirmButton(
                                    onPressed: () {
                                      if (selectedCustomer.value != null) {
                                        LoadingScreen.instance()
                                            .show(context: context);
                                        ref
                                            .read(ordersProvider.notifier)
                                            .updateOrder(
                                              orderId,
                                              cId: selectedCustomer.value?.id,
                                            )
                                            .whenComplete(() =>
                                                LoadingScreen.instance()
                                                    .hide());

                                        Navigator.of(context).pop();
                                      }
                                    },
                                  ),
                                  5.vSpace
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    )
                : null,
            icon: const Icon(Icons.change_circle)),
        if (order != null)
          DeliverWidget(
            val: order.isDelivered,
          )
      ],
    );
  }
}
