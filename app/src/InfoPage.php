<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;

class InfoPage extends Page
{
	private static $db = [
		'InfoTitle' => 'Varchar',
		'Description' => 'HTMLText'
	];
	private static $has_one = [
		'Photo' => Image::class
	];

	private static $owns = [
		'Photo'
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		$fields->addFieldToTab('Root.Main', TextField::create('InfoTitle'));
		$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Description'));
		$fields->addFieldToTab('Root.Main', $u = UploadField::create('Photo'));

		$u->setFolderName('Info-Photos');

		return $fields;
	}
	public function FInfo(){
		parent::FInfo();
	}
	public function FContact(){
		parent::FContact();
	}
}