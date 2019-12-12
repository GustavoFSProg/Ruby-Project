 
 require 'yandex-translator'
 require 'net/http'
 require 'rest-client'
 require 'json'

 class Pessoa


    def pega(texto,idioma,traducao)

        
    @texto = texto
    @idioma_inicial = idioma
    @idioma_traduzir = traducao


   puts "Texto: #{@texto} Idioma: #{@idioma_inicial} Traduzir: #{ @idioma_traduzir}"

    end

    def traduzir

       # translator = Yandex::Translator.new('trnsl.1.1.20191205T130144Z.2a043cc22c2feed9.219129f8bf3cd51f6480bbcbb0af6e4dd1878cc3')
        #translator.langs
        #translator.detect @texto
       # translator.translate @texto, from: 'pt', to: 'eng'

      #  puts  translator.translate @texto, from: 'pt', to: 'eng'


        url =  'https://translate.yandex.net/api/v1.5/tr.json/translate'
    
        key =  'trnsl.1.1.20191205T130144Z.2a043cc22c2feed9.219129f8bf3cd51f6480bbcbb0af6e4dd1878cc3'
         q = 'spotcode'
        language = 'ruby'
         
        resp = RestClient.get "#{url}&key=#{key}q=#{q}&language=#{language}"
         
        puts JSON.parse(resp.body)["items"][0]["description"]

      

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



