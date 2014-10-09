library website.card;

import 'dart:html';
import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('x-card')
class CardElement extends PolymerElement {

  @published String archetype = 'good';

  CardElement.created() : super.created();

  void domReady() {
    $['image'].style.backgroundImage = "url('static/${archetype}.png')";
    ($['act'] as AnchorElement)
      ..href = "download/${archetype}.zip"
      ..download = "${archetype}.zip";
  }
}

