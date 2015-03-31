<!-- <form id="payment" class="form-horizontal">
  <fieldset>
    <legend>Purchase Order Number</legend>
    <div class="form-group required">
      <label class="col-sm-2 control-label" for="input-po-number">Please enter PO number</label>
      <div class="col-sm-10">
        <input type="text" name="cc_owner" value="" placeholder="PO Number" id="input-po-number" class="form-control" />
      </div>
    </div>
  </fieldset>
</form> -->
<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/po/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},		
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script>