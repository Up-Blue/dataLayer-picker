___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "dataLayer Picker | Up Blue",
  "description": "Pobiera wskazane dane z obiektu ecommerce. Stworzono przez Up Blue (upblue.pl).",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require('copyFromDataLayer');
const queryPermission = require('queryPermission');

// 1. Bezpieczne pobranie nazwy zdarzenia (jeśli mamy uprawnienia)
let eventName = '';
if (queryPermission('read_data_layer', 'event')) {
  eventName = copyFromDataLayer('event');
}

// 2. Bezpieczne pobranie obiektu ecommerce lub eventModel
let ecomObj = undefined;
if (queryPermission('read_data_layer', 'ecommerce')) {
  ecomObj = copyFromDataLayer('ecommerce');
}

// Fallback do eventModel
if (!ecomObj && queryPermission('read_data_layer', 'eventModel')) {
  ecomObj = copyFromDataLayer('eventModel');
}

// Jeśli nigdzie nie ma danych E-commerce, zwracamy undefined
if (!ecomObj) {
  return undefined;
}

const items = ecomObj.items || [];
let ga4Obj = {};

// Dodajemy tablicę produktów, jeśli istnieje
if (items.length > 0) {
  ga4Obj.items = items;
}

// Podstawowe parametry
if (ecomObj.value !== undefined) ga4Obj.value = ecomObj.value;
if (ecomObj.currency !== undefined) ga4Obj.currency = ecomObj.currency;
if (ecomObj.coupon !== undefined) ga4Obj.coupon = ecomObj.coupon;

// Parametry list (np. dla view_item_list lub select_item)
if (ecomObj.item_list_name !== undefined) ga4Obj.item_list_name = ecomObj.item_list_name;
if (ecomObj.item_list_id !== undefined) ga4Obj.item_list_id = ecomObj.item_list_id;

// Parametry dla zakupu (purchase) i zwrotu (refund)
if (eventName === 'purchase' || eventName === 'refund') {
  if (ecomObj.transaction_id) ga4Obj.transaction_id = ecomObj.transaction_id;
  else if (ecomObj.id) ga4Obj.transaction_id = ecomObj.id;

  if (ecomObj.tax !== undefined) ga4Obj.tax = ecomObj.tax;
  if (ecomObj.shipping !== undefined) ga4Obj.shipping = ecomObj.shipping;
  if (ecomObj.affiliation !== undefined) ga4Obj.affiliation = ecomObj.affiliation;
}

// Parametry płatności i dostawy (Checkout)
if (eventName === 'add_payment_info' || eventName === 'purchase') {
  if (ecomObj.payment_type !== undefined) ga4Obj.payment_type = ecomObj.payment_type;
}
if (eventName === 'add_shipping_info' || eventName === 'purchase') {
  if (ecomObj.shipping_tier !== undefined) ga4Obj.shipping_tier = ecomObj.shipping_tier;
}

return ga4Obj;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Basic event - view_item
  code: |-
    mock('copyFromDataLayer', (key) => {
      if (key === 'event') return 'view_item';
      if (key === 'ecommerce') {
        return {
          value: 199.99,
          currency: 'PLN',
          items: [{ item_id: 'SKU-1' }],
          transaction_id: 'IGNORE_ME' // To nie powinno zostać pobrane
        };
      }
    });

    let result = runCode();

    assertThat(result.value).isEqualTo(199.99);
    assertThat(result.currency).isEqualTo('PLN');
    assertThat(result.items.length).isEqualTo(1);
    // Zdarzenie to nie 'purchase', więc transaction_id powinno być zignorowane
    assertThat(result.transaction_id).isUndefined();
- name: Full purchase event
  code: |-
    mock('copyFromDataLayer', (key) => {
      if (key === 'event') return 'purchase';
      if (key === 'ecommerce') {
        return {
          value: 500,
          currency: 'EUR',
          transaction_id: 'ORDER-123',
          tax: 23,
          shipping: 15,
          affiliation: 'Google',
          payment_type: 'Credit Card',
          shipping_tier: 'Express',
          items: [{ item_id: 'SKU-2' }]
        };
      }
    });

    let result = runCode();

    // Sprawdzamy czy przy zakupie pobrało wszystkie parametry
    assertThat(result.transaction_id).isEqualTo('ORDER-123');
    assertThat(result.tax).isEqualTo(23);
    assertThat(result.shipping).isEqualTo(15);
    assertThat(result.affiliation).isEqualTo('Google');
    assertThat(result.payment_type).isEqualTo('Credit Card');
    assertThat(result.shipping_tier).isEqualTo('Express');
- name: Fallback to eventModel and id
  code: |-
    mock('copyFromDataLayer', (key) => {
      if (key === 'event') return 'purchase';
      if (key === 'ecommerce') return undefined; // Brak ecommerce
      if (key === 'eventModel') {
        return {
          value: 50,
          currency: 'USD',
          id: 'ORDER-999', // W eventModel często jest id zamiast transaction_id
          items: [{ item_id: 'SKU-3' }]
        };
      }
    });

    let result = runCode();

    // Skrypt powinien zmapować 'id' na 'transaction_id' dla GA4
    assertThat(result.transaction_id).isEqualTo('ORDER-999');
    assertThat(result.value).isEqualTo(50);
- name: No ecommerce data available
  code: |-
    mock('copyFromDataLayer', (key) => {
      if (key === 'event') return 'add_to_cart';
      if (key === 'ecommerce') return undefined;
      if (key === 'eventModel') return undefined;
    });

    let result = runCode();

    assertThat(result).isUndefined();


___NOTES___

Created on 18.03.2026, 14:21:01

