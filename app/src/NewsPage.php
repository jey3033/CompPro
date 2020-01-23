<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class NewsPage extends Page
{
	//relation to all news
	private static $has_many = [
		'News' => News::class
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.News', GridField::create(
			'News',
			'News on this page',
			$this->News(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}