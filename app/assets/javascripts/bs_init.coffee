class @PetiInit
  constructor: ->
    @initialize_petisales()
  initialize_petisales: ->
    $(".datepicker").datepicker(
      dateFormat: 'yy-mm-dd'
    )
    setTimeout ->
      $('.fade-message').fadeOut('slow')
    , 800

class @TableClick
  constructor: ->
    @initialize_table_row()
  initialize_table_row: ->
    $('.pt-tr').dblclick ->
      location.href = $(this).data('href')
