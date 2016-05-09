SdekCalc::Engine.routes.draw do
  root 'calculator/calculator#new'

  get '/find_city' => 'cities#find', module: 'calculator'

  resource :calculator, only: [:new, :create], module: 'calculator'
end
