<div class="carousel slide" data-ride="carousel" id="myCarousel">

	    <div class="carousel-inner">
	        <div class="item active">
	            <img src="https://fakeimg.pl/2024x400/ffFFFF,070/000,100?text=Welcome to our website!" class="img-responsive">
	        </div>
	        <div class="item">
	           <img src="https://fakeimg.pl/2024x400/ffFFFF,070/000,100?text=This is your awesome slider." class="img-responsive">
	        </div>

	        <div class="item">
	            <img src="https://fakeimg.pl/2024x400/ffFFFF,070/000,100?text=Edit navbar.tpl to change it!" class="img-responsive">
	        </div>
	    </div>
	
	</div>



<nav class="navbar navbar-default navbar-fixed-top{$NAVBAR_INVERSE}">
<div class="container">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navbar_collapse">
	  <span class="sr-only">Toggle navigation</span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	  <span class="icon-bar"></span>
	</button>
	<span>
	<a class="navbar-brand hvr-bounce-in" href="/">
    <img src="styles/themes/skytrip/css/img/logo.png" width="100" height="35" class="d-inline-block align-top" alt=""></a>
    </span>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="main_navbar_collapse">
	{$NAVBAR_LINKS}
	<ul class="nav navbar-nav navbar-right">
	  {* User dropdown and notifications *}
	  {$USER_AREA}
	</ul>
  </div><!-- /.navbar-collapse -->
</div><!-- /.container -->
</nav>

<br />

{if isset($GLOBAL_MESSAGES) && !empty($GLOBAL_MESSAGES)}
<div class="container">
  {$GLOBAL_MESSAGES}
</div>
{/if}

{if isset($ANNOUNCEMENTS) && !empty($ANNOUNCEMENTS)}
  <div class="container">
  {foreach from=$ANNOUNCEMENTS item=item}
    <div class="alert alert-{$item.type}{if $item.can_close == 1} alert-announcement-{$item.id} alert-dismissible{/if}" id="{$item.id}">
	  {if $item.can_close == 1}<button type="button" class="close close-announcement" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>{/if}
	  {$item.content}
	</div>
  {/foreach}
  </div>
{/if}












	




