*** Variables ***
&{toolbarSectionLocator}
...    lbl_section_name=android=UiSelector().resourceIdMatches(".*id/abtitle$")
...    btn_search=android=UiSelector().resourceIdMatches(".*id/search_button$")
...    btn_wishlist=android=UiSelector().resourceIdMatches(".*id/wishlist_button$")
...    btn_cart=android=UiSelector().resourceIdMatches(".*id/cart_button$")
...    btn_category_menu=android=UiSelector().description("Navigate up")
...    opt_category=android=UiSelector().resourceIdMatches(".*id/navigation_item_name$").text("{opt_name}")
...    lbl_number_wishlist_item=android=UiSelector().resourceIdMatches(".*id/wishlist_button$").childSelector(UiSelector().resourceIdMatches(".*id/badge_view$"))