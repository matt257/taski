// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require sidebar

import "@hotwired/turbo-rails"
import "controllers"
import "channels"
import { openSidebar, closeSidebar, toggleSidebar } from "sidebar.js"
