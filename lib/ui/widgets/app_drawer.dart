import 'package:app/ui/providers/index.dart';
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/share/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomeDrawar extends StatelessWidget {
  const CustomeDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.only(
                  bottom: 40, left: 10, right: 10, top: 20),
              decoration: const BoxDecoration(
                color: AppTheme.g400,
              ),
              child: Column(
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      final auth = ref.watch(authProvider).whenOrNull(
                        data: (data) {
                          if (data is Authinticated) {
                            return data.user;
                          }
                        },
                      );
                      return Row(
                        children: [
                          const CircleAvatar(
                            child: Text('N'),
                          ),
                          10.hSpace,
                          Text(auth?.userName ?? ''),
                        ],
                      );
                    },
                  )
                ],
              )),
          ListTile(
            title: Text('Years'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
