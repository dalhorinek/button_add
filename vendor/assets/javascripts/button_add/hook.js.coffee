jQuery ->
    $("form.dynamic").on 'click', '.remove-button', (event) -> 
        $row = $(this).closest('.dynamic-row')
        $row.find("input[type=hidden]").val(1);
        $row.hide()
        
        event.preventDefault()

    $('form.dynamic').on 'click', '.add-button', (event) ->
        $t = $(this)

        time = new Date().getTime()
        regexp = new RegExp($t.data('id'), 'g')

        $container = $t.closest('.dynamic-container');

        $container.append($t.data('fields').replace(regexp, time))
        $container.trigger 'row:add'

        event.preventDefault()
