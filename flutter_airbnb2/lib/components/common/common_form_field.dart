import 'package:flutter/material.dart';
import 'package:flutter_airbnb2/styles.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField({Key? key, required this.prefixText, required this.hintText})
      : super(key: key);

  final prefixText;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 겹쳐서 배치하고 싶을 때
      children: [
        TextFormField(
          // 글을 작성할 수 있는 필드
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 30, left: 10, bottom: 10),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                )
              ),
          ),
        ),
        Positioned(
          top: 8,
          left: 10,
          child: Text(prefixText,
           style: overLine()
          )
        )
      ],
    );
  }
}
