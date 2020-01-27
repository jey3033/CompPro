<?php

use SilverStripe\Control\HTTPRequest;

class ServicePageController extends PageController
{
	private static $allowed_actions = [
		'show'
	];

	public function show(HTTPRequest $request){
		$service = Service::get()->byID($request->param('ID'));
		if(!$service){
			return $this->httpError(404, 'That Property could not be found');
		}

		return [
			'Service' =>$service,
			'Title' =>$service->ServiceName,
		];
	}
}