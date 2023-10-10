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
  "description": "An advanced and accurate picker of data values from dataLayer created by Up Blue (upblue.pl).",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "FieldInput",
    "displayName": "Select field type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "field_name",
        "displayValue": "Single parameter"
      },
      {
        "value": "field_list",
        "displayValue": "Parameter from the list"
      },
      {
        "value": "field_array",
        "displayValue": "Many parameters"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "field_name",
    "alwaysInSummary": true,
    "help": "Select the type with which you search for a parameter.",
    "subParams": [
      {
        "type": "TEXT",
        "name": "FieldName",
        "displayName": "Parameter name",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "clearOnCopy": true,
        "notSetText": "Required field",
        "enablingConditions": [
          {
            "paramName": "FieldInput",
            "paramValue": "field_name",
            "type": "EQUALS"
          }
        ],
        "help": "Enter the name of a single parameter. Avoid spaces.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "FieldList",
        "displayName": "Select list",
        "selectItems": [
          {
            "value": "ecommerce_field_list",
            "displayValue": "E-commerce"
          },
          {
            "value": "games_field_list",
            "displayValue": "Games"
          }
        ],
        "simpleValueType": true,
        "alwaysInSummary": true,
        "defaultValue": "ecommerce_field_list",
        "enablingConditions": [
          {
            "paramName": "FieldInput",
            "paramValue": "field_list",
            "type": "EQUALS"
          }
        ],
        "help": "Select the list where the parameter you are looking for is located.",
        "macrosInSelect": false,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "subParams": [
          {
            "type": "SELECT",
            "name": "EcommerceFieldList",
            "displayName": "Select parameter",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "affiliation",
                "displayValue": "affiliation"
              },
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "creative_name",
                "displayValue": "creative_name"
              },
              {
                "value": "creative_slot",
                "displayValue": "creative_slot"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "discount",
                "displayValue": "discount"
              },
              {
                "value": "index",
                "displayValue": "index"
              },
              {
                "value": "item_list_id",
                "displayValue": "item_list_id"
              },
              {
                "value": "item_list_name",
                "displayValue": "item_list_name"
              },
              {
                "value": "items",
                "displayValue": "items"
              },
              {
                "value": "location_id",
                "displayValue": "location_id"
              },
              {
                "value": "method",
                "displayValue": "method"
              },
              {
                "value": "payment_type",
                "displayValue": "payment_type"
              },
              {
                "value": "promotion_id",
                "displayValue": "promotion_id"
              },
              {
                "value": "promotion_name",
                "displayValue": "promotion_name"
              },
              {
                "value": "search_term",
                "displayValue": "search_term"
              },
              {
                "value": "shipping",
                "displayValue": "shipping"
              },
              {
                "value": "shipping_tier",
                "displayValue": "shipping_tier"
              },
              {
                "value": "tax",
                "displayValue": "tax"
              },
              {
                "value": "transaction_id",
                "displayValue": "transaction_id"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ],
            "simpleValueType": true,
            "alwaysInSummary": true,
            "defaultValue": "affiliation",
            "enablingConditions": [
              {
                "paramName": "FieldList",
                "paramValue": "ecommerce_field_list",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "help": "Select the parameter you are looking for from the list below."
          },
          {
            "type": "SELECT",
            "name": "GamesFieldList",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "achievement_id",
                "displayValue": "achievement_id"
              },
              {
                "value": "character",
                "displayValue": "character"
              },
              {
                "value": "content_id",
                "displayValue": "content_id"
              },
              {
                "value": "content_type",
                "displayValue": "content_type"
              },
              {
                "value": "group_id",
                "displayValue": "group_id"
              },
              {
                "value": "level",
                "displayValue": "level"
              },
              {
                "value": "level_name",
                "displayValue": "level_name"
              },
              {
                "value": "score",
                "displayValue": "score"
              },
              {
                "value": "success",
                "displayValue": "success"
              },
              {
                "value": "virtual_currency_name",
                "displayValue": "virtual_currency_name"
              }
            ],
            "simpleValueType": true,
            "alwaysInSummary": true,
            "defaultValue": "achievement_id",
            "displayName": "Select parameter",
            "enablingConditions": [
              {
                "paramName": "FieldList",
                "paramValue": "games_field_list",
                "type": "EQUALS"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "help": "Select the parameter you are looking for from the list below."
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "FieldArray",
        "displayName": "Parameter names",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "clearOnCopy": true,
        "notSetText": "Required field",
        "enablingConditions": [
          {
            "paramName": "FieldInput",
            "paramValue": "field_array",
            "type": "EQUALS"
          }
        ],
        "help": "Enter the parameters you are looking for by separating them with commas.",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^(?!_)(?!-)(?!.*[,_]_)(?!.*[,_]-)(?!.*[,_]$)(?!.*^[,_])([a-zA-Z0-9]+([-_][a-zA-Z0-9]+)*)(,([a-zA-Z0-9]+([-_][a-zA-Z0-9]+)*))+$"
            ],
            "errorMessage": "The specified value does not meet the requirements. At least one comma (\u0027,\u0027) that cannot be the first and last character. Spaces are not allowed, and the only allowed special characters (\u0027_\u0027, \u0027-\u0027, \u0027,\u0027) cannot be next to each other."
          }
        ]
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "FieldOutput",
    "displayName": "Return method",
    "radioItems": [
      {
        "value": "single_use",
        "displayValue": "First parameter value"
      },
      {
        "value": "multi_use",
        "displayValue": "All parameter values"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "single_use",
    "help": "Choose whether you need only the first value of the searched parameter or all values of the searched parameter.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "clearOnCopy": false
  },
  {
    "type": "GROUP",
    "name": "defaultInput",
    "displayName": "Default parameters value",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "GROUP",
        "name": "manual",
        "displayName": "Manual parameter value",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "defaultParameter",
            "displayName": "Default parameter value",
            "simpleValueType": true,
            "canBeEmptyString": false,
            "alwaysInSummary": false,
            "clearOnCopy": true,
            "defaultValue": "",
            "lineCount": 1,
            "notSetText": "",
            "enablingConditions": [],
            "help": "Enter the default value for your parameter below.",
            "textAsList": false,
            "valueValidators": [],
            "valueHint": "",
            "valueUnit": ""
          }
        ],
        "help": "This section, contains a field where you can manually enter a default value. This field will not indicate potential errors!"
      },
      {
        "type": "GROUP",
        "name": "defined",
        "displayName": "Defined parameters",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "SELECT",
            "name": "currency",
            "displayName": "currency",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "AED",
                "displayValue": "AED"
              },
              {
                "value": "AFN",
                "displayValue": "AFN"
              },
              {
                "value": "ALL",
                "displayValue": "ALL"
              },
              {
                "value": "AMD",
                "displayValue": "AMD"
              },
              {
                "value": "ANG",
                "displayValue": "ANG"
              },
              {
                "value": "AOA",
                "displayValue": "AOA"
              },
              {
                "value": "ARS",
                "displayValue": "ARS"
              },
              {
                "value": "AUD",
                "displayValue": "AUD"
              },
              {
                "value": "AWG",
                "displayValue": "AWG"
              },
              {
                "value": "AZN",
                "displayValue": "AZN"
              },
              {
                "value": "BAM",
                "displayValue": "BAM"
              },
              {
                "value": "BBD",
                "displayValue": "BBD"
              },
              {
                "value": "BDT",
                "displayValue": "BDT"
              },
              {
                "value": "BGN",
                "displayValue": "BGN"
              },
              {
                "value": "BHD",
                "displayValue": "BHD"
              },
              {
                "value": "BIF",
                "displayValue": "BIF"
              },
              {
                "value": "BMD",
                "displayValue": "BMD"
              },
              {
                "value": "BND",
                "displayValue": "BND"
              },
              {
                "value": "BOB",
                "displayValue": "BOB"
              },
              {
                "value": "BOV",
                "displayValue": "BOV"
              },
              {
                "value": "BRL",
                "displayValue": "BRL"
              },
              {
                "value": "BSD",
                "displayValue": "BSD"
              },
              {
                "value": "BTN",
                "displayValue": "BTN"
              },
              {
                "value": "BWP",
                "displayValue": "BWP"
              },
              {
                "value": "BYN",
                "displayValue": "BYN"
              },
              {
                "value": "BZD",
                "displayValue": "BZD"
              },
              {
                "value": "CAD",
                "displayValue": "CAD"
              },
              {
                "value": "CDF",
                "displayValue": "CDF"
              },
              {
                "value": "CHE",
                "displayValue": "CHE"
              },
              {
                "value": "CHF",
                "displayValue": "CHF"
              },
              {
                "value": "CHW",
                "displayValue": "CHW"
              },
              {
                "value": "CLF",
                "displayValue": "CLF"
              },
              {
                "value": "CLP",
                "displayValue": "CLP"
              },
              {
                "value": "CNY",
                "displayValue": "CNY"
              },
              {
                "value": "COP",
                "displayValue": "COP"
              },
              {
                "value": "COU",
                "displayValue": "COU"
              },
              {
                "value": "CRC",
                "displayValue": "CRC"
              },
              {
                "value": "CUC",
                "displayValue": "CUC"
              },
              {
                "value": "CUP",
                "displayValue": "CUP"
              },
              {
                "value": "CVE",
                "displayValue": "CVE"
              },
              {
                "value": "CZK",
                "displayValue": "CZK"
              },
              {
                "value": "DJF",
                "displayValue": "DJF"
              },
              {
                "value": "DKK",
                "displayValue": "DKK"
              },
              {
                "value": "DOP",
                "displayValue": "DOP"
              },
              {
                "value": "DZD",
                "displayValue": "DZD"
              },
              {
                "value": "EGP",
                "displayValue": "EGP"
              },
              {
                "value": "ERN",
                "displayValue": "ERN"
              },
              {
                "value": "ETB",
                "displayValue": "ETB"
              },
              {
                "value": "EUR",
                "displayValue": "EUR"
              },
              {
                "value": "FJD",
                "displayValue": "FJD"
              },
              {
                "value": "FKP",
                "displayValue": "FKP"
              },
              {
                "value": "GBP",
                "displayValue": "GBP"
              },
              {
                "value": "GEL",
                "displayValue": "GEL"
              },
              {
                "value": "GHS",
                "displayValue": "GHS"
              },
              {
                "value": "GIP",
                "displayValue": "GIP"
              },
              {
                "value": "GMD",
                "displayValue": "GMD"
              },
              {
                "value": "GNF",
                "displayValue": "GNF"
              },
              {
                "value": "GTQ",
                "displayValue": "GTQ"
              },
              {
                "value": "GYD",
                "displayValue": "GYD"
              },
              {
                "value": "HKD",
                "displayValue": "HKD"
              },
              {
                "value": "HNL",
                "displayValue": "HNL"
              },
              {
                "value": "HRK",
                "displayValue": "HRK"
              },
              {
                "value": "HTG",
                "displayValue": "HTG"
              },
              {
                "value": "HUF",
                "displayValue": "HUF"
              },
              {
                "value": "IDR",
                "displayValue": "IDR"
              },
              {
                "value": "ILS",
                "displayValue": "ILS"
              },
              {
                "value": "INR",
                "displayValue": "INR"
              },
              {
                "value": "IQD",
                "displayValue": "IQD"
              },
              {
                "value": "IRR",
                "displayValue": "IRR"
              },
              {
                "value": "ISK",
                "displayValue": "ISK"
              },
              {
                "value": "JMD",
                "displayValue": "JMD"
              },
              {
                "value": "JOD",
                "displayValue": "JOD"
              },
              {
                "value": "JPY",
                "displayValue": "JPY"
              },
              {
                "value": "KES",
                "displayValue": "KES"
              },
              {
                "value": "KGS",
                "displayValue": "KGS"
              },
              {
                "value": "KHR",
                "displayValue": "KHR"
              },
              {
                "value": "KMF",
                "displayValue": "KMF"
              },
              {
                "value": "KPW",
                "displayValue": "KPW"
              },
              {
                "value": "KRW",
                "displayValue": "KRW"
              },
              {
                "value": "KWD",
                "displayValue": "KWD"
              },
              {
                "value": "KYD",
                "displayValue": "KYD"
              },
              {
                "value": "KZT",
                "displayValue": "KZT"
              },
              {
                "value": "LAK",
                "displayValue": "LAK"
              },
              {
                "value": "LBP",
                "displayValue": "LBP"
              },
              {
                "value": "LKR",
                "displayValue": "LKR"
              },
              {
                "value": "LRD",
                "displayValue": "LRD"
              },
              {
                "value": "LSL",
                "displayValue": "LSL"
              },
              {
                "value": "LYD",
                "displayValue": "LYD"
              },
              {
                "value": "MAD",
                "displayValue": "MAD"
              },
              {
                "value": "MDL",
                "displayValue": "MDL"
              },
              {
                "value": "MGA",
                "displayValue": "MGA"
              },
              {
                "value": "MKD",
                "displayValue": "MKD"
              },
              {
                "value": "MMK",
                "displayValue": "MMK"
              },
              {
                "value": "MNT",
                "displayValue": "MNT"
              },
              {
                "value": "MOP",
                "displayValue": "MOP"
              },
              {
                "value": "MRU",
                "displayValue": "MRU"
              },
              {
                "value": "MUR",
                "displayValue": "MUR"
              },
              {
                "value": "MVR",
                "displayValue": "MVR"
              },
              {
                "value": "MWK",
                "displayValue": "MWK"
              },
              {
                "value": "MXN",
                "displayValue": "MXN"
              },
              {
                "value": "MXV",
                "displayValue": "MXV"
              },
              {
                "value": "MYR",
                "displayValue": "MYR"
              },
              {
                "value": "MZN",
                "displayValue": "MZN"
              },
              {
                "value": "NAD",
                "displayValue": "NAD"
              },
              {
                "value": "NGN",
                "displayValue": "NGN"
              },
              {
                "value": "NIO",
                "displayValue": "NIO"
              },
              {
                "value": "NOK",
                "displayValue": "NOK"
              },
              {
                "value": "NPR",
                "displayValue": "NPR"
              },
              {
                "value": "NZD",
                "displayValue": "NZD"
              },
              {
                "value": "OMR",
                "displayValue": "OMR"
              },
              {
                "value": "PAB",
                "displayValue": "PAB"
              },
              {
                "value": "PEN",
                "displayValue": "PEN"
              },
              {
                "value": "PGK",
                "displayValue": "PGK"
              },
              {
                "value": "PHP",
                "displayValue": "PHP"
              },
              {
                "value": "PKR",
                "displayValue": "PKR"
              },
              {
                "value": "PLN",
                "displayValue": "PLN"
              },
              {
                "value": "PYG",
                "displayValue": "PYG"
              },
              {
                "value": "QAR",
                "displayValue": "QAR"
              },
              {
                "value": "RON",
                "displayValue": "RON"
              },
              {
                "value": "RSD",
                "displayValue": "RSD"
              },
              {
                "value": "RUB",
                "displayValue": "RUB"
              },
              {
                "value": "RWF",
                "displayValue": "RWF"
              },
              {
                "value": "SAR",
                "displayValue": "SAR"
              },
              {
                "value": "SBD",
                "displayValue": "SBD"
              },
              {
                "value": "SCR",
                "displayValue": "SCR"
              },
              {
                "value": "SDG",
                "displayValue": "SDG"
              },
              {
                "value": "SEK",
                "displayValue": "SEK"
              },
              {
                "value": "SGD",
                "displayValue": "SGD"
              },
              {
                "value": "SHP",
                "displayValue": "SHP"
              },
              {
                "value": "SLE",
                "displayValue": "SLE"
              },
              {
                "value": "SOS",
                "displayValue": "SOS"
              },
              {
                "value": "SRD",
                "displayValue": "SRD"
              },
              {
                "value": "SSP",
                "displayValue": "SSP"
              },
              {
                "value": "STN",
                "displayValue": "STN"
              },
              {
                "value": "SVC",
                "displayValue": "SVC"
              },
              {
                "value": "SYP",
                "displayValue": "SYP"
              },
              {
                "value": "SZL",
                "displayValue": "SZL"
              },
              {
                "value": "THB",
                "displayValue": "THB"
              },
              {
                "value": "TJS",
                "displayValue": "TJS"
              },
              {
                "value": "TMT",
                "displayValue": "TMT"
              },
              {
                "value": "TND",
                "displayValue": "TND"
              },
              {
                "value": "TOP",
                "displayValue": "TOP"
              },
              {
                "value": "TRY",
                "displayValue": "TRY"
              },
              {
                "value": "TTD",
                "displayValue": "TTD"
              },
              {
                "value": "TWD",
                "displayValue": "TWD"
              },
              {
                "value": "TZS",
                "displayValue": "TZS"
              },
              {
                "value": "UAH",
                "displayValue": "UAH"
              },
              {
                "value": "UGX",
                "displayValue": "UGX"
              },
              {
                "value": "USD",
                "displayValue": "USD"
              },
              {
                "value": "USN",
                "displayValue": "USN"
              },
              {
                "value": "UYI",
                "displayValue": "UYI"
              },
              {
                "value": "UYU",
                "displayValue": "UYU"
              },
              {
                "value": "UZS",
                "displayValue": "UZS"
              },
              {
                "value": "VED",
                "displayValue": "VED"
              },
              {
                "value": "VEF",
                "displayValue": "VEF"
              },
              {
                "value": "VND",
                "displayValue": "VND"
              },
              {
                "value": "VUV",
                "displayValue": "VUV"
              },
              {
                "value": "WST",
                "displayValue": "WST"
              },
              {
                "value": "XAF",
                "displayValue": "XAF"
              },
              {
                "value": "XCD",
                "displayValue": "XCD"
              },
              {
                "value": "XDR",
                "displayValue": "XDR"
              },
              {
                "value": "XOF",
                "displayValue": "XOF"
              },
              {
                "value": "XPF",
                "displayValue": "XPF"
              },
              {
                "value": "XSU",
                "displayValue": "XSU"
              },
              {
                "value": "XUA",
                "displayValue": "XUA"
              },
              {
                "value": "YER",
                "displayValue": "YER"
              },
              {
                "value": "ZAR",
                "displayValue": "ZAR"
              },
              {
                "value": "ZMW",
                "displayValue": "ZMW"
              },
              {
                "value": "ZWL",
                "displayValue": "ZWL"
              },
              {
                "value": "other",
                "displayValue": "other"
              }
            ],
            "simpleValueType": true,
            "clearOnCopy": true,
            "defaultValue": "",
            "notSetText": "",
            "valueValidators": [],
            "help": "Default value for the \"currency\" parameter used for most ecommerce events.",
            "subParams": [
              {
                "type": "TEXT",
                "name": "otherCurrency",
                "displayName": "other currency name",
                "simpleValueType": true,
                "clearOnCopy": true,
                "enablingConditions": [
                  {
                    "paramName": "currency",
                    "paramValue": "other",
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "REGEX",
                    "args": [
                      "^[A-Z]+$"
                    ]
                  }
                ]
              }
            ],
            "enablingConditions": [],
            "alwaysInSummary": false,
            "valueUnit": ""
          },
          {
            "type": "SELECT",
            "name": "method",
            "displayName": "method",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "email",
                "displayValue": "email"
              },
              {
                "value": "google",
                "displayValue": "google"
              },
              {
                "value": "facebook",
                "displayValue": "facebook"
              },
              {
                "value": "other",
                "displayValue": "other"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "",
            "help": "Default value of the \"method\" parameter used for login and sign up.",
            "valueValidators": [],
            "notSetText": "",
            "clearOnCopy": true,
            "subParams": [
              {
                "type": "TEXT",
                "name": "otherMethod",
                "displayName": "other method name",
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "method",
                    "paramValue": "other",
                    "type": "EQUALS"
                  }
                ],
                "clearOnCopy": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "valueUnit": "",
            "enablingConditions": [],
            "alwaysInSummary": false
          },
          {
            "type": "SELECT",
            "name": "searchTerm",
            "displayName": "search_term",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "/",
                "displayValue": "/"
              },
              {
                "value": "\u003d",
                "displayValue": "\u003d"
              },
              {
                "value": "?",
                "displayValue": "?"
              },
              {
                "value": "q",
                "displayValue": "q"
              },
              {
                "value": "s",
                "displayValue": "s"
              },
              {
                "value": "query",
                "displayValue": "query"
              },
              {
                "value": "search",
                "displayValue": "search"
              },
              {
                "value": "other",
                "displayValue": "other"
              }
            ],
            "simpleValueType": true,
            "alwaysInSummary": false,
            "defaultValue": "",
            "help": "The last parameter of the URL containing the search term.",
            "valueValidators": [],
            "notSetText": "",
            "clearOnCopy": true,
            "enablingConditions": [],
            "subParams": [
              {
                "type": "TEXT",
                "name": "otherSearchTerm",
                "displayName": "other search_term name",
                "simpleValueType": true,
                "clearOnCopy": true,
                "enablingConditions": [
                  {
                    "paramName": "searchTerm",
                    "paramValue": "other",
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "valueUnit": ""
          },
          {
            "type": "SELECT",
            "name": "transactionId",
            "displayName": "transaction_id",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "random",
                "displayValue": "Random number"
              },
              {
                "displayValue": "Null",
                "value": "empty"
              },
              {
                "value": "other",
                "displayValue": "Other"
              }
            ],
            "simpleValueType": true,
            "notSetText": "",
            "alwaysInSummary": false,
            "clearOnCopy": true,
            "defaultValue": "",
            "enablingConditions": [],
            "help": "Check whether you want to generate a random order ID if the \"transaction_id\" parameter is missing.",
            "subParams": [
              {
                "type": "TEXT",
                "name": "otherTransactionId",
                "displayName": "other transactionId number",
                "simpleValueType": true,
                "clearOnCopy": true,
                "enablingConditions": [
                  {
                    "paramName": "transactionId",
                    "paramValue": "other",
                    "type": "EQUALS"
                  }
                ],
                "valueValidators": [
                  {
                    "type": "POSITIVE_NUMBER"
                  }
                ]
              }
            ],
            "valueValidators": [],
            "valueUnit": ""
          },
          {
            "type": "TEXT",
            "name": "value",
            "displayName": "value",
            "simpleValueType": true,
            "canBeEmptyString": false,
            "alwaysInSummary": false,
            "clearOnCopy": true,
            "defaultValue": "",
            "lineCount": 1,
            "notSetText": "",
            "enablingConditions": [],
            "help": "Default value for the \"value\" parameter used for most ecommerce events.",
            "textAsList": false,
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "valueHint": "",
            "valueUnit": ""
          }
        ],
        "help": "This section, contains the defined values of the search parameters. It allows you to automatically assign the correct values."
      }
    ],
    "help": "In this section you can set default values if a parameter will not contain values."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require("copyFromDataLayer");
