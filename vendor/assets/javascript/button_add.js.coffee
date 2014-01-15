jQuery ->

    $("form.dynamic").on 'click', '.remove-button', (event) -> 
        $row = $(this).closest('tr')
        $row.find("input[type=hidden]").val(1);
        $row.hide()
        
        event.preventDefault()

    $('form.dynamic').on 'click', '.add-button', (event) ->
        $t = $(this)

        time = new Date().getTime()
        regexp = new RegExp($t.data('id'), 'g')

        $t.closest('table').append($t.data('fields').replace(regexp, time))
        event.preventDefault()