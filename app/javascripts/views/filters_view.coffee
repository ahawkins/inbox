Inbox.FiltersView = Ember.View.extend
 templateName: 'inbox/filters'
 filters: [
   { label: "Everything", value: "all" },
   { label: "Inbox", value: "sent" },
   { label: "Sent", value: "sent" }
 ]
