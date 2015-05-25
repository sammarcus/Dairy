RailsAdmin.config do |config|


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.excluded_models << "Sprinklesession"

  # config.navigation_static_label = "Goodies"

  # config.navigation_static_links = {
  #   'Special Surprise' => 'https://33.media.tumblr.com/05b55c342b093ed3929803d4bb99aba4/tumblr_n403k7tfgr1qfk1ago1_500.gif'
  # }

  config.model 'Order' do
#   label "Order ready for shipment"
#   label_plural "Orders ready for shipment"
    navigation_label 'Management'
    weight -1
  end

  config.model 'Customer' do
    navigation_label 'Management'
    weight 0
  end

  config.model 'Flavor' do
    navigation_label 'Ice Cream Configurations'
    weight 5
  end

  config.model 'Topping' do
    navigation_label 'Ice Cream Configurations'
    weight 5
  end

  config.model 'Containment' do
    navigation_label 'Ice Cream Configurations'
    weight 5
  #   navigation_icon 'icon-user'
  end



end
