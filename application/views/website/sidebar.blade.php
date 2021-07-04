          <!-- <div class="widget clearfix widget-newsletter">
            <form id="widget-subscribe-form-sidebar" role="form" method="POST" class="form-inline"  action="{{base_url('main/news')}}">
              <h4 class="widget-title">Search</h4>
              <div class="input-group">
                  <input aria-required="true" type="text" name="q" placeholder="What to search..." class="form-control required" value="{{$ctrl->input->get('q')}}">
                  <span class="input-group-btn">
                    <button type="submit" id="widget-subscribe-submit-button" class="btn btn-primary"><i class="fa fa-paper-plane"></i></button>
                  </span>
              </div>
            </form>
          </div> -->
          <div class="widget clearfix widget-archive">
            <h4 class="widget-title">Berita</h4>
            <ul class="list list-lines">
              @foreach($popular_news as $result)
              <li><a href="{{$result->url}}">{{$result->name}}</a></li>
              @endforeach
            </ul>
          </div>
          <div class="widget clearfix widget-archive">
            <h4 class="widget-title">Event</h4>
            <ul class="list list-lines">
              @foreach($events as $result)
              <li><a href="{{$result->url}}">{{$result->name}}</a></li>
              @endforeach
            </ul>
          </div>

          <div class="widget clearfix widget-tags">
            <h4 class="widget-title">Kategori</h4>
            <ul class="list list-lines">
              @foreach($category as $result)
              <li><a href="{{$result->url}}">{{$result->name}}</a></li>
            @endforeach
            </ul>
          </div>        

          <div class="widget clearfix widget-tags">
            <h4 class="widget-title">Tags</h4>
            <div class="tags">
              @foreach($tag as $result)
              <a href="{{$result->url}}">{{$result->name}}</a>
              @endforeach
            </div>  
          </div>  