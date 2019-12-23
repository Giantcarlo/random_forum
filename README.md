# README


Ruby 2.5.1

Rails 5.2.3

A personal project I'm working on.

Notes to self: 
- Use impressionist to count page views
- Use trix for text editor


Front-end:
- I'm using the Bootstrap 4 gem
- Here's the UI kit I'm using: http://designmodo.github.io/Flat-UI/ 




<%= form_for(@post) do |f| %>
    <div class="field">
      <%= f.label :title, "Title"%>
      <%= f.text_field :title %>
    </div>

  <div class="field">
    <%= f.hidden_field :content, id: :post_content %>
    <trix-editor input="post_content"></trix-editor>
  </div>

  <div>
    <%= f.submit "Create post", class:"btn btn-primary"%>
  </div>

<% end %>

