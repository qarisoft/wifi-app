import 'package:app/core/app.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_dtls/gen_card_dtls.dart';
import 'package:app/domain/models/v2/gen_card/gen_card_hdr/gen_card_hdr.dart';
// import 'package:app/domain/models/v2/operational_card/operational_card.dart';
// import 'package:app/domain/models/index.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_detail/sales_detail.dart';
import 'package:app/domain/models/v2/sales/sales_order/sales_header/sales_header.dart';
import 'package:app/domain/use_cases/v2/cards/cards.dart';
import 'package:app/domain/use_cases/v2/sales/sales.dart';
import 'package:app/ui/pages/home/provider/provider.dart';
import 'package:app/ui/providers/index.dart' show cardsProvider;
import 'package:app/ui/share/ex.dart';
import 'package:app/ui/widgets/app_bar.dart';
import 'package:app/ui/widgets/app_drawer.dart';
// import 'package:app/ui/widgets/layout/index.dart';
import 'package:app/ui/widgets/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/v2/card/card.dart' as c_model;
import '../auth/components/textfield.dart';
import '../components/create_form.dart';
import 'details.dart';
import 'summary.dart';

enum HomeTap { summary, details }

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return SafeArea(
          child: HookConsumer(
            builder: (context, ref, c) {
              final tab = useState<HomeTap>(HomeTap.summary);


              final toggle = useCallback(() {
                if (tab.value == HomeTap.details) {
                  tab.value = HomeTap.summary;
                } else {
                  tab.value = HomeTap.details;
                }
              }, [tab]);

              return Scaffold(
                drawer: const CustomeDrawar(),
                appBar: const CustomAppBar(
                  title: Text('Home'),
                ),
                body: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: toggle,
                          child: Text(tab.value == HomeTap.details
                              ? 'summary'
                              : 'details'),
                        ),
                      ],
                    ),
                    if (tab.value == HomeTap.summary) const SummaryPage(),
                    if (tab.value == HomeTap.details) const DetailsPage()
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return HookConsumer(
                          // child: ,
                          builder: (context, ref, c) {
                            final hdrUseCase = App.di<GnCardHdrUseCase>();
                            final dtlUseCase = App.di<GnCardDtlUseCase>();
                            final slsHdrU = App.di<SlsOrderHdrUseCase>();
                            final slsDtlU = App.di<SlsOrderDtlUseCase>();

                            final qty = useTextEditingController(text: '0');
                            final statment =
                                useTextEditingController(text: 'G');
                            final cardIdC = useTextEditingController();
                            final cardId = useState<int>(0);
                            final pointId = useState<int>(0);
                            final isRejected = useState<bool>(false);
                            final isValid = useState<bool>(false);
                            final updateCardId = useCallback((int? id) {
                              if (id != null) {
                                cardId.value = id;
                              }
                            }, [cardId]);

                            return ref.watch(cardsProvider).wn(
                              (List<c_model.Card> data) {
                                return CreateForm(
                                  action: () async {
                                    if (isRejected.value) {
                                      final a = await slsHdrU.create(
                                        SlsOrdHdrData(
                                          salePointId: pointId.value,
                                          statement: statment.text,
                                        ),
                                      );
                                      final hdrId =
                                          a.fold((l) => null, (r) => r);
                                      if (hdrId != null) {
                                        final a2 = await slsDtlU.create(
                                          SlsOrdDtlData(
                                            hdrId: hdrId,
                                            cardId: cardId.value,
                                            outQty: isValid.value
                                                ? 0
                                                : qty.text.toInt(),
                                            inQty: isValid.value
                                                ? qty.text.toInt()
                                                : 0,
                                            isValid: isValid.value,
                                            isRejected: isRejected.value,
                                          ),
                                        );
                                        if (a2.isRight()) {
                                          slsHdrU.approve(hdrId).then(
                                            (_) {
                                              ref.invalidate(summeryProvider);
                                              // ignore: use_build_context_synchronously
                                              Navigator.of(context).maybePop();
                                            },
                                          );
                                        }
                                      }
                                      return;
                                    }
                                    if (!isRejected.value) {
                                      final a = await hdrUseCase.create(
                                        GnCardHdrData(
                                          description: statment.text,
                                          generatedDate: DateTime.now(),
                                        ),
                                      );
                                      final hdrId =
                                          a.fold((l) => null, (r) => r);
                                      if (hdrId != null) {
                                        final a2 = await dtlUseCase.create(
                                          GnCardDtlData(
                                            hdrId: hdrId,
                                            cardId: cardId.value,
                                            quantity: qty.text.toInt(),
                                          ),
                                        );
                                        if (a2.isRight()) {
                                          hdrUseCase.approve(hdrId).then(
                                            (_) {
                                              ref.invalidate(summeryProvider);
                                              // ignore: use_build_context_synchronously
                                              Navigator.of(context).maybePop();
                                            },
                                          );
                                        }
                                      }
                                    }

                                    // print(a);
                                  },
                                  title: 'Generate Cards',
                                  children: [
                                    FormTextField(
                                      hintText: 'statment',
                                      controller: statment,
                                    ),
                                    DropdownMenu<int>(
                                      label: const Text('card'),
                                      controller: cardIdC,
                                      enableFilter: true,
                                      requestFocusOnTap: true,
                                      onSelected: updateCardId,
                                      inputDecorationTheme: Theme.of(context)
                                          .inputDecorationTheme,
                                      width: 250,
                                      dropdownMenuEntries: data
                                          .map(
                                            (c) => DropdownMenuEntry(
                                                label: c.name, value: c.id),
                                          )
                                          .toList(),
                                    ),
                                    FormTextField(
                                      isNumber: true,
                                      hintText: 'qty',
                                      controller: qty,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const Text('valid'),
                                            Checkbox(
                                              value: isValid.value,
                                              onChanged: isRejected.value
                                                  ? (e) {
                                                      if (e != null) {
                                                        isValid.value = e;
                                                      }
                                                    }
                                                  : null,
                                            )
                                          ],
                                        ),
                                        const Text('rejected'),
                                        Checkbox(
                                            value: isRejected.value,
                                            onChanged: (e) {
                                              if (e != null) {
                                                isRejected.value = e;
                                              }
                                            }),
                                      ],
                                    ),
                                  ].pad(),
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                  child: const Icon(Icons.add),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

extension A<T> on AsyncValue<T> {
  wn(StatelessWidget Function(T d) w) => when(
      data: w,
      error: (e, s) => const LoaderError(),
      loading: () => const Loader());
}
