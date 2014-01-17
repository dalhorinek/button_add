# ButtonAdd

JavaScript Button add for dynamic forms as shown in RailsCasts (403 - dynamic forms)

## Installation

Add this line to your application's Gemfile:

    gem 'button_add'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install button_add

## Usage

In your application.js add 

    //= require button_add

In your view 

        <%= link_to_js_add "Add", f, :association_name %> </th>

        <%= f.fields_for :association_name do |builder| %>
          <%= render partial: 'association_name_fields', locals: { f: builder } %>
        <% end %>

It clones closest element with row class and appends it to closest element with class dynamic-container 

Synopis 

    link_to_js_add button_name, form, association_name, options = {} 


Possible options 

    partial: "name_of_your_partial_file.html"
      default value is "association_name_fields.html"

    link_options: { ... options passed to link_to helper }

    locals: { ... some extra locals passwd to partial }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
