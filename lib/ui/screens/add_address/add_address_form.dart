import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius/core/blocs/add_address_bloc/bloc.dart';
import 'package:sirius/core/blocs/address_list_bloc/bloc.dart';
import 'package:sirius/locator.dart';
import 'package:sirius/ui/navigation/navigation.dart';
import 'package:sirius/ui/shared/app_localizations.dart';
import 'package:sirius/ui/shared/ui_helpers.dart';

class AddAddressForm extends StatelessWidget {
  final AddressListBloc bloc;

  AddAddressForm(this.bloc);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddAddressBloc, AddAddressState>(
      listener: (context, state) {
        if (state.isSuccess) {
          bloc.add(FetchAddressList());
          locator<NavigationService>().pop();
        }
      },
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(UISize.pMedium),
          constraints: BoxConstraints.expand(),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context).translate('name'),
                ),
                keyboardType: TextInputType.text,
                autovalidate: true,
                onChanged: (s) => BlocProvider.of<AddAddressBloc>(context)
                    .add(NameChanged(name: s)),
                validator: (_) {
                  return !state.isNameValid
                      ? AppLocalizations.of(context).translate('name_wrong')
                      : null;
                },
              ),
              SizedBox(height: UISize.pSmall),
              DropdownButton(
                isExpanded: true,
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    child: Text('Bitcoin - mainnet'),
                    value: 'Bitcoin - mainnet',
                  ),
                  DropdownMenuItem(
                    child: Text('Bitcoin - testnet'),
                    value: 'Bitcoin - testnet',
                  ),
                  DropdownMenuItem(
                    child: Text('Bitcoin - regtest'),
                    value: 'Bitcoin - regtest',
                  ),
                  DropdownMenuItem(
                    child: Text('Ethereum'),
                    value: 'Ethereum',
                  ),
                ],
                hint: new Text(
                  AppLocalizations.of(context).translate("select_blockchain"),
                ),
                value: state.blockchainStr,
                onChanged: (s) => BlocProvider.of<AddAddressBloc>(context)
                    .add(BlockchainChanged(blockchain: s)),
              ),
              SizedBox(height: UISize.pSmall),
              RaisedButton(
                child: Text(AppLocalizations.of(context).translate('ok')),
                onPressed: () => BlocProvider.of<AddAddressBloc>(context).add(
                  AddAddressSubmitted(
                    name: state.nameStr,
                    blockchain: state.blockchainStr,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
