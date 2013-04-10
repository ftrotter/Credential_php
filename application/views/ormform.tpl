  <div class="container">
<h1> {$object_name} form </h1>
<div id='orm_form'></div>

{literal}
<script type="text/javascript">
  $("#orm_form").alpaca(
{/literal}
{$form_json}
{literal}
);
</script>
{/literal}

</div>
