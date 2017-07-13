class Shipping

  def get_shipping_price
    response = RestClient.get('http://production.shippingapis.com/ShippingAPI.dll?API=RateV4&`XML`=<RateV4Request USERID="903ABC003610"><Revision>2</Revision><Package ID="1ST"><Service>FIRST CLASS</Service><FirstClassMailType>LETTER</FirstClassMailType><ZipOrigination>98109</ZipOrigination><ZipDestination>20770</ZipDestination><Pounds>0</Pounds><Ounces>3.12345678</Ounces><Container/><Size>REGULAR</Size><Machinable>true</Machinable></Package></RateV4Request>')
    binding.pry
  end
end
