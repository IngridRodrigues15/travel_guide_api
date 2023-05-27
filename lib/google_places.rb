require "uri"
require "net/http"

  class GooglePlaces

    BASE_URL = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json".freeze
    # API_KEY = ENV['GOOGLE_PLACES_API_KEY'].freeze 
    API_KEY = "AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY".freeze 

    def initialize(input)
      @input = input
    end
      
    def api
      uri = URI("#{BASE_URL}?#{query_params}&#{api_key_params}")

      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true

      request = Net::HTTP::Get.new(uri)

      response = https.request(request)
      response.read_body
    end

    private

    def query_params
      "input=#{sanitized_text}&inputtype=#{input_type_params}&fields=#{fields_params}&language=#{language_params}"
    end

    def fields_params
      'photos,formatted_address,name,rating,opening_hours,geometry'
    end

    def input_type_params
     'textquery'
    end

    def language_params
      'pt-BR'   
    end 

    def api_key_params
      "key=#{API_KEY}"
    end

    def sanitized_text
      sanitized_text = @input.gsub(/[^a-zA-Z0-9\-]/,"") 
      sanitized_text
    end
  end



