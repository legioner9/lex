$(document).ready(function(){
	
	// Находим блок карусели
	var carousel = $("#carousel2");
	// Запускаем плагин карусели
	carousel.owlCarousel({
		//singleItem: true, // Показывать только 1 блок на всю ширину
		
		// Количество отображающихся блоков в зависимости от устройства (ширины экрана)
		// Количество блоков на больших экранах
		items: 5,
		// 5 блоков на компьютерах (экран от 1400px до 901px)
		itemsDesktop : [1300,4],
		// 3 блока на маленьких компьютерах (экран от 900px до 601px)
		itemsDesktopSmall : [900,3],
		// 2 элемента на планшетах (экран от 600 до 480 пикселей)
		itemsTablet: [600,2],
		// Настройки для телефона отключены, в этом случае будут
		// использованы настройки планшета
		itemsMobile : [479,1],

		// Точки под каруселью
		pagination: true
	});

	// Назад
	// При клике на "Назад"
	$('#js-prev').click(function () {
	
		// Запускаем перемотку влево
		carousel.trigger('owl.prev');
	
		return false;
	});
	
	// Вперед
	// При клике на "Вперед"
	$('#js-next').click(function () {
	
		// Запускаем перемотку вправо
		carousel.trigger('owl.next');
	
		return false;
	});
});