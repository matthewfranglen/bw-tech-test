library website.card;

import 'dart:html';
import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('x-card')
class CardElement extends PolymerElement {

  @published String image = 'good.png';
  @published String download = 'good.zip';

  CardElement.created() : super.created();

  void domReady() {
    $['image'].style.backgroundImage = "url('static/${image}')";
    ($['act'] as AnchorElement)
      ..href = "download/${download}"
      ..download = download;
  }
}

