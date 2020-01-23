<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Versioned\Versioned;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class News extends DataObject
{
	//Data DB
	private static $db = [
		'Title' => 'Varchar',
		'Description' => 'HTMLText',
		'Summary' => 'Text'
	];

	/*Versioning*/
	private static $extensions = [
		Versioned::class,
	];
	private static $versioned_gridfield_extensions = true;

	//Anchoring to NewsPage
	private static $has_one = [
		'NewsPage' => NewsPage::class
	];

	private static $summary_fields = [
		'Title' => 'Title of the News',
		'Summary' => 'Short description',
	];

	private static $searchable_fields = [
		'Title', 'Description' 
	];

	public function onBeforeWrite(){
		parent::onBeforeWrite();
		$this->Summary = substr($this->Description, 0, strpos($this->Description, '.'));
	}

	public function getCMSFields(){
		$fields = FieldList::create(
			TextField::create('Title', 'Title of the News'),
			HTMLEditorField::create('Description')
		);

		return $fields;
	}

	public function Link()
	{
		return $this->NewsPage()->Link('show/'.$this->ID);
	}

	public function LinkingMode(){
		return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
	}
}