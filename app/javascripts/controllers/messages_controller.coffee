Inbox.MessagesController = Ember.ArrayController.extend
  selectedFilter: "all"
  isUpdatingBinding: 'content.isUpdating'
  filteredContent: (->
    switch @get('selectedFilter')
      when 'received' then @filterProperty('sent', false)
      when 'sent' then @filterProperty('sent')
      else @get('arrangedContent')
  ).property('selectedFilter')

