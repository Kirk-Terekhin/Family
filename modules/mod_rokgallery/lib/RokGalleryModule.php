<?php
 /**
 * @version   $Id: RokGalleryModule.php 11318 2013-06-07 15:06:15Z steph $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2015 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

// no direct access
defined('ROKGALLERYMODULE') or die('Restricted access');
jimport('joomla.utilities.date');

class RokGalleryModule
{
    protected static $global_header_files_loaded = false;

    /**
    *
    */
    public function loadGlobalHeaderFiles()
    {
        if (!self::$global_header_files_loaded) {
            $global_assets = RokCommon_Composite::get('mod_rokgallery_global_assets.js');
            RokCommon_Header::addScript($global_assets->getUrl('moofx.js'));
            RokCommon_Header::addScript($global_assets->getUrl('rokmediaqueries.js'));
            RokCommon_Header::addScript($global_assets->getUrl('mootools-mobile.js'));
            self::$global_header_files_loaded = true;
        }
    }

    public function getSlices(JRegistry &$params)
    {
        $conf = JFactory::getConfig();
        if ($conf->get('caching') && $params->get('module_cache', 0)) {
            $user = JFactory::getUser();
            $cache = JFactory::getCache('mod_rokgallery');
            $cache->setCaching(true);
            $args = array($params);
            $checksum = md5($params->toString());
            $slices = $cache->get(array($this, '_getSlices',), $args, 'mod_rokgallery-' . $user->get('aid', 0) . '-' . $checksum);
        }
        else
        {
            $slices = $this->_getSlices($params);
        }
        return $slices;
    }

    public function _getSlices($params)
    {

        $gallery_id = $params->get('gallery_id', '');
        $link = $params->get('gallery_link', 'false');

        if (empty($gallery_id)) return;


        $sort_by = $params->get('sort_by', 'slice_title');
        $sort_direction = $params->get('sort_direction', 'ASC');
        $model = new RokGallery_Site_GalleryModel($gallery_id, $sort_by, $sort_direction);

        $slices = $model->getSlices();



        $images = array();

        $limit = $params->get('limit_count', 0);
        foreach($slices as $slice)
        {
            $images[] = $this->_getPresentationImage($slice, $params);
            $limit--;
            if ($limit == 0) break;
        }
        return $images;
    }

    protected function &_getPresentationImage(RokGallery_Model_Slice &$slice, JRegistry &$params)
    {
        $image = new stdClass();
        $image->id = $slice->id;
        $image->title = ($params->get('gallery_use_title_from', 'slice') == 'slice') ? $slice->title
                : $slice->File->title;
        $image->title = htmlspecialchars_decode($image->title);
        $image->caption = ($params->get('gallery_use_caption_from', 'slice') == 'slice') ? $slice->caption
                : $slice->File->description;
        $image->caption = htmlspecialchars_decode($image->caption);
        $image->slug = $slice->slug;
        $image->created_at = date('j M Y', strtotime($slice->File->created_at));
        $image->updated_at = date('j M Y', strtotime($slice->updated_at));
        $image->views = $slice->File->Views->count;
        $image->loves = $slice->File->Loves->count;
        $image->thumburl = $slice->thumburl;
        $image->xsize = $slice->xsize;
        $image->ysize = $slice->ysize;
        $image->doilove = $slice->doilove;
        $image->filesize = $slice->filesize;
        $image->imageurl = $slice->imageurl;

        $image->rel = '';
        if (!RokGallery_Link::isJson($slice->link))
        {
            $link = new RokGallery_Link(json_encode(new RokGallery_Link_Type_Manual_Info($slice->link)));
        }

        else {
            $link = new RokGallery_Link($slice->link);
        }

        $cleaned_caption = strip_tags($image->caption);

        switch ($params->get('link'))
        {
            case 'rokbox':
                $gallery_name = preg_replace("/(\s|\/|_|-|!)/i", '', $slice->Gallery->name);
                $image->link = $slice->imageurl;
                $image->rel = 'rel="rokbox[' . $image->xsize . ' ' . $image->ysize . '](' . $gallery_name . ')" title="' . $image->title . ' :: ' . $cleaned_caption . '" ';
                break;
            case 'rokbox_full':
                $gallery_name = preg_replace("/(\s|\/|_|-|!)/i", '', $slice->Gallery->name);
                $image->link = $slice->File->imageurl;
                $image->rel = 'rel="rokbox[' . $slice->File->xsize . ' ' . $slice->File->ysize . '](' . str_replace(' ', '', $gallery_name) . ')" title="' . $image->title . ' :: ' . $cleaned_caption . '" ';
                break;
            case 'rokbox2':
                $gallery_name = $slice->Gallery->name;
                $caption = htmlentities($image->caption, ENT_QUOTES);
                $image->link = $slice->imageurl;
                $image->rel = 'data-rokbox data-rokbox-album="'.$gallery_name.'" data-rokbox-title="' . $image->title . '" data-rokbox-caption="' . $caption . '" ';
                break;
            case 'rokbox2_full':
                $gallery_name = $slice->Gallery->name;
                $caption = htmlentities($image->caption, ENT_QUOTES);
                $image->link = $slice->File->imageurl;
                $image->rel = 'data-rokbox data-rokbox-album="'.$gallery_name.'" data-rokbox-title="'.$image->title.'" data-rokbox-caption="' . $caption . '" ';
                break;
            case 'slice_link':
                switch ($link->getType()){
                    case 'manual':
                        if ($link->getUrl() == ''){
                            $jmenu = new JSite();
                            $menu = $jmenu->getMenu();
                            $activeenuitem  = $menu->getActive();
                            $menuItem = $menu->getItem($params->get('default_menuitem',$activeenuitem->id));
                            $image->link =  JRoute::_($menuItem->link.'&Itemid='.$menuItem->id);
                        }
                        else
                        {
                            $image->link = $link->getUrl();
                        }
                        break;
                    case 'article':
                        $image->link = JRoute::_($link->getUrl());
                        break;
                }
                break;
            default:
                $image->link = null;
        }
        return $image;
    }
}
