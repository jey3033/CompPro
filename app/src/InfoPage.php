<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class InfoPage extends Page
{
	private static $db = [
		'Description' => 'HTMLText'
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Description'));

		return $fields;
	}
}