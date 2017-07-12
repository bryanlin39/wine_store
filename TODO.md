# Wine Store

### Core Functionality

#### Ecommerce User Stories
- [x] User model - username, email, admin
- [x] Add/delete Products from shopping cart
- [x] Update shopping cart
- [x] Clear shopping cart after completing order
- [x] See number of items in cart and total cost in the navbar
- [x] Paperclip for images
- [x] Check out functionality
- [x] Account profile for history of orders
- [x] "Favorites" tag for products
- [x] Product "in stock" count
- [ ] Reviews for products
- [x] Save shopping cart so it persists after sign out
- [ ] Confirmation email once order is completed

#### Admin User Stories
- [ ] CRUD for products
- [ ] "Featured" products
- [ ] Shipping and sales tax to total cost
- [ ] Sale items
- [ ] Discounts/coupons
- [ ] Items out of stock
- [ ] Authorizations

#### Shipping Employee User Stories
- [ ] See all orders that are ready for Shipping
- [ ] Organize by order date
- [x] Change stock of items
- [ ] Measure how many orders were completed today and how many in the queue

#### API User Stories


### Further Exploration
- [ ] Custom styling
- [ ] README

  <%= link_to 'Like', new_product_favorite_path(product), :id => 'like_btn#{product.id}' %>
    <%= render :partial => 'product', :collection => @products %>
