<?php
    $themeURL=site_url('system/template/'.$theme,true);
    $componentURL=$themeURL.'./src/HTML/';
?>
<!DOCTYPE html>
<html lang="en">
<head>        
    <title><?php print $systemTitle ?></title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link rel="icon" type="image/ico" href="favicon.ico"/>
    
    <link href="<?php print $componentURL; ?>css/stylesheets.css" rel="stylesheet" type="text/css" />        
    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/jquery/jquery.min.js'></script>
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/jquery/jquery-ui.min.js'></script>   
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/jquery/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/jquery/globalize.js'></script>    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/bootstrap/bootstrap.min.js'></script>
    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/uniform/jquery.uniform.min.js'></script>
    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins.js'></script>    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/actions.js'></script>  
    
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/knob/jquery.knob.js'></script>
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/sparkline/jquery.sparkline.min.js'></script>
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/flot/jquery.flot.js'></script>     
    <script type='text/javascript' src='<?php print $componentURL; ?>js/plugins/flot/jquery.flot.resize.js'></script>
      
      <script type='text/javascript' src='<?php print $componentURL; ?>js/charts.js'></script>  
    <script type='text/javascript' src='<?php print $componentURL; ?>js/settings.js'></script>
</head>
<body class="bg-img-num1"> 
    
    <div class="container">        
    <?php
print $content;
?>
<?php
print $systemFoot;
?>
    </div>

</body>
</html>