const copyFromWindow = require("copyFromWindow");
const decode = require("decodeUriComponent");
const generateRandom = require("generateRandom");
const getUrl = require("getUrl");
const toBase64 = require("toBase64");
const makeNumber = require("makeNumber");

const dataLayer = copyFromWindow("dataLayer");
let website = getUrl("query");
let dataField = [];

if (data.FieldName) dataField.push(data.FieldName);
if (data.EcommerceFieldList) dataField.push(data.EcommerceFieldList);
if (data.GamesFieldList) dataField.push(data.GamesFieldList);
if (data.FieldArray) {
  let arrayFields = data.FieldArray.split(",");
  
  for (var i = 0; i < arrayFields.length; i++) {
    dataField.push(arrayFields[i]);
  }
}

function containsString(array, targetString) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === targetString) {
      return true;
    }
  }
  
  return false;
}

function replaceAllCharacters(inputString, character, newCharacter) {
  return inputString.split(character).join(newCharacter);
}

function extractFromUrl(website, targetSearch) {
    let start = website.lastIndexOf(targetSearch) + 1;
    let end = website.length;
    let last_arg = website.substring(start, end).replace(".html", "").replace(".php", "");
  
    return replaceAllCharacters(decode(last_arg), "+", " ");
}

function findValueByKeys(obj, keysArray, output) {
  let results = [];

  for (let k = 0; k < keysArray.length; k++) {
    let key = keysArray[k];
    
    if (obj.hasOwnProperty(key)) {
      if (output == "single_use") {
        return obj[key];
      }
      
      results.push(obj[key]);
    }

    for (let prop in obj) {
      if (typeof obj[prop] === "object" && obj[prop] !== null) {
        let subResults = findValueByKeys(obj[prop], [key], output);
        
        if (output === "single_use" && subResults) {
          return subResults;
        } else if (subResults && subResults.length) {
          results = results.concat(subResults);
        }
      }
    }
  }

  if (containsString(keysArray, "currency")) {
    results.push(data.currency != "other" ? data.currency : data.otherCurrency);
  }
  
  if (containsString(keysArray, "method")) {
    results.push(data.method != "other" ? data.method : data.otherMethod);
  }
  
  if (containsString(keysArray, "search")) {
    results.push(extractFromUrl(website, data.searchTerm != "other" ? data.searchTerm : data.otherSearchTerm));
  }
  
  if (containsString(keysArray, "transaction")) {
    if (data.transactionId == "random") {
      results.push(toBase64("" + generateRandom(0, 999999999)).replace("=", ""));
    } else if (data.transactionId == "empty") {
      results.push(data.transactionId);
    } else {
      results.push(data.otherTransactionId);
    }
  }
  
  if (containsString(keysArray, "value")) {
    results.push(data.value);
  }
  
  if (containsString(keysArray, data.FieldName) || 
    containsString(keysArray, data.FieldList) || 
    containsString(keysArray, data.FieldArray) && 
    data.defaultParameter !== null) {
    results.push(data.defaultParameter);
  }

  return output === "multi_use" ? results : results[0] || null;
}

return findValueByKeys(dataLayer, dataField, data.FieldOutput);


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
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "gtm.uniqueEventId"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "query",
          "value": {
            "type": 8,
            "boolean": true
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
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

scenarios: []
setup: ''


___NOTES___

Created on 10.10.2023, 14:07:27


