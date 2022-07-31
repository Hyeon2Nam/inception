<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */

define( 'DB_NAME', getenv_docker('MYSQL_DATABASE', 'wordpress'));
#define( 'DB_NAME', 'MYSQL_DATABASE' );

/** MySQL database username */
define( 'DB_USER', getenv_docker('MYSQL_USER', 'hyenam'));

/** MySQL database password */
define( 'DB_PASSWORD', getenv_docker('MYSQL_PASSWORD', 'asdf123'));

/** MySQL hostname */
define( 'DB_HOST', getenv_docker('MYSQL_HOST', 'mariadb'));

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'w$%{Jg4CLR`a(]ro7-^M#(@5@k;9WerGQ9>54T {ym`jn%whUFPjujN-e7A}oB+|');
define('SECURE_AUTH_KEY',  'Y9xC@J:5|4Tu/3[:o[%-koEt$#B44]y@vm)T^mH3>JKsrEoz%#iV&[Jl*~`T4 8w');
define('LOGGED_IN_KEY',    'V:M+le-iz`c[JI`I3l R[ws/78*2/viW_-CSz@^+opC5MHoMC@o)?}zB$E|/| N2');
define('NONCE_KEY',        'gBBl(^8TD EXVf<!q||+9VS7@NFw;/F1OyQ`&L~e%zxJQ]ud0mJ2m;i,r`:q_9?B');
define('AUTH_SALT',        '3kY6zvu Q*PX|?cuf|_Y0bADK`!SFT6%1i2u8qU;N%mc*Arw();+`+{?T-o 5qbx');
define('SECURE_AUTH_SALT', 'N&K7*Iq[-z[f?GF0&Cl0aAagzw(LY!*a<1B:uLg&*qq|*]qI#@T7P}if4ldKdhXW');
define('LOGGED_IN_SALT',   'xj|+})!Q/ $(Mk=9f1>txCTsgBp4z^dty9/07xY)-kqDLx!  @G-1%NFb,vue;,h');
define('NONCE_SALT',       'q]-4-W6J2--/=v&U}]I-z_~HLT9,4]HgiU]%)sNS1^YUcfVe-tV/_]y|kKkKpWNu');

/* The WordPress database table prefix. */
$table_prefix = 'wp_';


/*The WP_DEBUG option controls the display of some errors and warnings.*/
define( 'WP_DEBUG', true );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>