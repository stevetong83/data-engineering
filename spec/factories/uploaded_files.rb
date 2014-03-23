# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :uploaded_file do
    file { fixture_file_upload(Rails.root.join('spec', 'uploaded_files', 'example_input.tab'), 'tab') }
  end
end
