core = 7.x
api = 2

; Contrib projects (alphabetical order)
; ==============================================================================

projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc5"

projects[adminimal_admin_menu][subdir] = "contrib"
projects[adminimal_admin_menu][version] = "1.5"

projects[autocomplete_deluxe][subdir] = "contrib"
projects[autocomplete_deluxe][version] = "2.0-beta3"

projects[bean][subdir] = "contrib"
projects[bean][version] = "1.8"

projects[block_class][subdir] = "contrib"
projects[block_class][version] = "2.1"

projects[conditional_fields][subdir] = "contrib"
projects[conditional_fields][version] = "3.0-alpha1"

projects[context][subdir] = "contrib"
projects[context][version] = "3.6"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.5"

projects[custom_add_another][subdir] = "contrib"
projects[custom_add_another][version] = "1.0-rc3"

projects[diff][subdir] = "contrib"
projects[diff][version] = "3.2"

projects[devel][subdir] = "contrib"
projects[devel][version] = "1.5"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.5"

projects[entitycache][subdir] = "contrib"
projects[entitycache][version] = "1.2"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.1"

projects[features][subdir] = "contrib"
projects[features][version] = "2.2"

projects[features_extra][subdir] = "contrib"
projects[features_extra][version] = "1.0-beta1"

projects[field_collection][subdir] = "contrib"
projects[field_collection][version] = "1.0-beta7"
projects[field_collection][patch][] = "http://drupal.org/files/field-collection-add-another-1281272-13.patch"
;projects[field_collection][patch][] = "http://drupal.org/files/field_collection-feeds_integration-1063434-89.patch"
; From Issue #1781774
projects[field_collection][patch][] = "http://drupal.org/files/field_collection-link_to_collection.patch"
; May need a more up-to-date version of this patch to support translations.
projects[field_collection][patch][] = "http://drupal.org/files/field_collection-entity_translation-1344672-17.patch"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "1.4"

projects[filter_perms][subdir] = "contrib"
projects[filter_perms][version] = "1.0"

projects[globalredirect][subdir] = "contrib"
projects[globalredirect][version] = "1.5"

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "2.1"

projects[image_class][subdir] = "contrib"
projects[image_class][version] = "1.0"
projects[image_class][patch][] = "https://www.drupal.org/files/issues/image_class.module.patch"

projects[image_url_formatter][subdir] = "contrib"
projects[image_url_formatter][version] = "1.4"

projects[insert_view][subdir] = "contrib"
projects[insert_view][version] = "2.0"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.2"

projects[link][subdir] = "contrib"
projects[link][version] = "1.3"

projects[logintoboggan][subdir] = "contrib"
projects[logintoboggan][version] = "1.4"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "2.5"

projects[media][subdir] = "contrib"
projects[media][version] = "1.4"

projects[media_crop][subdir] = "contrib"
projects[media_crop][version] = "1.4"

projects[menu_block][subdir] = "contrib"
projects[menu_block][version] = "2.4"

projects[metatag][subdir] = "contrib"
projects[metatag][version] = "1.4"

projects[mimemail][subdir] = "contrib"
projects[mimemail][version] = "1.0-beta3"

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = "2.0-alpha2"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.2"

projects[pathologic][subdir] = "contrib"
projects[pathologic][version] = "2.12"

; phpmailer doesn't have a stable release - so target the revision of the current dev tag.
; Dev version 16th May 2014
projects[phpmailer][subdir] = "contrib"
projects[phpmailer][type] = "module"
projects[phpmailer][download][type] = "git"
projects[phpmailer][download][url] = "http://git.drupal.org/project/phpmailer.git"
projects[phpmailer][download][revision] = "8f7c632ddd4b44d2623002ddc6d8be26a2af0fd1"

projects[references][subdir] = "contrib"
projects[references][version] = "2.1"

projects[rules][subdir] = "contrib"
projects[rules][version] = "2.8"

projects[semanticviews][subdir] = "contrib"
projects[semanticviews][version] = "1.0-rc2"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.5"

projects[token_insert][subdir] = "contrib"
projects[token_insert][version] = "2.4"

projects[views][subdir] = "contrib"
projects[views][version] = "3.8"

; projects[variable][subdir] = "contrib"
; projects[variable][version] = "2.5"

projects[webform][subdir] = "contrib"
projects[webform][version] = "3.20"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.2"
; Do we need this patch?
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-1802394-4.patch"



; Themes - Contrib projects (alphabetical order)
; ==============================================================================

projects[adminimal_theme][subdir] = "contrib"
projects[adminimal_theme][version] = "1.20"
projects[adminimal_theme][type] = "theme"
projects[adminimal_theme][download][type] = get
projects[adminimal_theme][download][url] = "http://ftp.drupal.org/files/projects/adminimal_theme-7.x-1.20.tar.gz"

projects[bootstrap][subdir] = "contrib"
projects[bootstrap][version] = "3.0"
projects[bootstrap][type] = "theme"
projects[bootstrap][download][type] = get
projects[bootstrap][download][url] = "http://ftp.drupal.org/files/projects/bootstrap-7.x-3.0.tar.gz"


; Other Libraries (alphabetical order please)
; ==============================================================================
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6/ckeditor_3.6.6.tar.gz"

libraries[phpmailer][directory_name] = phpmailer
libraries[phpmailer][download][type] = get
libraries[phpmailer][download][url] = https://github.com/PHPMailer/PHPMailer/archive/v5.2.8.tar.gz

libraries[phpmailer][directory_name] = jquery.imgareaselect
libraries[phpmailer][download][type] = get
libraries[phpmailer][download][url] = http://odyniec.net/projects/imgareaselect/jquery.imgareaselect-0.9.10.zip

