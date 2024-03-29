Inbox.Message = DS.Model.extend
  subject: DS.attr('string')
  body: DS.attr('string')
  sent: DS.attr('boolean')

  teaser: (->
    truncated = @get('body').substring(0, 50)

    if @get('body').length > 50
      "#{truncated}..."
    else
      truncated
  ).property('body')
