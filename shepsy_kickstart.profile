<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function shepsy_kickstart_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'Shepsy Kickstart';
}


/**
 * Implements hook_install_tasks().
 */
function shepsy_kickstart_install_tasks() {
  $tasks = array();

  $tasks['shepsy_kickstart_setup_tasks'] = array(
    'display_name' => st('Shepsy Kickstart setup'),
    'type' => 'normal',
  );

  return $tasks;
}

function shepsy_kickstart_setup_tasks() {
  // Set default themes
  $enable = array(
    'theme_default' => 'bootstrap',
    'admin_theme' => 'adminimal',
    'node_admin_theme' => TRUE,
  );

  theme_enable($enable);

  foreach ($enable as $var => $theme) {
    if (!is_numeric($var)) {
      variable_set($var, $theme);
    }
  }

  // Disable the default Bartik theme
  theme_disable(array('bartik'));

  // Setup jquery update settings.
  variable_set('jquery_update_jquery_version', '1.10');
  variable_set('jquery_update_jquery_admin_version', 'default');

  // Enable some standard blocks.
  $default_theme = variable_get('theme_default', 'bootstrap');
  $admin_theme = variable_get('admin_theme', 'adminimal');
  $values = array(
    array(
      'module' => 'system',
      'delta' => 'main',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'node',
      'delta' => 'recent',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 10,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'user',
      'delta' => 'login',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'navigation',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'powered-by',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 10,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'help',
      'theme' => $default_theme,
      'status' => 1,
      'weight' => 0,
      'region' => 'help',
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'main',
      'theme' => $admin_theme,
      'status' => 1,
      'weight' => 0,
      'region' => 'content',
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'help',
      'theme' => $admin_theme,
      'status' => 1,
      'weight' => 0,
      'region' => 'help',
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'user',
      'delta' => 'login',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 10,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'user',
      'delta' => 'new',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 0,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'navigation',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 0,
      'pages' => '',
      'cache' => -1,
    ),
  );
  $query = db_insert('block')->fields(array('module', 'delta', 'theme', 'status', 'weight', 'region', 'pages', 'cache'));
  foreach ($values as $record) {
    $query->values($record);
  }
  $query->execute();
}