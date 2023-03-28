import 'package:dartz/dartz.dart';
import 'package:flutter_financial/core/error/failure.dart';
import 'package:flutter_financial/data/model/invoice_model.dart';
import 'package:flutter_financial/domain/repository/firestore_invoice_repository.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@Injectable()
class FirestoreGetInvoices {

  final FirestoreInvoiceRepository repository;

  FirestoreGetInvoices({
    required this.repository
  });

  Future<Either<Failure, List<InvoiceModel>>> execute() async {
    return await repository.fetchInvoice();
  }

}