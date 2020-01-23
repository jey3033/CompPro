<?php

use SilverStripe\ORM\PaginatedList;
use SilverStripe\Control\HTTPRequest;

class NewsPageController extends PageController
{
	private static $allowed_actions = [
		'show'
	];

	public function index(HTTPRequest $e){
		$paginatedProperties = PaginatedList::create(
        	News::get(),
        	$e
        )->setPageLength(3)
        ->setPaginationGetVar('s');

        return ['Results' => $paginatedProperties];
	}

	public function show(HTTPRequest $request){
		$news = News::get()->byID($request->param('ID'));

		if(!$news){
			return $this->httpError(404, 'That news could not be found');
		}

		return [
			'News' =>$news,
			'Title' =>$news->Title
		];
	}
}