Rails.configuration.stripe = {
  :publishable_key => 'pk_test_5I3mesx6Oq9FObrADPEz4THh',
  :secret_key      => 'sk_test_wvp39IJGq5qULrjhiN1B5Hug'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
