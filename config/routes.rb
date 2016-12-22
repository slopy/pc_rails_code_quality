PcRailsCodeQuality::Engine.routes.draw do

  namespace :dev do
    get 'reports/rubocop', as: :rubocop_report
  end

end
