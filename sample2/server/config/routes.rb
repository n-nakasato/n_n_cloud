Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      namespace :pages do
        namespace :charts do
          match 'chartjs/area_chart.json' => 'chartjs#area_chart', :via => :get
          match 'chartjs/pie.json' => 'chartjs#pie', :via => :get
        end
      end
    end
  end

  # match '/api/v1/pages/charts/chartjs/area_chart.json' => '/api/v1/pages/charts/chartjs#area_chart', :via => :get
  # match '/api/v1/pages/charts/chartjs/pie.json' => '/api/v1/pages/charts/chartjs#pie', :via => :get

end
