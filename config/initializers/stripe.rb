if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_n4Jas6mmIldxuucaK9QMwxMC',
    :secret_key => 'sk_test_B2to9ikvBZmYIokYehJOdOOF'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]