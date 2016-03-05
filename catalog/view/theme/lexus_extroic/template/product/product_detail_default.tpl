<div class="row">
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-4'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>">
      <?php if ($thumb || $images) { ?>
      <ul class="thumbnails">
        <?php if ($thumb) { ?>
        <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
        <?php } ?>
        <?php if ($images) { ?>
        <?php foreach ($images as $image) { ?>
        <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
        <?php if ($attribute_groups) { ?>
        <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
        <?php } ?>
        <?php if ($review_status) { ?>
        <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
        <?php } ?>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
        <?php if ($attribute_groups) { ?>
        <div class="tab-pane" id="tab-specification">
          <table class="table table-bordered">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <thead>
              <tr>
                <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
                <td><?php echo $attribute['name']; ?></td>
                <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
            <?php } ?>
          </table>
        </div>
        <?php } ?>
        <?php if ($review_status) { ?>
        <div class="tab-pane" id="tab-review">
          <form class="form-horizontal">
            <div id="review"></div>
            <h2><?php echo $text_write; ?></h2>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                <input type="text" name="name" value="" id="input-name" class="form-control" />
              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                <div class="help-block"><?php echo $text_note; ?></div>
              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label"><?php echo $entry_rating; ?></label>
                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                <input type="radio" name="rating" value="1" />
                &nbsp;
                <input type="radio" name="rating" value="2" />
                &nbsp;
                <input type="radio" name="rating" value="3" />
                &nbsp;
                <input type="radio" name="rating" value="4" />
                &nbsp;
                <input type="radio" name="rating" value="5" />
                &nbsp;<?php echo $entry_good; ?></div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
                <input type="text" name="captcha" value="" id="input-captcha" class="form-control" />
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-12"> <img src="index.php?route=tool/captcha" alt="" id="captcha" /> </div>
            </div>
            <div class="buttons">
              <div class="pull-right">
                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
              </div>
            </div>
          </form>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-7'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>">
      <div class="btn-group">
        <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="list-unstyled">
        <?php if ($manufacturer) { ?>
        <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
        <?php } ?>
        <li><?php echo $text_model; ?> <?php echo $model; ?></li>
        <?php if ($reward) { ?>
        <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
        <?php } ?>
        <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
      </ul>
      <?php if ($price) { ?>
      <ul class="list-unstyled">
        <?php if (!$special) { ?>
        <li>
          <h2><?php echo $price; ?></h2>
        </li>
        <?php } else { ?>
        <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
        <li>
          <h2><?php echo $special; ?></h2>
        </li>
        <?php } ?>
        <?php if ($tax) { ?>
        <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
        <?php } ?>
        <?php if ($points) { ?>
        <li><?php echo $text_points; ?> <?php echo $points; ?></li>
        <?php } ?>
        <?php if ($discounts) { ?>
        <li>
          <hr>
        </li>
        <?php foreach ($discounts as $discount) { ?>
        <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <div id="product">
        <?php if ($options) { ?>
        <hr>
        <h3><?php echo $text_option; ?></h3>
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label"><?php echo $option['name']; ?></label>
          <div id="input-option<?php echo $option['product_option_id']; ?>">
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
            <div class="radio">
              <label>
                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label"><?php echo $option['name']; ?></label>
          <div id="input-option<?php echo $option['product_option_id']; ?>">
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
            <div class="checkbox">
              <label>
                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label"><?php echo $option['name']; ?></label>
          <div id="input-option<?php echo $option['product_option_id']; ?>">
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
            <div class="radio">
              <label>
                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
            </div>
            <?php } ?>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label"><?php echo $option['name']; ?></label>
          <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <div class="input-group date">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            <span class="input-group-btn">
            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
            </span></div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <div class="input-group datetime">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            <span class="input-group-btn">
            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
            </span></div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
          <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
          <div class="input-group time">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            <span class="input-group-btn">
            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
            </span></div>
        </div>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php if ($recurrings) { ?>
        <hr>
        <h3><?php echo $text_payment_recurring ?></h3>
        <div class="form-group required">
          <select name="recurring_id" class="form-control">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($recurrings as $recurring) { ?>
            <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
            <?php } ?>
          </select>
          <div class="help-block" id="recurring-description"></div>
        </div>
        <?php } ?>
        <div class="form-group">
          <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
          <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
          <br />
          
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      <?php if ($review_status) { ?>
      <div class="rating">
        <p>
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($rating < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
          <?php } ?>
          <?php } ?>
          <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
        <hr>
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
        <!-- AddThis Button END --> 
      </div>
      <?php } ?>
    </div>
  </div>
  <?php if ($products) { ?>
  <h3><?php echo $text_related; ?></h3>
  <div class="row">
    <?php $i = 0; ?>
    <?php foreach ($products as $product) { ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
    <?php } ?>
    <div class="<?php echo $class; ?>">
      <div class="product-thumb transition">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
          <p><?php echo $product['description']; ?></p>
          <?php if ($product['rating']) { ?>
          <div class="rating">
            <?php for ($i = 1; $i <= 5; $i++) { ?>
            <?php if ($product['rating'] < $i) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
            <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
            <?php } ?>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if ($product['price']) { ?>
          <p class="price">
            <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
            <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            <?php } ?>
          </p>
          <?php } ?>
        </div>
      </div>
    </div>
    <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
    <div class="clearfix visible-md visible-sm"></div>
    <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
    <div class="clearfix visible-md"></div>
    <?php } elseif ($i % 4 == 0) { ?>
    <div class="clearfix visible-md"></div>
    <?php } ?>
    <?php $i++; ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <p><?php echo $text_tags; ?>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </p>
<?php } ?>