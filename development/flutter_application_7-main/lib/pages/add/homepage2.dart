import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage2 extends StatefulWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  State<homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  final _nameController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const CloseButton(),
        ),
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40,
              ),
              Text(
                '어떤 약이예요',
                style: Theme.of(context).textTheme.headline4,
              ),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  child: CupertinoButton(
                    onPressed: () {},
                    child: Icon(
                      CupertinoIcons.photo_camera_solid,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextFormField(
                controller: _nameController,
                maxLength: 20,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  hintStyle: Theme.of(context).textTheme.bodyText2,
                  hintText: '복용할 약 이름을 기입해주세요',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 6),
                ),
              )
            ])),
        bottomNavigationBar: SafeArea(
            child: ElevatedButton(
          onPressed: (() {}),
          child: Text('다음'),
        )));
  }
}
