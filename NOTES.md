Active Record uses the new_record? instance method to determine whether an object is already in the database or not.

The following methods trigger validations, and will save the object to the database only if the object is valid:

    create
    create!
    save
    save!
    update
    update!

The bang versions (e.g. save!) raise an exception if the record is invalid. The non-bang versions don't: save and update return false, and create just returns the object.

```
<div class="media">
    <p class="ml-3"><%= log.date.strftime '%A, %B %e, %Y' %></p>
    <div class="media-body">
        <p>Description: <%= log.description %></p>
        <p><%= link_to 'delete', [log.food, log], :method => :delete, :data => { :confirm => 'Are you sure?' }%></p>
    </div>
    <div class="show-tags">
        <% log.tags.each do |t| %>
            <div class="tag">
                <%= link_to t.name, t %>
            </div>
        <% end %>
    </div>
</div>
```

```
.color1 {color: #121c20;}
.color2 {color: #12506e;}
.color3 {color: #1db2be;}
.color4 {color: #9de987;}
.color5 {color: #f4eb95;}
```

javascript for the burger isnt working
tags not properly showing up
GET PICTURE UPLOADING