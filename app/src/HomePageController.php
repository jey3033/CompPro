<?php

use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;

class HomePageController extends PageController
{
	public function index(HTTPRequest $e){
		$dataNews = News::get()->limit(3);
		$dataArr = ArrayList::create();
		$s=0;
		$info = InfoPage::get()->sort('ID', 'ASC')->limit(4);
		return [
			'News' => $dataNews,
			'Info' => $info,
			'GID' => $dataArr,
		];
	}
}