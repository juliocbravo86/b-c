<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'bandc');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         '<7b$$)hb6Ufg.w1!+~L#DnJBgf40!Q~;[JyG9g:tOG2,eCA5odw))I=-I-u{=@Ca');
define('SECURE_AUTH_KEY',  'VDG;{L8HfX#cU0Wad+Yndf_!xz |*_qlP|~,)_0H;V;R=M49F* =0;YyvVBzm%[M');
define('LOGGED_IN_KEY',    '9[1!iy&u)t@f>Z4L {!@;wA(0;RbP9]&7 -~~=l0U jB64RWCG)X_S7`YO!`20%V');
define('NONCE_KEY',        'Wf88NB^Fu=4-RBQBN* Jc<bCm8h??!.1(fk75NORzkkH<9jv[Ws]1+ghrxh!SJwE');
define('AUTH_SALT',        'Pn>>Fc;dSDo4y>2^2C0NCD@KH;ZL@FjiI]4:>>(q]:C1S}dQo^$O:sQ1~>|mW_NA');
define('SECURE_AUTH_SALT', 's^JF[F2>D(msu 7M76>_[Op.7;n57i<]Kfz0$m;!ApTEksn|=]Ihw,pqO[H(I4Y5');
define('LOGGED_IN_SALT',   'QqK8cROs`j M?2-EY5Pl:va>AHLu]h9B/=K?x>wf@Od+t^is7}zNb$q`h=:&DU$~');
define('NONCE_SALT',       'I:/Z$Z=]>1M#4Jz}QH<!I,#u`uv.:%{bPvmxKK^VBS+ON73?(McG;F0>]#v81hFk');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
