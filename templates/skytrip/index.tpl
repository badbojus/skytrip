<style type="text/css" url=""></style>


<div class="container">
  {$SESSION_FLASH}
  <div class="row">
    {if !empty($TWITTER_FEED) || !empty($VOICE_VIEWER)}
    <div class="col-md-9">
  {else}
  <div class="col-md-8 col-md-offset-2">
  {/if}


  <!-- News -->
{foreach from=$newsArray item=news}
          <div class="panel panel-stoned">
          <div class="panel-heading">
            <span itemscope itemtype="http://schema.org/Review">
            <h3 class="panel-title" itemprop="name"><a class="white-text" href="/forum/view_topic/?tid={$news.id}">{$news.title}</a></h3>
          </div><!--/panel-heading-->
          <div class="panel-body" itemprop="reviewBody">
            <p>{$news.content}</p>

            <span itemprop="author" itemscope itemtype="http://schema.org/Person">
              <small>
              <span itemprop="name">{$news.author_avatar} <a class="white-text" href="/profile/{$news.author_mcname}">{$news.author_username}</a></span>
            </span><!--/author schema -->

              <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>

              <meta itemprop="datePublished" content="01-01-2016">{$news.date}
              
              <span class="pull-right"> <span class="label label-danger"><span class="glyphicon glyphicon-comment"></span> {$news.replies} | <span class="glyphicon glyphicon-eye-open"></span> {$news.views}</span> </span>
            </small>
          </div><!--/panel-body-->
          <div class="panel-footer clearfix">
              <div class="pull-left">




<a href="https://twitter.com/share" class="twitter-share-button" data-text="{$news.title} " data-url="/forum/view_topic/?tid={$news.id}" data-show-count="false">Tweet</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>      
 


  </div>
              <span class="pull-right"><a class="hvr-bounce-to-left" href="/forum/view_topic/?tid={$news.id}">Read more...</a></span>
          </div><!--/panel-footer-->
        </div><!--/panel-->
    {/foreach}
  </div>




  {if !empty($TWITTER_FEED) || !empty($VOICE_VIEWER)}
  <div class="col-md-3">





 <div class="panel panel-sky">
            <div class="panel-heading">{$SITENAME}</div>
            <div class="panel-body">
              <center>
              {$CONNECT_WITH}<br><span class="glyphicon glyphicon-stats" style="color:green"></span> {$PLAYERS_ONLINE}
            </center>
            </div>
          </div>







            <div class="panel panel-sky">
                <div class="panel-heading">Event Name</div>
                <div class="panel-body nopadding">
                    <img src="https://placehold.it/400x150" alt="event image" class="img-responsive"/>
                    <div class="row nopadding">
                        <div class="col-sm-6 nopadding">
                            <time class="start green">
                                Start <span class="day">11</span>
                                <span class="month">Jun</span>
                                <span class="year">2017</span>
                            </time>
                        </div>
                        <div class="col-sm-6 nopadding">
                            <time class="end orange_red">
                                End <span class="day">20</span>
                                <span class="month">Jun</span>
                                <span class="year">2017</span>
                            </time>
                        </div>
                    </div>
                </div>
                <div class="panel-footer panel-primary">
                    <p>Short description of event would go here.
                    </p>
                    <a href="http://google.com" class="btn btn-success">Read more...</a>
                </div>
            </div>










       

           <div class="panel panel-yellow">
            <div class="panel-heading">Something</div>
            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta varius enim, ut lacinia nisl bibendum ut. Donec viverra sodales.</div>
          </div>


 <div class="panel panel-stoned">
            <div class="panel-heading">Something</div>
            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta varius enim, ut lacinia nisl bibendum ut. Donec viverra sodales.</div>
          </div>



           <div class="panel panel-blue">
            <div class="panel-heading">Something</div>
            <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porta varius enim, ut lacinia nisl bibendum ut. Donec viverra sodales.</div>
          </div>




    <!-- Social -->
    {if !empty($TWITTER_FEED)}
    {$TWITTER_FEED}
    {/if}
    
    {if !empty($VOICE_VIEWER)}
    {if {$VOICE_VIEWER_TITLE} != 'Discord'}
    <div class="well well-sm">
    <h4>{$VOICE_VIEWER_TITLE}</h4>
    <strong>{$VOICE_VIEWER_IP}</strong><br />
    {$VOICE_VIEWER}
    </div>
    {else}
    {$VOICE_VIEWER}
    {/if}
    {/if}
  </div>
  {/if}
  </div>






</div>



<script>
  function copyToClipboard(element) {
    var $temp = $("<input>")
    $("body").append($temp);
    $temp.val($(element).text()).select();
    document.execCommand("copy");
    $temp.remove();
    
    toastr.options.onclick = function () {};
    toastr.options.progressBar = true;
    toastr.options.closeButton = true;
    toastr.options.positionClass = 'toast-bottom-full-width'
    toastr.success('The ip has been copied to your clipboard!');
  }
</script>


   



