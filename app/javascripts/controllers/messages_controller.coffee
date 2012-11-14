Inbox.MessagesController = Ember.ArrayController.extend
  selectedFilter: "all"
  isUpdatingBinding: 'content.isUpdating'
  arrangedContent: Ember.computed('content', 'selectedFilter', ->
    content = @get('content')

    switch @get('selectedFilter')
      when 'received' then content.filterProperty('sent', false)
      when 'sent' then content.filterProperty('sent')
      else content
  )
