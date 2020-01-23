<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Versioned\Versioned;


class GalleryPage extends Page
{
	private static $has_many = [
		'Photo' => GalleryImage::class
	];

	private static $extensions = [
		Versioned::class,
	];
	private static $versioned_gridfield_extensions = true;

	private static $owns = [
		'Photo'
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->addFieldToTab('Root.Photos', GridField::create(
			'Photo',
			'Photos on this page',
			$this->Photo(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}