import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/grey_box.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/text_styles.dart';

class TratmentSelector extends StatefulWidget {
  final Function(List<String> list) onChangeCallback;
  TratmentSelector({Key? key, required this.onChangeCallback})
      : super(key: key);

  @override
  _TratmentSelectorState createState() => _TratmentSelectorState();
}

class _TratmentSelectorState extends State<TratmentSelector> {
  List<String> treatments = [];

  _deleteTreatment(int idx) {
    setState(() {
      treatments.removeAt(idx);
      _update();
    });
  }

  _addTreatment(String name) {
    if (!treatments.contains(name)) {
      setState(() {
        treatments.add(name);
        _update();
      });
    }
  }

  _update() {
    widget.onChangeCallback(treatments);
  }

  List<String> items = [
    'Odrobaczanie',
    'Szczepionka na tężec',
    'Pielęgnacja pazurów',
    'Pielęgnacja pazurów1 Pielęgnacja '
  ];

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String?>(
          value: null,
          isExpanded: true,
          icon: Icon(Icons.expand_more,
              color: BasicColors.darkGrey.withOpacity(0.3)),
          decoration: InputDecoration(
            hintText: 'Zabiegi wykonane podczas wizyty',
            hintStyle: body14Light.copyWith(
                color: BasicColors.darkGrey.withOpacity(0.3)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            filled: true,
            fillColor: Colors.white,
            border: circularBorder.copyWith(
              borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
            ),
            errorBorder: circularBorder.copyWith(
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedBorder: circularBorder.copyWith(
              borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
            ),
            enabledBorder: circularBorder.copyWith(
              borderSide: BorderSide(color: BasicColors.greyOutlineBorder),
            ),
          ),
          items: items.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: BasicText.body14Light(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              _addTreatment(value!);
            });
          },
        ),
        SizedBox(
          height: 8,
        ),
        treatments.length > 0
            ? Container(
                child: GridView.count(
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    childAspectRatio: 1.5,
                    children: [
                      for (var i = 0; i < treatments.length; i++)
                        GridViewTreatment(
                          treatmentName: treatments[i],
                          idx: i,
                          delete: _deleteTreatment,
                        )
                    ]),
              )
            : Container()
      ],
    );
  }
}

class GridViewTreatment extends StatelessWidget {
  final String treatmentName;
  final int idx;
  final Function(int idx) delete;
  const GridViewTreatment({
    Key? key,
    required this.treatmentName,
    required this.idx,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5, top: 4),
          child: GreyBox(
              child: Center(
                  child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BasicText.body14Light(
              treatmentName,
              center: true,
            ),
          ))),
        ),
        Container(
          alignment: Alignment.topRight,
          //padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              delete(idx);
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: BasicColors.darkGrey),
              child: Center(
                child: SvgPicture.asset(
                  'lib/assets/small-x.svg',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
