module SpreeMinicart
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "vendor/assets/javascripts/spree/frontend/all.js", "//= require store/spree_minicart\n"
      end

      def add_stylesheets
        inject_into_file "vendor/assets/stylesheets/spree/frontend/all.css", " *= require store/spree_minicart\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
