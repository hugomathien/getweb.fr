<div class="task">
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $list; ?>'"><img src="template/default/image/list_enabled.png" alt="<?php echo $button_list; ?>" class="png" /><?php echo $button_list; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $insert; ?>'"><img src="template/default/image/insert_enabled.png" alt="<?php echo $button_insert; ?>" class="png" /><?php echo $button_insert; ?></div>
  <?php if (@$update) { ?>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $update; ?>'"><img src="template/default/image/update_enabled.png" alt="<?php echo $button_update; ?>" class="png" /><?php echo $button_update; ?></div>
  <?php } else { ?>
  <div class="disabled"><img src="template/default/image/update_disabled.png" alt="<?php echo $button_update; ?>" class="png" /><?php echo $button_update; ?></div>
  <?php } ?>
  <?php if (@$delete) { ?>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $delete; ?>';"><img src="template/default/image/delete_enabled.png" alt="<?php echo $button_delete; ?>" class="png" /><?php echo $button_delete; ?></div>
  <?php } else { ?>
  <div class="disabled"><img src="template/default/image/delete_disabled.png" alt="<?php echo $button_delete; ?>" class="png" /><?php echo $button_delete; ?></div>
  <?php } ?>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="document.getElementById('form').submit();"><img src="template/default/image/save_enabled.png" alt="<?php echo $button_save; ?>" class="png" /><?php echo $button_save; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $cancel; ?>'"><img src="template/default/image/cancel_enabled.png" alt="<?php echo $button_cancel; ?>" class="png" /><?php echo $button_cancel; ?></div>
</div>
<?php if ($error) { ?>
<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<div class="heading"><?php echo $heading_title; ?></div>
<div class="description"><?php echo $heading_description; ?></div>
<script type="text/javascript" src="javascript/tab/tab.js"></script>
<link rel="stylesheet" type="text/css" href="javascript/tab/tab.css" />
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
  <div class="tab" id="tab">
    <div class="tabs"><a><?php echo $tab_general; ?></a> <a><?php echo $tab_data; ?></a> </div>
    <div class="pages">
      <div class="page">
        <div id="tabmini">
          <div class="tabs">
            <?php foreach ($weight_classes as $weight_class) { ?>
            <a><?php echo $weight_class['language']; ?></a>
            <?php } ?>
          </div>
          <div class="pages">
            <?php foreach ($weight_classes as $weight_class) { ?>
            <div class="page">
              <div class="minipad">
                <table>
                  <tr>
                    <td width="185"><span class="required">*</span> <?php echo $entry_title; ?></td>
                    <td><input name="language[<?php echo $weight_class['language_id']; ?>][title]" value="<?php echo $weight_class['title']; ?>" />
                      <?php if ($error_title) { ?>
                      <span class="error"><?php echo $error_title; ?></span>
                      <?php } ?></td>
                  </tr>
                  <tr>
                    <td><span class="required">*</span> <?php echo $entry_unit; ?></td>
                    <td><input name="language[<?php echo $weight_class['language_id']; ?>][unit]" value="<?php echo $weight_class['unit']; ?>" />
                      <?php if ($error_unit) { ?>
                      <span class="error"><?php echo $error_unit; ?></span>
                      <?php } ?></td>
                  </tr>
                </table>
              </div>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="page">
        <div class="pad">
          <table>
            <?php foreach ($weight_rules as $weight_rule) { ?>
            <tr>
              <td width="185"><?php echo $weight_rule['title']; ?></td>
              <td><input type="text" name="rule[<?php echo $weight_rule['to_id']; ?>]" value="<?php echo $weight_rule['rule']; ?>" /></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
  tabview_initialize('tab');
  //--></script>
  <script type="text/javascript"><!--
  tabview_initialize('tabmini');
  //--></script>
</form>
