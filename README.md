solidus_pay_with_amazon
===================

Add Pay with Amazon to your Spree Commerce solution.

Installation
------------

Add solidus_amazon_payments to your Gemfile:

```
gem 'spree_social', github: 'spree-contrib/spree_social', branch: '3-0-stable'
gem 'solidus_amazon_payments', github: 'amzn/spree_pay_with_amazon'
```

Bundle your dependencies and run the installation generator:

```
bundle
bundle exec rails g solidus_amazon_payments:install
bundle exec rails g solidus_social:install
```

Registration
--------------
[Register for your Amazon Payments account here](https://sellercentral.amazon.com/hz/me/sp/signup?solutionProviderOptions=lwa%3Bmws-acc%3B&marketplaceId=AGWSWK15IEJJ7&solutionProviderToken=AAAAAQAAAAEAAAAQw%2B2XzpFj2GWN0gTo0twkdAAAAHAcjkEL%2FdK5mKZbaJyrLpiWRmzHCLnC5eLDc8TlCy4aHUaagtgrQcxbsBRi5Y3xsRv1jXEP2QFuCAniHYcBxE%2FpbFnuBaEBPHBANejgd8xYL4fBX8Fz3I9%2Fl5bmIYBWyvSCEP8MPJQ6KKCNwPGcV%2FDN&solutionProviderId=A31NP5KFHXSFV1)

Refund Callback
--------------
You will need to configure Instant Notification Settings in order to accept the callback when a refund is completed. Configure your IPN settings by logging into your [Seller Central Account](https://sellercentral.amazon.com/gp/pyop/seller/account/settings/user-settings-view.html?).

The IPN URL will be in the Configuration section of your Spree Commerce instance.

User Guide
--------------
Please see the user guide [here](https://github.com/amzn/spree_pay_with_amazon/blob/master/LoginandPaywithAmazonforSpreeCommerce.pdf?raw=true) for more information

Setup for Manually Testing in Development
-----------------------------------------
* Setup:
  * [Register for your Amazon Payments account here](https://sellercentral.amazon.com/hz/me/sp/signup?solutionProviderOptions=lwa%3Bmws-acc%3B&marketplaceId=AGWSWK15IEJJ7&solutionProviderToken=AAAAAQAAAAEAAAAQw%2B2XzpFj2GWN0gTo0twkdAAAAHAcjkEL%2FdK5mKZbaJyrLpiWRmzHCLnC5eLDc8TlCy4aHUaagtgrQcxbsBRi5Y3xsRv1jXEP2QFuCAniHYcBxE%2FpbFnuBaEBPHBANejgd8xYL4fBX8Fz3I9%2Fl5bmIYBWyvSCEP8MPJQ6KKCNwPGcV%2FDN&solutionProviderId=A31NP5KFHXSFV1)
  * Ensure you're accessing local version of store through HTTPS, not HTTP
    * A simple way to do this is to use the Thin web server.  Add it to the Gemfile, `bundle install`, then start it like this:
      `thin start --ssl -p 4001` (or whatever port you want to use)
    * Then, use `lvh.me` to access your site via:
      `https://lvh.me:4001` (you'll have to tell your browser to trust the SSL cert)
* In the store admin:
  * Set your "Amazon Settings" using the items (keys, IDs, etc) from this page [https://sellercentral.amazon.com/hz/me/integration/details](https://sellercentral.amazon.com/hz/me/integration/details)
  * Make sure you've setup an Amazon Payment Method [User Guide](https://github.com/amzn/spree_pay_with_amazon/blob/master/LoginandPaywithAmazonforSpreeCommerce.pdf?raw=true) for more info
* In Amazon Seller Central:
  * Set your "Instant Notification" Settings, Merchant URL here: [https://sellercentral.amazon.com/gp/pyop/seller/account/settings/user-settings-view.html?](https://sellercentral.amazon.com/gp/pyop/seller/account/settings/user-settings-view.html?)
    * You can copy/paste this from the store admin in Settings -> Amazon Settings.  It should look something like `https://lvh.me:4001/amazon_callback` (you'll have to tell your browser to trust the SSL cert)
  * Create a test user to use in Sandbox Environment using the following link, but be sure you select the correct environment from the drop down menu at the top of the page
    * [https://sellercentral.amazon.com/gp/pyop/seller/testing/ref=ps_pyoptest_dnav_pyopiset_](https://sellercentral.amazon.com/gp/pyop/seller/testing/ref=ps_pyoptest_dnav_pyopiset_)
* Attempt to purchase a product by logging in via Amazon and paying using Amazon Payments


