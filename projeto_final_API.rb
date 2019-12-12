 
 require 'yandex-translator'
 require 'net/http'
 require 'rest-client'

 class Pessoa


    def pega(texto,idioma,traducao)

        
    @texto = texto
    @idioma_inicial = idioma
    @idioma_traduzir = traducao


   puts "Texto: #{@texto} Idioma: #{@idioma_inicial} Traduzir: #{ @idioma_traduzir}"

    end

    def traduzir
      
     # translator = Yandex::Translator.new('https://translate.yandex.net/api/v1.5/tr.json/translate
      #? key=trnsl.1.1.20191205T130144Z.2a043cc22c2feed9.219129f8bf3cd51f6480bbcbb0af6e4dd1878cc3
      #& text=agua
      #& lang=en
      #& [format=html]')

      response = RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/translate',
       :params => {:foo => 'bar', :baz => 'qux'}
      
# RestClient.get('https://translate.yandex.net/api/v1.5/tr.json/translate')

      #  RestClient.get('https://translate.yandex.net/api/v1.5/tr.json/translate',
       #  {:params => {:id => 50, 'foo' => 'bar'}})/

       # RestClient.get 'https://user:password@example.com/private/resource', {:accept => :json}

       # RestClient.post 'https://translate.yandex.net/api/v1.5/tr.json/translate',
        # :param1 => 'one', :nested => { :param2 => 'two' }

      # RestClient.post "https://translate.yandex.net/api/v1.5/tr.json/translate", 
       # { 'x' => 1 }.to_json, :content_type => :json, :accept => :json/

       # RestClient.delete 'https://translate.yandex.net/api/v1.5/tr.json/translate'

       # response = RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/translate'
        response.code
      
   
       


      

    end

end

  puts "Digite o Texto: "

  text = gets.chomp


  puts "Digite o idioma: "

   idio = gets.chomp

   puts "Digite o Idioma praa traduzir: "

   traducao = gets.chomp


  pessoa = Pessoa.new

  pessoa.pega(text,idio,traducao)

  pessoa.traduzir



