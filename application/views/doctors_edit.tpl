

      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
<!-- Stuff that goes on the left -->
              <li class="nav-header">Left Nav </li>
	<ul>
		<li> <a href='{$base_url}/doctors/form_download?npi={$npi}'> TX Cred form download </a></li>

	</ul>

<!-- Left end -->
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
<!-- Stuff that goes on the right -->
          <div class="row-fluid">
            <div class="span6">

<h1> {$npi} </h1>

<form class='form-inline' method='POST' action='{$base_url}/doctors/edit'>

{include file='doctors_form.tpl'}

<textarea name='notes' id='notes' rows="3"></textarea>
<br>
<br>
<input type='submit' name='submit' value='Save Provider Data'>

</form>



            </div><!--/span-->
            <div class="span3">

            </div><!--/span-->

          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->



