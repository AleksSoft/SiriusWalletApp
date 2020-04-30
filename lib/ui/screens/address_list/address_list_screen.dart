import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius/core/blocs/address_list_bloc/bloc.dart';
import 'package:sirius/ui/screens/add_address/add_address_screen.dart';
import 'package:sirius/ui/shared/app_localizations.dart';

import 'address_list.dart';

class AddressListScreen extends StatefulWidget {
  @override
  _AddressListScreenState createState() => _AddressListScreenState();
}

class _AddressListScreenState extends State<AddressListScreen> {
  AddressListBloc _bloc;

  @override
  void initState() {
    _bloc = AddressListBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).translate("address_list"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
                builder: (BuildContext context) => AddAddressScreen(_bloc),
                fullscreenDialog: true),
          );
        },
        child: Icon(Icons.add),
      ),
      body: BlocProvider<AddressListBloc>(
        create: (context) => _bloc..add(FetchAddressList()),
        child: AddressList(),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
