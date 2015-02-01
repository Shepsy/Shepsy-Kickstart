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

  // Disable and enable some standard blocks.
  /*$default_theme = variable_get('theme_default', 'bootstrap');
  $admin_theme = variable_get('admin_theme', 'adminimal');
  $values = array(
    array(
      'module' => 'system',
      'delta' => 'main',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'node',
      'delta' => 'recent',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 10,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'user',
      'delta' => 'login',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'navigation',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'powered-by',
      'theme' => $default_theme,
      'status' => 0,
      'weight' => 10,
      'region' => -1,
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
      'pages' => -1,
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'main',
      'theme' => $admin_theme,
      'status' => 1,
      'weight' => 0,
      'region' => 'content',
      'pages' => -1,
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
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'user',
      'delta' => 'new',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'navigation',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
    array(
      'module' => 'system',
      'delta' => 'powered-by',
      'theme' => $admin_theme,
      'status' => 0,
      'weight' => 0,
      'region' => -1,
      'pages' => '',
      'cache' => -1,
    ),
  );
  $query = db_insert('block')->fields(array('module', 'delta', 'theme', 'status', 'weight', 'region', 'pages', 'cache'));
  foreach ($values as $record) {
    $query->values($record);
  }
  $query->execute();*/


  // Install wysiwyg settings for Filtered HTML.
  $filtered_html_wysiwyg = array (
    'default' => 1,
    'user_choose' => 0,
    'show_toggle' => 1,
    'theme' => 'advanced',
    'language' => 'en',
    'buttons' =>
      array (
        'default' =>
          array (
            'Bold' => 1,
            'Italic' => 1,
            'Underline' => 1,
            'BulletedList' => 1,
            'NumberedList' => 1,
            'Link' => 1,
          ),
      ),
    'toolbar_loc' => 'top',
    'toolbar_align' => 'left',
    'path_loc' => 'bottom',
    'resizing' => 1,
    'verify_html' => 1,
    'preformatted' => 0,
    'convert_fonts_to_spans' => 1,
    'remove_linebreaks' => 1,
    'apply_source_formatting' => 0,
    'paste_auto_cleanup_on_paste' => 0,
    'block_formats' => 'p,address,pre,h2,h3,h4,h5,h6,div',
    'css_setting' => 'theme',
    'css_path' => '',
    'css_classes' => '',
  );

  db_insert('wysiwyg')->fields(array(
    'format' => 'filtered_html',
    'editor' => 'ckeditor',
    'settings' => serialize($filtered_html_wysiwyg)
  ))
    ->execute();

  // Install wysiwyg settings for Full HTML.
  $full_html_wysiwyg = array (
    'default' => 1,
    'user_choose' => 0,
    'show_toggle' => 1,
    'theme' => 'advanced',
    'language' => 'en',
    'buttons' =>
      array (
        'default' =>
          array (
            'Bold' => 1,
            'Italic' => 1,
            'Underline' => 1,
            'Strike' => 1,
            'JustifyLeft' => 1,
            'JustifyRight' => 1,
            'JustifyBlock' => 1,
            'BidiLtr' => 1,
            'NumberedList' => 1,
            'Outdent' => 1,
            'Link' => 1,
            'Unlink' => 1,
            'Anchor' => 1,
            'Superscript' => 1,
            'Subscript' => 1,
            'Blockquote' => 1,
            'HorizontalRule' => 1,
            'PasteText' => 1,
            'PasteFromWord' => 1,
            'RemoveFormat' => 1,
            'Format' => 1,
          ),
        'media_crop_ckeditor' =>
          array (
            'media_crop_edit_instance' => 1,
          ),
        'drupal' =>
          array (
            'media' => 1,
          ),
      ),
    'toolbar_loc' => 'top',
    'toolbar_align' => 'left',
    'path_loc' => 'bottom',
    'resizing' => 1,
    'verify_html' => 1,
    'preformatted' => 0,
    'convert_fonts_to_spans' => 1,
    'remove_linebreaks' => 1,
    'apply_source_formatting' => 0,
    'paste_auto_cleanup_on_paste' => 0,
    'block_formats' => 'p.lead,p,address,pre,h2,h3,h4,h5,h6,div',
    'css_setting' => 'theme',
    'css_path' => '',
    'css_classes' => '',
  );

  db_insert('wysiwyg')->fields(array(
    'format' => 'full_html',
    'editor' => 'ckeditor',
    'settings' => serialize($full_html_wysiwyg)
  ))
    ->execute();


}