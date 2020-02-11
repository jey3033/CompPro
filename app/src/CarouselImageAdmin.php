<?php

use SilverStripe\Admin\ModelAdmin;

class CarouselImageAdmin extends ModelAdmin{
	private static $menu_title = 'Carousel Image';
	private static $url_segment = 'caroimage';
	private static $managed_models = [
		CarouselImage::class,
	];
}