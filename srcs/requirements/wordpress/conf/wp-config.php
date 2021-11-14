<?php
define( 'DB_NAME', getenv('DB_WP', true) );
define( 'DB_USER', getenv('MYSQL_USER', true) );
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD', true) );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         ']D?m*7 J`iANidIHh|4vWLNV7Pf0R+GzIF}/0i#Sgx3Q0=5DpDy.rr#RHym9FD[h' );
define( 'SECURE_AUTH_KEY',  '2`^Zux;E^mo<N7GV=2hEJw*!Lk5YsE?UAsrtLL&Gck3P5$&A56!bx3B%|BgIiYC!' );
define( 'LOGGED_IN_KEY',    '`Ggjq~*ATPEb7V:;J(.8/V!*Uv_v(3=~5C}K>u0t.8f,*)&t3$M5h*1CM2:KY6=5' );
define( 'NONCE_KEY',        'ySxh-IylJA&u{Q2yq<..|(Ot7bWL*fYp_UAb%P;n6--Lqr.|E|ieV5rYo)F,t%m[' );
define( 'AUTH_SALT',        'fQM-VV7jPuukBO3MC,6z+W%/sx!Z?+tnbTCj`{pl|A1W,:gF+&w9q<_||(WT@_NA' );
define( 'SECURE_AUTH_SALT', ']79U7W/0!3n*;FO4B)0u6Xe_V5ur4)77Lp~Qm||LgY~Gie;#BhWs{RkPz,O(vzLz' );
define( 'LOGGED_IN_SALT',   '%%uWFLi%tj7RS(|ny2j6ZHLM&sHE`=(KtevlBXk0S)XVGXIeE~N$fZMnaa>oxYJ`' );
define( 'NONCE_SALT',       '&63)Nsi@?g#yN*hO(C<Mu$*lOIm1$NMHWZ3E;TBP`H<~#S)2k3TRg8PEI_0+D)@&' );

define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', '6379');
define('WP_REDIS_PASSWORD', getenv('REDIS_PASSWORD', true));
define('WP_CACHE_KEY_SALT', 'inception_' );
define('WP_CACHE', true);

define('FS_METHOD', 'direct');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

require_once( ABSPATH . 'wp-settings.php' );

