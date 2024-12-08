import 'package:app/core/app.dart';
import 'package:app/core/utils/extensions.dart';
import 'package:app/data/service/db/sqlite.dart';
import 'package:app/data/use_cases/types.dart';
import 'package:app/domain/models/index.dart';
// import 'package:app/domain/models/ui/cards_sumary.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
FutureOr<Query> summery(SummeryRef ref) async {
  final op_ = await App.di<SqlService>().sql<Query>(
    (db) async {
      return db.rawQuery('''
  SELECT 
	card_id as id,
	c.name as card,
	sum(in_qty * is_generated) as generated,
	sum(out_qty) as soled,
	sum(in_qty * is_rejected ) as 'return',
	sum(in_qty * is_out_dated) as 'outDated',
	sum(in_qty * is_rejected * is_valid ) as validReturned,
	sum(in_qty * is_rejected ) - sum(in_qty * is_rejected * is_valid ) as broken,
	sum(in_qty * is_generated)  
		- sum(out_qty) 
		- sum(in_qty * is_out_dated)  as 'new',	
	sum(in_qty * is_generated)  
		- sum(out_qty) 
		+ sum(in_qty * is_rejected * is_valid ) 
		- sum(in_qty * is_out_dated)  as 'store'	
	FROM operational_cards
	JOIN cards c on card_id=c.id
	GROUP by card_id;
				
              ''');
    },
  );
  final a = op_;
  // .map(
  //   (i) {
  //     return CardsSummery.fromJson(i);
  //   },
  // ).toList();
  return a;
}

@riverpod
FutureOr<List<OperationalCard>> homeDetails(HomeDetailsRef ref) async {
  final op = await App.di<SqlService>().sql<Query>(
    (db) async {
      return db.query('operational_cards');
    },
  );
  final a = op.map(
    (i) {
      return OperationalCard.fromJson(i.fromDb());
    },
  ).toList();

  return a;
}
