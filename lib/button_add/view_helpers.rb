require "button_add/version"

module ButtonAdd
  module ViewHelpers
    def link_to_js_add(name, f, association, options = {})
      new_object = f.object.send(association).klass.new(options[:init]) 
      id = new_object.object_id

      partial = options[:partial]

      if partial.nil?
        partial = "#{association.to_s}_fields"
      end

      locals = options[:locals] || {}
      link_options = options[:link_options] || {}

      fields = f.fields_for(association, new_object, child_index: id) do |builder| 
        l = locals.merge( f: builder ) 
        render( partial: partial, locals: l)
      end

      link_options.merge!( data: { id: id, fields: fields.gsub("\n", "") } )
      link_to(name, "#", link_options)
    end
  end
end
