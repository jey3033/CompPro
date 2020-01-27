<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Versioned\Versioned;

class Service extends DataObject
{
	private static $db = [
		'ServiceName' => 'Varchar',
		'ServiceTag' => 'Text',
		'ServiceDesc' => 'HTMLText'
	];

	private static $has_one = [
		'Photo' => Image::class,
		'ServicePage' => ServicePage::class
	];

	private static $owns = [
		'Photo',
	];

	private static $summary_fields = [
		'CMSThumb',
		'ServiceName'
	];

	private static $searchable_fields = [
		'ServiceName'
	];

	private static $extensions = [
		Versioned::class,
	];
	private static $versioned_gridfield_extensions = true;

	public function CMSThumb(){
		if($this->Photo()->exists()){
			return $this->Photo()->ScaleWidth(100);
		}
		return "(no image)";
	}

	public function getCMSFields(){
		$fields = FieldList::create(
			TextField::create('ServiceName', 'Service Name'),
			TextField::create('ServiceTag', 'Service Tag Line'),
			HTMLEditorField::create('ServiceDesc', 'Service Description'),
			$u = UploadField::create('Photo')
		);

		$u->setFolderName('service-photos');

		return $fields;
	}

	public function Link()
	{
		return $this->ServicePage()->Link('/show/'.$this->ID);
	}

	public function LinkingMode(){
		return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'current' : 'link';
	}
}