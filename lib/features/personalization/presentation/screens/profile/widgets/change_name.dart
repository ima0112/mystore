import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/full_screen_loader.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/constants/enums.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/validators/validations.dart';
import 'package:mystore/features/personalization/presentation/bloc/user/user_bloc.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({super.key});

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  late String initialFirstName;
  late String initialLastName;
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    final bloc = context.read<UserBloc>();

    initialFirstName = bloc.state.user.firstName;
    initialLastName = bloc.state.user.lastName;

    firstNameController.text = initialFirstName;
    lastNameController.text = initialLastName;

    firstNameController.addListener(_checkIfNameChanged);
    lastNameController.addListener(_checkIfNameChanged);
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  void _checkIfNameChanged() {
    setState(() {
      isButtonEnabled = firstNameController.text != initialFirstName ||
          lastNameController.text != initialLastName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status == Status.loading) {
          MyFullScreenLoader.showLoadingDialog(
            context: context,
            message: 'We are updating your information...',
            animation: MyImages.docerAmination,
          );
        } else if (state.status == Status.loaded) {
          context.goNamed(MyRoutes.profile.name);
          MyFullScreenLoader.stopLoadingDialog(context);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              MySnackBar.successSnackBar(
                message: 'Name updated successfully',
              ),
            );
        }
      },
      child: Scaffold(
        appBar: MyAppBar(
          showBackArrow: true,
          title: Text(
            'Change Name',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Use real name for easy verification. This name will appear on several pages',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: firstNameController,
                      validator: (value) =>
                          MyValidations.validateEmptyText(value),
                      expands: false,
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                        labelText: MyTexts.firstName,
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),
                    TextFormField(
                      controller: lastNameController,
                      validator: (value) =>
                          MyValidations.validateEmptyText(value),
                      expands: false,
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                        labelText: MyTexts.lastName,
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isButtonEnabled
                      ? () {
                          context.read<UserBloc>().add(
                                UserEvent.updateUser(
                                  firstName: firstNameController.text.trim(),
                                  lastName: lastNameController.text.trim(),
                                ),
                              );
                        }
                      : null,
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
