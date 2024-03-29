<?php
/**
  * @version   $Id: default_slices_view.php 10868 2013-05-30 04:05:27Z btowles $
  * @author    RocketTheme http://www.rockettheme.com
  * @copyright Copyright (C) 2007 - 2015 RocketTheme, LLC
  * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
  */

$slice = $that->slice;
$publish = !$slice->published ? 'publish' : 'unpublish';
$published = $slice->published ? 'published' : 'unpublished';

if (!$slice->link){

    $link = "#";

} else {

    if (!RokGallery_Link::isJson($slice->link)) $link = new RokGallery_Link(json_encode(new RokGallery_Link_Type_Manual_Info($slice->link)));
    else $link = new RokGallery_Link($slice->link);

    $link = $link->getUrl();
}

?>

<li data-id="slice-<?php echo $slice->id; ?>" class="slice slice-<?php echo $published; ?>">
    <div class="wrapper">
        <img src="<?php echo $slice->adminthumburl; ?>" alt="" width="300" height="180" />
    </div>
    <div class="info">
    	<div class="left">
    		<div><span><?php echo $slice->xsize; ?></span> x <span><?php echo $slice->ysize; ?></span></div>
    	</div>
      <div class="right">
          <?php if ($that->textarea): ?>
          <select class="link_type">
            <optgroup label="Link">
              <option value="none">None</option>
              <option value="direct_slice" data-opentag="<a href='<?php echo $slice->imageurl;?>'>" data-closetag="</a>">Direct To Slice</option>
              <option value="direct_link" data-opentag="<a href='<?php echo $link;?>'>" data-closetag="</a>">Direct To Link</option>
              <option value="rokbox2_slice" data-opentag="<a data-rokbox data-rokbox-title='<?php echo $slice->title; ?>' data-rokbox-caption='<?php echo htmlentities($slice->caption, ENT_QUOTES); ?>' href='<?php echo $slice->imageurl;?>'>" data-closetag="</a>">RokBox2 To Slice</option>
              <option value="rokbox2_link" data-opentag="<a data-rokbox href='<?php echo $link;?>'>" data-closetag="</a>">RokBox2 To Link</option>
              <option value="rokbox_slice" data-opentag="<a rel='rokbox[<?php echo $slice->xsize;?> <?php echo $slice->ysize;?>]' title='<?php echo $slice->title." :: ".strip_tags($slice->caption); ?>' href='<?php echo $slice->imageurl;?>'>" data-closetag="</a>">RokBox1 To Slice</option>
              <option value="rokbox_link" data-opentag="<a rel='rokbox[fullscreen]' title='<?php echo $link; ?>' href='<?php echo $link;?>'>" data-closetag="</a>">RokBox1 To Link</option>
            </optgroup>
          </select>
          <select class="display_type">
            <optgroup label="Fixed">
              <option value="slice" data-display="<img src='<?php echo $slice->imageurl;?>' width='<?php echo $slice->xsize;?>' height='<?php echo $slice->ysize;?>' alt='' title='' />">Slice</option>
              <option value="thumb" data-display="<img src='<?php echo $slice->thumburl;?>' width='<?php echo $slice->thumb_xsize;?>' height='<?php echo $slice->thumb_ysize;?>' alt='' title='' />">Thumbnail</option>
            </optgroup>
            <optgroup label="Responsive">
              <option value="slice" data-display="<img src='<?php echo $slice->imageurl;?>' style='max-width: 100%;height: auto;' alt='' title='' />">Slice</option>
              <option value="thumb" data-display="<img src='<?php echo $slice->thumburl;?>' style='max-width: 100%;height: auto;' alt='' title='' />">Thumbnail</option>
            </optgroup>
          </select>
          <?php endif; ?>
          <span class="jinsert_action" title="<?php rc_e('ROKGALLERY_PICKER_INSERT_SLICE'); ?>" data-width="<?php echo $slice->xsize; ?>" data-height="<?php echo $slice->ysize; ?>" data-display="<?php echo $slice->imageurl;?>" data-minithumb="<?php echo $slice->miniadminthumburl; ?>"></span>
      </div>
    	<div class="clr"></div>
    </div>
</li>

