class CodeQualityAnalysis
  def self.run_html_reports
    run_rubocop
  end

  def self.run_rubocop
    require 'rubocop'
    options = %w(-fhtml -opublic/rubocop.html)
    RuboCop::CLI.new.run(options)
  end
end