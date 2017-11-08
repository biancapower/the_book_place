class StripeService
  def self.get_customer_id
    response = HTTParty.post("https://connect.stripe.com/oauth/token",
        :query => { client_secret: ENV['STRIPE_SECRET_KEY'],
                    code: "ac_BjAYCacVxSdHW6wDmEYLVVqf3lVOtjIQ",
                    grant_type: "authorization_code"
                  })


  end
end



# HTTParty.post("https://connect.stripe.com/oauth/token",
#     :query => { client_secret: "sk_test_T7qYf8seze9LIadg0PoKdZOG",
#                 code: "ac_BjAYCacVxSdHW6wDmEYLVVqf3lVOtjIQ",
#                 grant_type: "authorization_code"
#               })
