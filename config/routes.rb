SdekCalc::Engine.routes.draw do
  get '/' => 'calculator#form'
  post '/' => 'calculator#calculate'

  get '/find_city' => 'cities#find'
end
