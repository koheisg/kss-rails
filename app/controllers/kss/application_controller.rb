module Kss
  class ApplicationController < ActionController::Base
    layout 'kss/application'
    
    private
    
    def styleguide
      @styleguide ||= Kss::Parser.new(File.expand_path('app/assets/stylesheets', Rails.root))
    end
    helper_method :styleguide
  end
end