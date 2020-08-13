<?php if (count($currencies) > 1) { ?>
    <div class="dropdown  my-account currency">
        <form
            action="<?php echo $action; ?>"
            method="post" enctype="multipart/form-data" id="currency_form">
            <!-- Currency -->
            <div id="currency">
                <a href="#" class="dropdown-toggle" data-hover="dropdown"
                   data-toggle="dropdown">
                    <?php foreach ($currencies as $currency) { ?>
                        <?php if ($currency['code'] == $code) { ?>
                            <?php echo $currency['title']; ?>
                        <?php } ?>
                    <?php } ?></a>
                <ul class="dropdown-menu">
                    <?php foreach ($currencies as $currency) { ?>
                        <li><a href="javascript:;"
                               onclick="$('input[name=\'code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a>
                        </li>
                    <?php } ?>
                </ul>
            </div>

            <input type="hidden" name="code" value=""/>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
        </form>
    </div>
<?php } ?>