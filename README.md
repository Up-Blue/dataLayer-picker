  # dataLayer Picker | Up Blue

  GTM variable template that automatically extracts and transforms ecommerce data from the dataLayer into GA4-compatible format. Zero configuration needed.

  ## Installation

  1. In Google Tag Manager, go to **Templates** > **Search Gallery**
  2. Search for **dataLayer Picker | Up Blue**
  3. Click **Add to workspace**
  4. Create a new variable using this template

  ## How it works

  The template reads the `ecommerce` object from the dataLayer and returns a clean, GA4-compatible object with all relevant ecommerce parameters.

  ### Data extraction logic

  1. Reads the `ecommerce` object from the dataLayer
  2. Falls back to `eventModel` if `ecommerce` is unavailable
  3. Returns `undefined` if no ecommerce data exists

  ### Extracted fields

  **Always extracted (when present):**

  | Field | Description |
  |-------|-------------|
  | `items` | Array of product objects |
  | `value` | Transaction value |
  | `currency` | Currency code |
  | `coupon` | Discount/coupon code |
  | `item_list_name` | Product list name |
  | `item_list_id` | Product list ID |

  **Extracted for purchase/refund events:**

  | Field | Description |
  |-------|-------------|
  | `transaction_id` | Order ID (also mapped from legacy `id` field) |
  | `tax` | Tax amount |
  | `shipping` | Shipping cost |
  | `affiliation` | Store or affiliation |

  **Extracted for specific events:**

  | Field | Events |
  |-------|--------|
  | `payment_type` | `add_payment_info`, `purchase` |
  | `shipping_tier` | `add_shipping_info`, `purchase` |

  ## Supported events

  - `view_item`
  - `add_to_cart`
  - `add_payment_info`
  - `add_shipping_info`
  - `purchase`
  - `refund`

  ## Configuration

  This template requires **no configuration** — it works automatically out of the box.

  ## Usage

  Use this variable anywhere you need structured ecommerce data in GA4 format. Common use cases:

  - Passing ecommerce data to tags that expect GA4-formatted objects
  - Extracting transaction details for server-side tagging
  - Normalizing legacy ecommerce dataLayer formats to GA4

  ## License

  Apache License 2.0 — see [LICENSE](LICENSE) for details.

  ## Author

  Built and maintained by [Up Blue](https://www.upblue.pl/).
