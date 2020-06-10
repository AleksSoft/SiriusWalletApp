import 'dart:io';

import 'package:antares_wallet/ui/common/app_colors.dart';
import 'package:antares_wallet/ui/views/more/upgrade/upgrade_account_quest.dart';
import 'package:antares_wallet/ui/views/widgets/default_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum DocType {
  passport,
  nationalId,
  drivingLicense,
  selfie,
  proofOfAddress,
}

class UpgradeAccountDocView extends StatefulWidget {
  final DocType docType;

  const UpgradeAccountDocView(this.docType, {Key key}) : super(key: key);

  @override
  _UpgradeAccountDocViewState createState() => _UpgradeAccountDocViewState();
}

class _UpgradeAccountDocViewState extends State<UpgradeAccountDocView> {
  File _image;
  final picker = ImagePicker();

  Future _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upgrade to Advanced'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _title,
              style: Theme.of(context).textTheme.button.copyWith(
                    fontSize: 16.0,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.0),
            Flexible(
              child: DefaultCard(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: Stack(
                  children: [
                    _image != null
                        ? SizedBox.expand(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.file(
                                _image,
                                alignment: Alignment.center,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                    Visibility(
                      visible: _image != null,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () => _getImage(),
                          child: Container(
                            width: 102,
                            height: 36,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: AppColors.primary.withOpacity(0.8),
                              borderRadius: new BorderRadius.only(
                                topRight: const Radius.circular(8.0),
                                bottomLeft: const Radius.circular(8.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt),
                                SizedBox(width: 4.0),
                                Text('Change'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _image == null,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 45,
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 32.0,
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                _photoHeader,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontSize: 12.0,
                                    ),
                                textAlign: this.widget.docType ==
                                        DocType.proofOfAddress
                                    ? TextAlign.left
                                    : TextAlign.center,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 55,
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 32.0,
                                vertical: 16.0,
                              ),
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      size: 50.0,
                                      color: AppColors.accent,
                                    ),
                                    Text(
                                      'Click to upload photo',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          .copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                onTap: () => _getImage(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            DefaultCard(
              blurRadius: _image == null ? 0 : 10,
              shadowColor: AppColors.accent.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: CupertinoButton.filled(
                disabledColor: Colors.grey.withOpacity(0.7),
                child: Text('Submit'),
                onPressed: _image == null
                    ? null
                    : () => Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (context) => _nextRoute),
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get _title {
    switch (this.widget.docType) {
      case DocType.passport:
        return 'Passport';
      case DocType.nationalId:
        return 'National Id';
      case DocType.drivingLicense:
        return 'Driving License';
      case DocType.selfie:
        return 'Selfie';
      case DocType.proofOfAddress:
        return 'Proof of address';
      default:
        return '';
    }
  }

  String get _photoHeader {
    switch (this.widget.docType) {
      case DocType.passport:
        return 'Upload a clear and legible picture of the main page of your passport';
      case DocType.nationalId:
        return 'Upload a clear and legible picture of the main page of your national id';
      case DocType.drivingLicense:
        return 'Upload a clear and legible picture of the main page of your driver license';
      case DocType.selfie:
        return 'Your selfie should be well lit and in focus';
      case DocType.proofOfAddress:
        return 'Please use Bank/Card Statement or Gas/Electricity/Water Bill or Official Governmental Documents\n\n'
            'The document should display Name, Surname, Street address (Non-P.O Box), Date, Issuer name\n\n'
            'The document you provide should not be older than 3 months and should be different from your ID document\n\n'
            'Please note that review might take up to 48 hours';
      default:
        return '';
    }
  }

  Widget get _nextRoute {
    switch (this.widget.docType) {
      case DocType.passport:
      case DocType.nationalId:
      case DocType.drivingLicense:
        return UpgradeAccountDocView(DocType.selfie);
      case DocType.selfie:
        return UpgradeAccountDocView(DocType.proofOfAddress);
      case DocType.proofOfAddress:
      default:
        return UpgradeAccountQuestView();
    }
  }
}
