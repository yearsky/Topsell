          <!-- <div class="widget clearfix widget-newsletter">
            <form id="widget-subscribe-form-sidebar" role="form" method="POST" class="form-inline"  action="<?php echo e(base_url('main/news')); ?>">
              <h4 class="widget-title">Search</h4>
              <div class="input-group">
                  <input aria-required="true" type="text" name="q" placeholder="What to search..." class="form-control required" value="<?php echo e($ctrl->input->get('q')); ?>">
                  <span class="input-group-btn">
                    <button type="submit" id="widget-subscribe-submit-button" class="btn btn-primary"><i class="fa fa-paper-plane"></i></button>
                  </span>
              </div>
            </form>
          </div> -->
          <div class="widget clearfix widget-archive">
            <h4 class="widget-title">Berita</h4>
            <ul class="list list-lines">
              <?php foreach($popular_news as $result): ?>
              <li><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></li>
              <?php endforeach; ?>
            </ul>
          </div>
          <div class="widget clearfix widget-archive">
            <h4 class="widget-title">Event</h4>
            <ul class="list list-lines">
              <?php foreach($events as $result): ?>
              <li><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></li>
              <?php endforeach; ?>
            </ul>
          </div>

          <div class="widget clearfix widget-tags">
            <h4 class="widget-title">Kategori</h4>
            <ul class="list list-lines">
              <?php foreach($category as $result): ?>
              <li><a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a></li>
            <?php endforeach; ?>
            </ul>
          </div>        

          <div class="widget clearfix widget-tags">
            <h4 class="widget-title">Tags</h4>
            <div class="tags">
              <?php foreach($tag as $result): ?>
              <a href="<?php echo e($result->url); ?>"><?php echo e($result->name); ?></a>
              <?php endforeach; ?>
            </div>  
          </div>  