/*
 * @version   $Id: RokGallery.js 10876 2013-05-30 06:23:01Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2015 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
((function(){var a=this.RokGallery={init:function(){a.url=RokGallerySettings.url;
a.wrapBlueStork();a.blocks=new RokGallery.Blocks();a.editPanel=new RokGallery.Edit();a.filters=new RokGallery.Filters();a.jobsManager=a.createJobsManager();
a.galleryManager=a.createGalleries();a.loadMore=a.createLoadMore();a.rubberband=a.createRubberBand();window.Popup=a.popup=new Popup();window.Popup.popup.addEvents({open:a.rubberband.detach.bind(a.rubberband),close:function(){if(Browser.firefox){document.getElements("html, body").setStyle("height","auto");
}a.rubberband.attach();}});document.body.addClass(Browser.name);a.attachSelectAll();},wrapBlueStork:function(){var b=document.id(document.body);if(b.get("id")!="minwidth-body"){return;
}var c=b.getChildren(),d=new Element("div").inject(b,"top");c.inject(d);d.setStyle("padding",b.getStyle("padding"));b.setStyle("padding",0);},attachSelectAll:function(){var b=document.getElement(".total-select-all");
if(b){b.addEvent("click",function(c){c.stop();if(a.rubberband){a.rubberband.selectAll();}});}},createGalleries:function(){return new GalleriesManager("toolbar-galleries",{url:RokGallery.url});
},createRubberBand:function(){return new Rubberband({select:function(b){b.addClass("selected");b.store("rubberbanded",true);a.blocks.updateCounter();},deselect:function(b){b.removeClass("selected");
b.store("rubberbanded",false);a.blocks.updateCounter();},elements:".gallery-block",ignores:"#toolbar-publish, #toolbar-unpublish, #toolbar-tag, #toolbar-delete",trigger:"rokgallery"}).attach();
},createLoadMore:function(){return new MainPage("load-more",{url:RokGallery.url,pageData:{page:RokGallerySettings.next_page,items_per_page:RokGallerySettings.items_per_page,filters:[]},onKeyDown:function(c,b){b.addClass("load-all").getElement("span.text").set("html","load all");
},onKeyUp:function(c,b){b.removeClass("load-all").getElement("span.text").set("html","load more");},onError:function(b){this.element.removeClass("loader");
this.popup({type:"warning",message:b});},onGetPage:function(c){this.element.removeClass("loader");var f=c.payload;if(!f.more_pages){this.detach();this.element.fade("out").get("tween").chain(function(){this.element.setStyle("display","none");
}.bind(this));}this.currentPage={page:1,items_per_page:f.total_items_shown};this.setPageData({page:f.next_page,items_per_page:f.items_per_page});document.getElement(".total-viewing span:first-child").set("text",f.total_items_shown);
document.getElement(".total-viewing span:last-child").set("text",f.total_items_in_filter);document.getElement(".total-files span:first-child").set("text",f.total_items);
RokGallerySettings.total_items=f.total_items;RokGallerySettings.last_page=f.last_page;var b=document.getElement("#gallery-list > .clr !~"),e,h=false,d=false;
if(!b){b=document.getElement("#gallery-list > .clr");e=new Element("div").inject(b,"before");d=true;["elements","index","selected"].forEach(function(i){RokGallery.rubberband[i].empty();
});}else{e=new Element("div").inject(b,"after");RokGallery.blocks.blocks.empty();}e.set("html",f.html);var g=e.getElements(".gallery-block");e.getChildren().inject(e,"before");
e.dispose();if(d){RokGallery.blocks=new RokGallery.Blocks();RokGallery.editPanel.fileSettings=RokGallery.blocks.editFileSettings;}RokGallery.blocks.addBlocks(g);
RokGallery.blocks.rubberband=RokGallery.rubberband;RokGallery.blocks.rubberband.selected.empty();document.getElement(".total-count .total-selected span").set("text",0);
return this;}});},createJobsManager:function(){var b=new JobsManager("toolbar-jobs",{url:RokGallery.url,singleJob:{onStart:function(c){if(!this.element){this.element=document.id(this.id);
this.element.set("slide",{duration:350,transition:"expo:in"});}this.element.getElement(".loader").setStyle("display","block");},onBeforeDelete:function(){this.element.getElement(".refresh").setStyle("display","none");
this.element.getElement(".delete").setStyle("display","none");},onDelete:function(){this.element.slide("out").slide("out").get("slide").chain(function(){var c=this.element.getParent();
c.set("tween",{duration:200,transition:"expo:out"});c.tween("margin-bottom",0).get("tween").chain(function(){c.dispose();var d=b.jobsCount.get("text").toInt();
d=d-1<0?0:d-1;b.jobsCount.set("text",d);b.scrollbar.update();}.bind(this));}.bind(this));},onDone:function(f,c){if(this.action!="status"){return this.status.delay(10,this);
}var d=c.payload,e=this.element.retrieve("job-data");e.type=d.type;e.state=d.state;e.status=d.status;e.lastUpdate=d.lastUpdate;e.percent=d.percent;this.element.store("job-data",e);
this.element.className="job-item "+d.state.toLowerCase();this.element.getElement(".job-id").set("text",d.type+" updated at "+d.lastUpdate);this.element.getElement(".job-updated").set("text",d.status);
this.element.getElement(".job-state").set("text",d.state+" ("+d.percent+"%)");b.options.refreshIcons(this.element,d.state);if(["prepping","pausing","canceling"].contains(d.state.toLowerCase())){return this.status.delay(10,this);
}return this;}},attachIcons:function(d){var e=d.retrieve("actions"),c=d.retrieve("job-request");c.queue="status";e.each(function(g,f){g.addEvent("click",function(){var i=d.retrieve("job-data"),h=i.state.toLowerCase();
if(!f){c.status();}else{if(f==1){if(h=="ready"){c.process();}else{if(h=="paused"){c.resume();}}}else{if(f==2){if(h=="running"){c.pause();}}else{if(f==3){c.cancel();
}else{if(f==4){c.queue="";c["delete"]();}}}}}});},this);},refreshIcons:function(g){var h=g.retrieve("actions"),c=g.retrieve("loader"),f=g.retrieve("job-data"),d=g.retrieve("job-request"),e=f.state.toLowerCase();
h.setStyle("display","none");c.setStyle("display","none");h[0].setStyle("display","block");if(["prepping","pausing","canceling"].contains(e)){h[0].setStyle("display","block");
}if(["ready","paused"].contains(e)){h[1].setStyle("display","block");}if("running"==e){h[2].setStyle("display","block");}if(["ready","paused","running"].contains(e)){h[3].setStyle("display","block");
}if(["completed","canceled","errored"].contains(e)){h[4].setStyle("display","block");}},onError:function(c){this.statusBar.getElement(".loading").setStyle("display","none");
this.jobsInfo.set("text",c);window.Popup.setPopup({type:"warning"});},onClean:function(c){this.get.delay(10,this);},onBeforeWipe:function(){this.statusBar.getElement(".loading").setStyle("display","block");
},onWipe:function(c){this.get();},onBeforeGet:function(){this.statusBar.getElement(".loading").setStyle("display","block");},onGet:function(e){this.statusBar.getElement(".loading").setStyle("display","none");
var c=e.payload.jobs,f,d;var g=e.payload.html;window.Popup.content.addClass("jobs-popup");window.Popup.content.set("html",g);this.content=window.Popup.content.getElement("div.jobs-wrapper");
this.topBar=window.Popup.content.getElement("div.jobs-batch");this.wipeContent=window.Popup.content.getElement("div#jobs-wipe-warning");this.wipeYes=this.wipeContent.getElement(".button.wipe-yes");
this.wipeNo=this.wipeContent.getElement(".button.wipe-no");this.scrollbar=new Scrollbar(this.content,{gutter:true,fixed:true,wrapStyles:{width:"100%"}});
new Element("div.clr").inject(this.scrollbar.wrapper,"after");this.refreshJobs=this.topBar.getElement(".button.refresh");this.cleanJobs=this.topBar.getElement(".button.clean");
this.wipeAllJobs=this.topBar.getElement(".button.wipeall");this.jobsCount=this.topBar.getElement(".jobs-counter span");this.refreshJobs.addEvent("click",function(){this.statusBar.getElement(".loading").setStyle("display","block");
this.get();}.bind(this));this.cleanJobs.addEvent("click",function(){if(!c.length){return;}this.statusBar.getElement(".loading").setStyle("display","block");
this.clean();}.bind(this));this.wipeAllJobs.addEvent("click",function(){if(!c.length){return;}this.content.getParent("div").setStyle("display","none");
this.wipeContent.setStyle("display","block");}.bind(this));this.wipeYes.addEvent("click",this.wipe.bind(this));this.wipeNo.addEvent("click",this.get.bind(this));
this.jobsCount.set("text",c.length);this.scrollbar.update();if(!c.length){return this.content.set("text","");}c.each(function(i){d=this.content.getElement("#"+i.id);
var n=d.getElement("div.job-top");var h=d.getElement("div.job-bottom");var k=d.getElement("div.job-actions");var q=k.getElement("div.refresh");var l=k.getElement("div.start");
var o=k.getElement("div.pause");var j=k.getElement("div.cancel");var m=k.getElement("div.delete");var p=k.getElement("div.loader");d.store("actions",new Elements([q,l,o,j,m]));
d.store("loader",p);d.store("job-data",i);d.store("job-request",new Job(Object.merge({url:RokGallery.url,id:i.id},this.options.singleJob)));this.options.attachIcons(d);
this.options.refreshIcons(d);},this);this.scrollbar.update();window.Popup.reposition();return this;}});return b;},initTags:function(b,g,d){var c=new Tags.Ajax(b,{url:a.url,data:{id:g||0,insert:{model:d||"File",action:"addTags"},erase:{model:d||"File",action:"removeTags"}},onEmptyList:function(){this.container.getElement(".oops").setStyle("display","block");
},onNonEmptyList:function(){this.container.getElement(".oops").setStyle("display","none");}});var f=document.id("file-"+g);if(f){var e=f.getElement(".gallery-data .tags");
c.addEvents({onInsert:function(){RokGallery.blocks.editFileSettings.element.getElement(".statusbar .editfile-loader").setStyle("display","inline-block");
if(e){e.set("text",this.list.length);}},onErase:function(){RokGallery.blocks.editFileSettings.element.getElement(".statusbar .editfile-loader").setStyle("display","inline-block");
},onAfterErase:function(){if(e){e.set("text",this.list.length);}},onAfterInsertSuccess:function(h){var i=RokGallery.blocks.editFileSettings;i.slices=h.payload.file.Slices;
i.slices.each(function(k,j){if(k.id==i.currentSlice){i.currentSlice=j;}},this);i.loadSlice(i.currentSlice,true);RokGallery.blocks.setPublishState(h.payload.file.published);
RokGallery.blocks.editFileSettings.element.getElement(".statusbar .editfile-loader").setStyle("display","none");},onAfterEraseSuccess:function(h){var i=RokGallery.blocks.editFileSettings;
i.slices=h.payload.file.Slices;i.slices.each(function(k,j){if(k.id==i.currentSlice){i.currentSlice=j;}},this);i.loadSlice(i.currentSlice,true);RokGallery.blocks.setPublishState(h.payload.file.published);
RokGallery.blocks.editFileSettings.element.getElement(".statusbar .editfile-loader").setStyle("display","none");}});}return c;},textareaScrollbar:function(){return;
}};if(typeof RokGallerySqueezeBox!="undefined"){RokGallery.SqueezeBox=RokGallerySqueezeBox;}window.addEvent("domready",a.init);})());