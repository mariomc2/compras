window.quantityChange = function(item){
	Rails.fire(item.closest('form'), 'submit');
}