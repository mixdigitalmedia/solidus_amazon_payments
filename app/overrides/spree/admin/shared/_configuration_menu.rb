Deface::Override.new(
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'add_amazon_link_configuration_menu',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item Spree.t(:amazon_settings), spree.edit_admin_amazon_path %>'
)
