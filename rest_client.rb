
 require 'rest-client'
 require '*/http-accept'
 require '*/http-cookies'
 require 'mime-types'
 require 'netrc'

  pagina = RestClient.get ('www.pianopoa.com.br')

   puts pagina

   
  # post = RestClient.post 'https://translate.yandex.net/api/v1.5/tr.json/translate', :param1 => 'one'

  def create_event
    endpoint = "#{'https://translate.yandex.net/api/v1.5/tr.json/translate'}"
  
    request_body = {
      corpo: 1
    }
  
    headers = {
      "Authorization" => "Bearer #{'trnsl.1.1.20191205T130144Z.2a043cc22c2feed9.219129f8bf3cd51f6480bbcbb0af6e4dd1878cc3'}",
      "Content-Type" => "application/json"
    }
  
    RestClient.post(endpoint, request_body, headers)
  end   
  

  create_event
  #post = RestClient.post(endpoint, request_body.to_json, headers)
 

  #puts post

  
   