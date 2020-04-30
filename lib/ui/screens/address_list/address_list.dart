import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius/core/blocs/address_list_bloc/bloc.dart';
import 'package:sirius/ui/shared/app_localizations.dart';
import 'package:sirius/ui/shared/ui_helpers.dart';

class AddressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressListBloc, AddressListState>(
      builder: (context, state) {
        if (state is AddressListLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AddressListLoaded) {
          final _addressList = state.addressList.reversed.toList() ?? List();
          return SafeArea(
            child: Container(
              constraints: BoxConstraints.expand(),
              alignment: Alignment.topCenter,
              child: ListView.builder(
                itemCount: _addressList.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      _addressList[index].name,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      _addressList[index].blockchain,
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                    children: <Widget>[
                      Text(
                        'Address - ${_addressList[index].address}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      UIHelper.verticalSpaceSmall,
                      Text(
                        'PublicKey - ${_addressList[index].publicKey}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      UIHelper.verticalSpaceSmall,
                      Text(
                        'PrivateKey - ${_addressList[index].privateKey}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        } else if (state is AddressListError) {
          return Center(
            child: Text(
              AppLocalizations.of(context).translate('smth_wrong'),
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.red,
                  ),
            ),
          );
        }
        return Center(
          child: Text(
            AppLocalizations.of(context).translate('list_empty'),
            style: Theme.of(context).textTheme.title,
          ),
        );
      },
    );
  }
}
