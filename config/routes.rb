SdekCalc::Engine.routes.draw do
  get '/' => 'calc#index'
  post '/' => 'calc#calculate'
end
