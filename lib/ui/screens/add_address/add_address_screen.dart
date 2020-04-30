import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius/core/blocs/add_address_bloc/bloc.dart';
import 'package:sirius/core/blocs/address_list_bloc/address_list_bloc.dart';
import 'package:sirius/ui/shared/app_localizations.dart';

import 'add_address_form.dart';

class AddAddressScreen extends StatelessWidget {
  final AddressListBloc bloc;

  AddAddressScreen(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).translate("add_address"),
        ),
      ),
      body: BlocProvider<AddAddressBloc>(
        create: (context) => AddAddressBloc(),
        child: AddAddressForm(bloc),
      ),
    );
  }
}
