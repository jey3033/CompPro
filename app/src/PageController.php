<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\View\Requirements;
    use SilverStripe\ORM\ArrayList;
    use SilverStripe\View\ArrayData;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            Requirements::css('lib/bootstrap/css/bootstrap.min.css');
            Requirements::css('lib/font-awesome/css/font-awesome.min.css');
            Requirements::css('lib/animate/animate.min.css');
            Requirements::css('lib/ionicons/css/ionicons.min.css');
            Requirements::css('lib/owlcarousel/assets/owl.carousel.min.css');
            Requirements::css('lib/lightbox/css/lightbox.min.css');
            Requirements::css('css/style.css');
            Requirements::javascript('lib/jquery/jquery.min.js');
            Requirements::javascript('lib/jquery/jquery-migrate.min.js');
            Requirements::javascript('lib/bootstrap/js/bootstrap.bundle.min.js');
            Requirements::javascript('lib/easing/easing.min.js');
            Requirements::javascript('lib/superfish/superfish.min.js');
            Requirements::javascript('lib/superfish/hoverIntent.js');
            Requirements::javascript('lib/wow/wow.min.js');
            Requirements::javascript('lib/waypoints/waypoints.min.js');
            Requirements::javascript('lib/counterup/counterup.min.js');
            Requirements::javascript('lib/owlcarousel/owl.carousel.min.js');
            Requirements::javascript('lib/isotope/isotope.pkgd.min.js');
            Requirements::javascript('lib/lightbox/js/lightbox.min.js');
            Requirements::javascript('lib/touchSwipe/jquery.touchSwipe.min.js');
            Requirements::javascript('javascript/main.js');
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }
        public function dataGallery(){
            $dataGallery = GalleryImage::get()->limit(3);
            return $dataGallery;
        }
        public function GID(){
            $dataArr = ArrayList::create();
            $s=0;
            $dataGallery = GalleryImage::get()->limit(3);
            foreach ($dataGallery as $i) {
                $dataArr->push(ArrayData::create([
                    'ID' => $s
                ]));
                $s++;
            }
            return $dataArr;
        }
        public function FInfo(){
            $info = InfoPage::get()->sort('ID','ASC')->first();
            return $info;
        }
        public function FContact(){
            $info = ContactPage::get()->first();
            return $info;
        }
    }
}
