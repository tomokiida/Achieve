#class Poem < ActiveResource::Base #ActiveRecord::Baseから変更する
Her::API.setup url: "https://glacial-escarpment-30205.herokuapp.com" do |c|
  c.use Faraday::Request::UrlEncoded
  c.use Her::Middleware::DefaultParseJSON
  c.use Faraday::Adapter::NetHttp
end
class Poem
	#self.site = "https://glacial-escarpment-30205.herokuapp.com"
	include Her::Model
end
