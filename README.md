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



<%= form_tag url_for(action: 'create'), method: "post" do %>
    <div class="field">
      <%= label_tag "Title"%>
      <%= text_field_tag 'title'%>
    </div>

  <div class="field">
    <%= label_tag 'Content'%>
    <%= hidden_field_tag 'content'%>
    <trix-editor input="post-body"></trix-editor>
  </div>

  <div>
    <%= submit_tag "Create post", class:"btn btn-primary"%>
  </div>

<% end %>
