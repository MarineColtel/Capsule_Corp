// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

$(document).ready(function()
{ $('.loupe').click(function()
{ $(this).addClass('loupe-active'); }

); $('.close').click(function()
{ if($('.loupe').hasClass('loupe-active'))
{ $('.search').val(''); setTimeout(function()
{ $('.loupe').toggleClass('loupe-active'); }



, 100); }

}

); }

);
