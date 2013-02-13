<?php

return array(
    'debugging'      => false,
    'caching'        => false,
    'cache_lifetime' => 120,
    'error_unassigned' => false,
    
    'template_path'  => path('app').'views',
    'cache_path'     => path('storage').'views/cache',
    'compile_path'   => path('storage').'views/compile',
);
