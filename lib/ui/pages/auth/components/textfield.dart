import 'package:app/ui/share/ex.dart';
import 'package:app/ui/share/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormTextField extends HookWidget {
  final TextEditingController controller_;
  final String hintText;
  final bool obscureText;
  final bool enabled;
  final String? Function(String?)? validator;
  final void Function(String)? onChange;
  final String? forceErrorText;
  final Function()? onIconTap;
  final Widget? icon;
  final String? val;
  final bool isNumber;
  final bool isCurency;

  FormTextField(
      {super.key,
      this.val,
      this.enabled = true,
      this.validator,
      TextEditingController? controller,
      this.hintText = '',
      this.obscureText = false,
      this.forceErrorText,
      this.onChange,
      this.onIconTap,
      this.icon,
      this.isNumber = false,
      this.isCurency = false})
      : controller_ = controller ?? TextEditingController();

  String? valid(v) {
    if (v == null || v == '') {
      return 'this field is required';
    }
    return null;
  }

  a() {
    return;
  }

  get _onClick => onIconTap ?? a;

  @override
  Widget build(BuildContext context) {
    final show = useState(true);
    final toggoleShow = useCallback(() => show.value = !show.value, [show]);
    // final suffixIcon = useCallback(() {
    //   if (onIconTap != null && icon != null) {
    //     return IconButton(onPressed: onIconTap, icon: icon!);
    //   }
    //   if (obscureText) {
    //     return IconButton(
    //       icon: Icon(
    //         show.value ? Icons.visibility : Icons.visibility_off,
    //       ),
    //       onPressed: toggoleShow,
    //     );
    //   }
    //   return null;
    // }, []);

    return TextFormField(
      initialValue: val,
      enabled: enabled,
      // onSaved: ,
      controller: controller_,
      obscureText: obscureText ? show.value : false,
      validator: validator ?? valid,
      forceErrorText: forceErrorText,
      onChanged: onChange,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : null,
      decoration: InputDecoration(
        labelText: hintText,
        suffixIcon: obscureText
            ? InkWell(
                child: Icon(
                  show.value ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : isNumber
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ActionChip.elevated(
                        label: const Icon(CupertinoIcons.minus),
                        labelPadding: const EdgeInsets.all(0),
                        onPressed: () {
                          if (controller_.text.toDoub() <= 0) {
                            return;
                          }
                          controller_.value = TextEditingValue(
                            text: (controller_.text.toDoub() - 1).toString(),
                          );
                        },
                      ),
                      1.hSpace,
                      ActionChip.elevated(
                        label: const Icon(CupertinoIcons.add),
                        labelPadding: const EdgeInsets.all(0),
                        onPressed: () {
                          controller_.text =
                              (controller_.text.toDoub() + 1).toString();
                        },
                      ),
                    ],
                  )
                : icon,
        hintText: hintText,
        suffixText: isCurency ? 'YRS' : null,
        // suffix: const Text('data'),
        hintStyle: TextStyle(
            color: isCurency ? AppTheme.g600 : Theme.of(context).hintColor),
      ),
    );
  }
}
