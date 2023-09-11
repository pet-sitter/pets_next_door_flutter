import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pets_next_door_flutter/src/constants/app_sizes.dart';

class PhoneAuthView extends StatelessWidget {
  const PhoneAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          radius: 18,
          onTap: () {},
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          '휴대폰 번호 인증하기',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: '휴대폰 번호'),
                      ),
                      Positioned(
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 70, maxHeight: 32),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            '인증하기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: 13, height: 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  gapH16,
                  Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: '인증번호 6자리'),
                      ),
                      Positioned(
                        child: Text('02:34'),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 20),
                color: Colors.black,
                width: double.infinity,
                height: 50,
                child: Text(
                  '다음으로',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
