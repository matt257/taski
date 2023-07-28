// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require sidebar

import "@hotwired/turbo-rails"
import "controllers"
import "channels"
import { toggleSidebar } from './sidebar.js';

document.addEventListener('DOMContentLoaded', () => {
  const button = document.getElementById('toggleButton')
    .addEventListener('click', function() {
      document.querySelector('.sidebar')
        .classList.toggle('active');
      document.querySelector('.main-content')
        .classList.toggle('active');
})});

