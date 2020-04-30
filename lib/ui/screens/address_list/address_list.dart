import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius/core/blocs/address_list_bloc/bloc.dart';
import 'package:sirius/core/models/models.dart';

class AddressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressListBloc, AddressListState>(
      builder: (context, state) {
        if (state is AddressListLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AddressListLoaded) {
          List<Address> _addressList = state.addressList ?? List();
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
                        _addressList[index].address,
                        style: Theme.of(context).textTheme.caption,
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
              "Something went wrong",
              style: Theme.of(context).textTheme.title.copyWith(
                    color: Colors.red,
                  ),
            ),
          );
        }
        return Center(
          child: Text(
            "List is empty",
            style: Theme.of(context).textTheme.title,
          ),
        );
      },
    );
  }
}
