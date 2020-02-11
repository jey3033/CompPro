<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Versioned\Versioned;

class CarouselImage extends DataObject
{
	private static $db = [
		'Title' => 'Varchar',
		'Desc' => 'Text',
		'Linkto' => 'Varchar'
	];
	private static $has_one = [
		'Photo' => Image::class,
	];

	private static $owns = [
		'Photo',
	];

	private static $summary_fields = [
		'CMSThumb',
		'Desc'
	];

	private static $searchable_fields = [
		'Desc'
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
			$u = UploadField::create('Photo'),
			TextField::create('Title'),
			TextField::create('Linkto'),
			TextareaField::create('Desc')
		);

		$u->setFolderName('carousel-photos');

		return $fields;
	}
}