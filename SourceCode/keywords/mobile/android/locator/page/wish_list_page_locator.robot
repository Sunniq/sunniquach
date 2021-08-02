*** Variables ***
&{wishListPageLocator}
...    icon_empty_wishlist=android=UiSelector().resourceIdMatches(".*id/empty_icon$")
...    txt_empty_wishlist=android=UiSelector().resourceIdMatches(".*id/wishlist_empty_label$").text("Your wishlist is empty.")
...    lbl_product_price=android=UiSelector().resourceIdMatches(".*:id/item_price$")
...    txt_product_name=android=UiSelector().resourceIdMatches(".*id/item_name$")
...    lbl_product_size=android=UiSelector().resourceIdMatches(".*:id/product_variant_button$")
...    btn_delete_product=android=UiSelector().resourceIdMatches(".*id/delete_button$")
...    btn_add_to_cart=android=UiSelector().resourceIdMatches(".*id/add_cart_button$")