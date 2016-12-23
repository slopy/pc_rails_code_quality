PcRailsCodeQuality::Engine.routes.draw do

  namespace :dev do
    get 'reports/rubocop', as: :rubocop_html_report
  end

end
