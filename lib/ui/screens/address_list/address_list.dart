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
                      style: Theme.of(context).textTheme.body1,
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: UISize.pMedium),
                        child: Text(
                          'Address \n${_addressList[index].address}',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall,
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: UISize.pMedium),
                        child: Text(
                          'PublicKey \n${_addressList[index].publicKey}',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall,
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: UISize.pMedium),
                        child: Text(
                          'PrivateKey \n${_addressList[index].privateKey}',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                                AppLocalizations.of(context).translate('sign')),
                            color: Colors.blue,
                            onPressed: () {/** */},
                          ),
                          FlatButton(
                            child: Text(AppLocalizations.of(context)
                                .translate('delete')),
                            color: Colors.red,
                            onPressed: () =>
                                BlocProvider.of<AddressListBloc>(context).add(
                              DeleteAddress(
                                bWallet: _addressList[index],
                              ),
                            ),
                          ),
                        ],
                      )
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
