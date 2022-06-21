import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/booking/booking_model.dart';
import '../../../models/index.dart'
    show AppModel, CartModel, Order, PaymentMethodModel, TaxModel, UserModel;
import '../../../services/index.dart';

class PaymentMethods extends StatefulWidget {
  final Function? onBack;
  final Function? onFinish;
  final Function(bool)? onLoading;

  const PaymentMethods({this.onBack, this.onFinish, this.onLoading});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String? selectedId;
  bool isPaying = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      final cartModel = Provider.of<CartModel>(context, listen: false);
      final userModel = Provider.of<UserModel>(context, listen: false);
      Provider.of<PaymentMethodModel>(context, listen: false).getPaymentMethods(
          cartModel: cartModel,
          shippingMethod: cartModel.shippingMethod,
          token: userModel.user != null ? userModel.user!.cookie : null);

      if (kPaymentConfig.enableReview != true) {
        Provider.of<TaxModel>(context, listen: false)
            .getTaxes(Provider.of<CartModel>(context, listen: false),
                (taxesTotal, taxes) {
          Provider.of<CartModel>(context, listen: false).taxesTotal =
              taxesTotal;
          Provider.of<CartModel>(context, listen: false).taxes = taxes;
          setState(() {});
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context);
    final currencyRate = Provider.of<AppModel>(context).currencyRate;
    final paymentMethodModel = Provider.of<PaymentMethodModel>(context);
    final taxModel = Provider.of<TaxModel>(context);

    return ListenableProvider.value(
        value: paymentMethodModel,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(S.of(context).paymentMethods,
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            Text(
              S.of(context).chooseYourPaymentMethod,
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              ),
            ),
            Services().widget.renderPayByWallet(context),
            const SizedBox(height: 20),
            Consumer<PaymentMethodModel>(builder: (context, model, child) {
              if (model.isLoading) {
                return SizedBox(height: 100, child: kLoadingWidget(context));
              }

              if (model.message != null) {
                return SizedBox(
                  height: 100,
                  child: Center(
                      child: Text(model.message!,
                          style: const TextStyle(color: kErrorRed))),
                );
              }

              if (selectedId == null && model.paymentMethods.isNotEmpty) {
                selectedId =
                    model.paymentMethods.firstWhere((item) => item.enabled!).id;
              }

              return Column(
                children: <Widget>[
                  for (int i = 0; i < model.paymentMethods.length; i++)
                    model.paymentMethods[i].enabled!
                        ? Services().widget.renderPaymentMethodItem(context, model.paymentMethods[i], (i){
                      setState(() {
                        selectedId = i;
                      });
                    },selectedId)
                        : Container()
                ],
              );
            }),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    S.of(context).subtotal,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.8),
                    ),
                  ),
                  Text(
                      PriceTools.getCurrencyFormatted(
                          cartModel.getSubTotal(), currencyRate,
                          currency: cartModel.currency)!,
                      style: const TextStyle(fontSize: 14, color: kGrey400))
                ],
              ),
            ),
            Services().widget.renderShippingMethodInfo(context),
            if (cartModel.getCoupon() != '')
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      S.of(context).discount,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.8),
                      ),
                    ),
                    Text(
                      cartModel.getCoupon(),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.8),
                          ),
                    )
                  ],
                ),
              ),
            Services().widget.renderTaxes(taxModel, context),
            Services().widget.renderRewardInfo(context),
            Services().widget.renderCheckoutWalletInfo(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    S.of(context).total,
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  Text(
                    PriceTools.getCurrencyFormatted(
                        cartModel.getTotal(), currencyRate,
                        currency: cartModel.currency)!,
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(
                child: ButtonTheme(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      onPrimary: Colors.white,
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => isPaying || selectedId == null
                        ? showSnackbar
                        : placeOrder(paymentMethodModel, cartModel),
                    child: Text(S.of(context).placeMyOrder.toUpperCase()),
                  ),
                ),
              ),
            ]),
            if (kPaymentConfig.enableShipping ||
                kPaymentConfig.enableAddress ||
                kPaymentConfig.enableReview)
              Center(
                child: TextButton(
                  onPressed: () {
                    isPaying ? showSnackbar : widget.onBack!();
                  },
                  child: Text(
                    kPaymentConfig.enableReview
                        ? S.of(context).goBackToReview
                        : kPaymentConfig.enableShipping
                            ? S.of(context).goBackToShipping
                            : S.of(context).goBackToAddress,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              )
          ],
        ));
  }

  void showSnackbar() {
    Tools.showSnackBar(
        ScaffoldMessenger.of(context), S.of(context).orderStatusProcessing);
  }

  void placeOrder(PaymentMethodModel paymentMethodModel, CartModel cartModel) {
    widget.onLoading!(true);
    isPaying = true;
    if (paymentMethodModel.paymentMethods.isNotEmpty) {
      final paymentMethod = paymentMethodModel.paymentMethods
          .firstWhere((item) => item.id == selectedId);
      var isSubscriptionProduct = cartModel.item.values.firstWhere(
              (element) =>
                  element?.type == 'variable-subscription' ||
                  element?.type == 'subscription',
              orElse: () => null) !=
          null;
      Provider.of<CartModel>(context, listen: false)
          .setPaymentMethod(paymentMethod);

      /// Use Native payment

      /// Direct bank transfer (BACS)

      if (!isSubscriptionProduct && paymentMethod.id!.contains('bacs')) {
        widget.onLoading!(false);
        isPaying = false;

        showModalBottomSheet(
            context: context,
            builder: (sContext) => Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Text(
                              S.of(context).cancel,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        paymentMethod.description!,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Expanded(child: SizedBox(height: 10)),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          widget.onLoading!(true);
                          isPaying = true;
                          Services().widget.placeOrder(
                            context,
                            cartModel: cartModel,
                            onLoading: widget.onLoading,
                            paymentMethod: paymentMethod,
                            success: (Order order) async {
                              for (var item in order.lineItems) {
                                var product =
                                    cartModel.getProductById(item.productId!);
                                if (product?.bookingInfo != null) {
                                  product!.bookingInfo!.idOrder = order.id;
                                  var booking =
                                      await createBooking(product.bookingInfo)!;

                                  Tools.showSnackBar(
                                      ScaffoldMessenger.of(context),
                                      booking
                                          ? 'Booking success!'
                                          : 'Booking error!');
                                }
                              }
                              widget.onFinish!(order);
                              widget.onLoading!(false);
                              isPaying = false;
                            },
                            error: (message) {
                              widget.onLoading!(false);
                              if (message != null) {
                                Tools.showSnackBar(
                                    ScaffoldMessenger.of(context), message);
                              }
                              isPaying = false;
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white,
                          primary: Theme.of(context).primaryColor,
                        ),
                        child: Text(
                          S.of(context).ok,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ));

        return;
      }

      /// Use WebView Payment per frameworks
      Services().widget.placeOrder(
        context,
        cartModel: cartModel,
        onLoading: widget.onLoading,
        paymentMethod: paymentMethod,
        success: (Order? order) async {
          if (order != null) {
            for (var item in order.lineItems) {
              var product = cartModel.getProductById(item.productId!);
              if (product?.bookingInfo != null) {
                product!.bookingInfo!.idOrder = order.id;
                var booking = await createBooking(product.bookingInfo)!;

                Tools.showSnackBar(ScaffoldMessenger.of(context),
                    booking ? 'Booking success!' : 'Booking error!');
              }
            }
            widget.onFinish!(order);
          }
          widget.onLoading!(false);
          isPaying = false;
        },
        error: (message) {
          widget.onLoading!(false);
          if (message != null) {
            Tools.showSnackBar(ScaffoldMessenger.of(context), message);
          }

          isPaying = false;
        },
      );
    }
  }

  Future<bool>? createBooking(BookingModel? bookingInfo) async {
    return Services().api.createBooking(bookingInfo)!;
  }

  Future<void> createOrder(
      {paid = false, bacs = false, cod = false, transactionId = ''}) async {
    widget.onLoading!(true);
    await Services().widget.createOrder(
      context,
      paid: paid,
      cod: cod,
      bacs: bacs,
      transactionId: transactionId,
      onLoading: widget.onLoading,
      success: (Order order) async {
        await Services()
            .api
            .updateOrderIdForRazorpay(transactionId, order.number);
        widget.onFinish!(order);
      },
      error: (message) {
        Tools.showSnackBar(ScaffoldMessenger.of(context), message);
      },
    );
    widget.onLoading!(false);
  }
}
