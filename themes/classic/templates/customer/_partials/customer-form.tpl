{include file='_partials/form-errors.tpl' errors=$errors['']}

<form action="{$action}" id="customer-form" class="js-customer-form" method="post">
  <section>
    {block "form_fields"}
      {foreach from=$formFields item="field"}
        {block "form_field"}
          {form_field field=$field}
        {/block}
      {/foreach}
      {$hook_create_account_form nofilter}
    {/block}
  </section>

  <footer class="form-footer clearfix">
    <input type="hidden" name="submitCreate" value="1">
    {block "form_buttons"}
      <button class="btn btn-primary form-control-submit pull-xs-right" data-link-action="save-customer" type="submit">
        {l s='Save' d='Shop.Theme.Actions'}
      </button>
    {/block}
  </footer>

</form>
