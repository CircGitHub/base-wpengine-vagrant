<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

/** You may need to uncomment the following lines when running a vagrant share */
//$url = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/';
//define('WP_HOME', $url);
//define('WP_SITEURL', $url);

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
//define('DB_PASSWORD', '');
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '$&,|i14S +vR?m?*3TE:(Y-zb4FT+gF|uPJxeM$Y-i*S=O9zm[JG+`OCWhtj9D #');
define('SECURE_AUTH_KEY', 's]lKx=F2(u!k1mCvf+hkH2]7WJ;(y ?cdu5A}5b=Xe#K|j6@[Or(s^%K_$>Ddk45');
define('LOGGED_IN_KEY', 'M|b?mgKs8W=W?.1UJ8xh~l+x!@`{U&ipj{RSulE+=&T}moq<>UNM?+An[P>i@Nmv');
define('NONCE_KEY', 'K!-!,*^+d~V>[S]/)pY^Z0*&.%__KULYF*`x+UZTU%R:=Qq}|ni_fhHpU|(EBO?/');
define('AUTH_SALT', 'Jy^Z.~XivRX[@kL(:Jn2U?6@ep<dI-w3/|G`{=WPeEG*6(w0ve6j>X$h]Y?m)h|$');
define('SECURE_AUTH_SALT', '@@L]d;fw1/M#v66^yoJ|(j=dz}+|Eg,eSR2-a|VQr{))_8-1RieMBdU}fAl-{QfX');
define('LOGGED_IN_SALT', 'NjSwD&[B}<6%K+F*]w,Q`|aQ|`|;uoEPGjjZbn=0mDt7Fw@p3<v0RRntmI=/B{g^');
define('NONCE_SALT', 'mFAeCD Gi4ophlqR|^~8e><9tq7+Y=pL&5;<B-0:A5slN@T;A(|z=k~&BO ?*2zH');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
    define('ABSPATH', dirname(__FILE__) . '/');
}

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
