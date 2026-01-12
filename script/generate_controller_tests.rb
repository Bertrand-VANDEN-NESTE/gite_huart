# script/generate_controller_tests.rb
# Usage : ruby script/generate_controller_tests.rb

require 'fileutils'
require 'active_support/inflector'  # <-- ajoute ça pour singularize/pluralize

controllers = Dir["app/controllers/*_controller.rb"].map { |f| File.basename(f, ".rb") }

controllers.each do |controller|
  test_file = "test/controllers/#{controller}_test.rb"
  class_name = controller.split('_').map(&:capitalize).join + "Test"

  if File.exist?(test_file)
    puts "Skipped #{test_file} (already exists)"
    next
  end

  resource_name = controller.gsub('_controller', '').singularize
  plural_name = resource_name.pluralize

  File.open(test_file, 'w') do |f|
    f.puts <<~RUBY
      require "test_helper"

      class #{class_name} < ActionDispatch::IntegrationTest
        self.use_fixtures = false

        setup do
          @#{resource_name} = #{resource_name.capitalize}.create!(name: "#{resource_name.capitalize} Test")
        end

        teardown do
          @#{resource_name}.destroy
        end

        # INDEX
        test "should get index" do
          get #{plural_name}_url
          assert_response :success
        end

        # SHOW
        test "should get show" do
          get #{resource_name}_url(@#{resource_name})
          assert_response :success
        end

        # NEW
        test "should get new" do
          get new_#{resource_name}_url
          assert_response :success
        end

        # CREATE
        test "should create #{resource_name}" do
          assert_difference('#{resource_name.capitalize}.count', 1) do
            post #{plural_name}_url, params: { #{resource_name}: { name: "Nouvelle #{resource_name.capitalize}" } }
          end
          assert_redirected_to #{resource_name}_url(#{resource_name.capitalize}.last)
        end

        # EDIT
        test "should get edit" do
          get edit_#{resource_name}_url(@#{resource_name})
          assert_response :success
        end

        # UPDATE
        test "should update #{resource_name}" do
          patch #{resource_name}_url(@#{resource_name}), params: { #{resource_name}: { name: "Modifié" } }
          assert_redirected_to #{resource_name}_url(@#{resource_name})
          @#{resource_name}.reload
          assert_equal "Modifié", @#{resource_name}.name
        end

        # DESTROY
        test "should destroy #{resource_name}" do
          assert_difference('#{resource_name.capitalize}.count', -1) do
            delete #{resource_name}_url(@#{resource_name})
          end
          assert_redirected_to #{plural_name}_url
        end
      end
    RUBY
  end

  puts "Created #{test_file}"
end
