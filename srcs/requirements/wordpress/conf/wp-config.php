<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', getenv('DB_WP', true) );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', getenv('MYSQL_USER', true) );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD', true) );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'mariadb' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ']D?m*7 J`iANidIHh|4vWLNV7Pf0R+GzIF}/0i#Sgx3Q0=5DpDy.rr#RHym9FD[h' );
define( 'SECURE_AUTH_KEY',  '2`^Zux;E^mo<N7GV=2hEJw*!Lk5YsE?UAsrtLL&Gck3P5$&A56!bx3B%|BgIiYC!' );
define( 'LOGGED_IN_KEY',    '`Ggjq~*ATPEb7V:;J(.8/V!*Uv_v(3=~5C}K>u0t.8f,*)&t3$M5h*1CM2:KY6=5' );
define( 'NONCE_KEY',        'ySxh-IylJA&u{Q2yq<..|(Ot7bWL*fYp_UAb%P;n6--Lqr.|E|ieV5rYo)F,t%m[' );
define( 'AUTH_SALT',        'fQM-VV7jPuukBO3MC,6z+W%/sx!Z?+tnbTCj`{pl|A1W,:gF+&w9q<_||(WT@_NA' );
define( 'SECURE_AUTH_SALT', ']79U7W/0!3n*;FO4B)0u6Xe_V5ur4)77Lp~Qm||LgY~Gie;#BhWs{RkPz,O(vzLz' );
define( 'LOGGED_IN_SALT',   '%%uWFLi%tj7RS(|ny2j6ZHLM&sHE`=(KtevlBXk0S)XVGXIeE~N$fZMnaa>oxYJ`' );
define( 'NONCE_SALT',       '&63)Nsi@?g#yN*hO(C<Mu$*lOIm1$NMHWZ3E;TBP`H<~#S)2k3TRg8PEI_0+D)@&' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );

