for i in [1..15]
  fixture =
    id: i.toString()
    subject: "Message #{i}"
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat, leo vitae cursus sagittis, velit ipsum cursus nisl, sed gravida orci justo vitae leo. In in nisi ut tellus venenatis ultrices. Curabitur bibendum, nibh interdum dignissim bibendum, nibh est fermentum nisi, quis convallis dui quam vitae tellus. Vivamus id nisl ut lorem ultrices posuere. Phasellus accumsan erat fringilla lorem suscipit ac commodo turpis consequat. Ut pulvinar dignissim sem eu congue. Donec odio urna, volutpat a malesuada nec, eleifend at eros. Duis adipiscing lacus vel ligula congue ornare. Fusce nibh lacus, feugiat et pellentesque at, facilisis eget lacus. Phasellus ante nisi, fringilla vel hendrerit eu, consectetur cursus nibh."

  Inbox.Message.FIXTURES ||= []
  Inbox.Message.FIXTURES.push fixture
