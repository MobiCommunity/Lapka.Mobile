import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/domain/auth/use_case/logout_use_case.dart';
import 'package:lapka/domain/user/use_case/fetch_user_data_use_case.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/models/user.dart';
import 'package:lapka/providers/login/bloc/login_bloc.dart';
import 'package:lapka/providers/menu/bloc/menu_bloc.dart';
import 'package:lapka/providers/menuProvider.dart';
import 'package:lapka/screens/adopt_pet/adopt_pet_list_page.dart';
import 'package:lapka/screens/login/login_page.dart';
import 'package:lapka/screens/my_pets/my_pets_page.dart';
import 'package:lapka/screens/report/report_page.dart';
import 'package:lapka/screens/volunteer/volunteer_page.dart';
import 'package:lapka/services/user_service.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/settings/naviagtion/bloc/navigator_bloc.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';
import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final Function onMenuItemClicked;

  final UserService _userService = getIt.get<UserService>();
  final AuthBroadcaster _authBroadcaster = getIt.get<AuthBroadcaster>();
  final FetchUserDataUseCase _fetchUserDataUseCase =
      getIt.get<FetchUserDataUseCase>();
  final LogoutUseCase _logoutUseCase = getIt.get<LogoutUseCase>();

  Menu(
      {Key? key,
      required this.slideAnimation,
      required this.menuAnimation,
      required this.onMenuItemClicked})
      : super(key: key);

  _buildMenuItem(context,
      {Widget? widget,
      required String name,
      required String icon,
      bool isRoot = true,
      Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap?.call();
        if (widget != null && isRoot) {
          NavigatorHelper.changeRoot(context, widget);
        } else if (widget != null) {
          NavigatorHelper.push(context, widget);
        }
        onMenuItemClicked();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            color: BasicColors.white,
            height: 25,
            width: 325,
          ),
          SizedBox(width: 20),
          BasicText.subtitleLight(
            name,
            color: BasicColors.white,
          )
        ],
      ),
    );
  }

  Future<void> fetchData() async {
    _fetchUserDataUseCase((await _userService.getUserId())!);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child:
                BlocBuilder<MenuBloc, MenuBlocState>(builder: (context, state) {
              return Column(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(),
                  state.authState.when(
                        authenticated: () {
                          if (state.user != null) {
                            return _avatarBuilder(state.user!);
                          } else {
                            return Text('No data');
                          }
                        },
                        unauthenticated: () => _buildLoginMenuItem(context),
                      ) ??
                      _buildLoginMenuItem(context),
                  _buildMenuItem(
                    context,
                    widget: AdoptPetListPage(),
                    name: 'Wiadomości',
                    icon: 'lib/assets/messages-icon.svg',
                  ),
                  _buildMenuItem(
                    context,
                    widget: AdoptPetListPage(),
                    name: 'Ulubione zwierzaki',
                    icon: 'lib/assets/paw-symbol.svg',
                  ),
                  _buildMenuItem(
                    context,
                    widget: AdoptPetListPage(),
                    name: 'Adopcja',
                    icon: 'lib/assets/favourite-icon.svg',
                  ),
                  _buildMenuItem(
                    context,
                    widget: MyPetsPage(),
                    name: 'Moje zwierzaki',
                    icon: 'lib/assets/my-pets-icon.svg',
                  ),
                  _smallLineSpacer(),
                  _buildMenuItem(
                    context,
                    widget: ReportPage(),
                    name: 'Zgłoszenia',
                    icon: 'lib/assets/report-icon.svg',
                  ),
                  _buildMenuItem(
                    context,
                    widget: AdoptPetListPage(),
                    name: 'Zaginione zwierzaki',
                    icon: 'lib/assets/missing-pets.svg',
                  ),
                  _smallLineSpacer(),
                  _buildMenuItem(
                    context,
                    widget: VolunteerPage(),
                    name: 'Wolontariat',
                    icon: 'lib/assets/volunteer-icon.svg',
                  ),
                  _smallLineSpacer(),
                  _buildMenuItem(
                    context,
                    widget: AdoptPetListPage(),
                    name: 'Ustawienia',
                    icon: 'lib/assets/settings-icon.svg',
                  ),
                  Container(),
                  Visibility(
                    visible: state.authState is Authenticated,
                    child: _bigLineSpacer(),
                  ),
                  Visibility(
                    visible: state.authState is Authenticated,
                    child: _buildMenuItem(
                      context,
                      name: 'Wyloguj się',
                      icon: 'lib/assets/logout-icon.svg',
                      onTap: () => _logoutUseCase(),
                    ),
                  ),
                  Container()
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginMenuItem(BuildContext context) {
    return _buildMenuItem(
      context,
      widget: LoginPage(),
      name: 'Zaloguj się',
      icon: 'lib/assets/paw-symbol.svg',
      isRoot: false,
    );
  }

  Container _bigLineSpacer() {
    return Container(
      width: 195,
      height: 1,
      color: BasicColors.white,
    );
  }

  Padding _smallLineSpacer() {
    return Padding(
      padding: EdgeInsets.only(left: 45),
      child: Container(
        width: 150,
        height: 1,
        color: BasicColors.white,
      ),
    );
  }

  Row _avatarBuilder(User user) {
    return Row(
      children: [
        DottedBorder(
            borderType: BorderType.Circle,
            color: BasicColors.white,
            dashPattern: [7, 5],
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              radius: 33,
              backgroundColor: BasicColors.darkGrey,
            )),
        SizedBox(
          width: 14,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BasicText.overlineLight(
              user.email ?? '',
              color: BasicColors.white,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.place,
                  color: BasicColors.white,
                  size: 10,
                ),
                BasicText.captionLight(
                  user.firstName ?? '',
                  color: BasicColors.white,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
