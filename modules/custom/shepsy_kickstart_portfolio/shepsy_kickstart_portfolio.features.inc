<?php
/**
 * @file
 * shepsy_kickstart_portfolio.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function shepsy_kickstart_portfolio_ctools_plugin_api($module = NULL, $api = NULL) {
  if ($module == "field_group" && $api == "field_group") {
    return array("version" => "1");
  }
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_views_api().
 */
function shepsy_kickstart_portfolio_views_api($module = NULL, $api = NULL) {
  return array("api" => "3.0");
}

/**
 * Implements hook_node_info().
 */
function shepsy_kickstart_portfolio_node_info() {
  $items = array(
    'portfolio_item' => array(
      'name' => t('Portfolio item'),
      'base' => 'node_content',
      'description' => t('Portfolio items are great for showing off your work.'),
      'has_title' => '1',
      'title_label' => t('Item name'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}
