Inbox.FiltersView = Ember.View.extend
 templateName: 'inbox/filters'
 classNames: ['filter-view']

Inbox.FilterRadioButtonGroup = Ember.RadioButtonGroup.extend
  name: "filter"
  filters: [
   { label: "Everything", value: "all" },
   { label: "Inbox", value: "received" },
   { label: "Sent", value: "sent" }
  ]
