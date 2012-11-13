Inbox.MessagesController = Ember.ArrayController.extend
  showSent: true
  isUpdatingBinding: 'content.isUpdating'
  filteredContent: (->
    if @get 'showSent'
      @filterProperty 'sent'
    else
      @get 'arrangedContent'
  ).property('arrangedContent', 'showSent')

