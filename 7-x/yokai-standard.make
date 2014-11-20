; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

projects[drupal][version] = 7


; Modules / Themes
; --------
; All modules and themes are organized into their own sections. All contributed
; modules are put into the contrib subdirectory. Each module that has a
; corresponding library is added as well.



; #################################
; #########  Development  #########
; #################################

projects[simplehtmldom][subdir] = contrib
; They can be in the repo, but do not deploy them, exclude them during deployment
projects[devel][subdir] = contrib
projects[devel_themer][subdir] = contrib
projects[coder][subdir] = contrib
projects[stage_file_proxy][subdir] = contrib
projects[browsersync][subdir] = contrib


; ###############################
; #########  Base Site  #########
; ###############################

; General
projects[token][subdir] = contrib
projects[ctools][subdir] = contrib

; Configuration
projects[features][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[variable][subdir] = contrib


; Libraries
projects[libraries][subdir] = contrib

; Backbone
libraries[backbone][directory_name] = "backbone"
libraries[backbone][type] = "library"
libraries[backbone][destination] = "libraries"
libraries[backbone][download][type] = "get"
libraries[backbone][download][url] = "https://github.com/documentcloud/backbone/archive/1.1.2.zip"

; Modernizr
projects[modernizr][subdir] = contrib

libraries[modernizr][directory_name] = "modernizr"
libraries[modernizr][type] = "library"
libraries[modernizr][destination] = "libraries"
libraries[modernizr][download][type] = "get"
libraries[modernizr][download][url] = "https://github.com/Modernizr/Modernizr/archive/v2.7.2.zip"

; Underscore
libraries[underscore][directory_name] = "underscore"
libraries[underscore][type] = "library"
libraries[underscore][destination] = "libraries"
libraries[underscore][download][type] = "get"
libraries[underscore][download][url] = "https://github.com/documentcloud/underscore/archive/1.7.0.zip"


; ###################################
; #########  Site Building  #########
; ###################################

; URLs
projects[pathauto][subdir] = contrib
;projects[subpathauto][subdir] = contrib
projects[globalredirect][subdir] = contrib
projects[rabbit_hole][subdir] = contrib


; Menus

projects[menu_position][subdir] = contrib
projects[menu_block][subdir] = contrib
projects[menu_attributes][subdir] = contrib
projects[content_menu][subdir] = contrib

; Entities
projects[entity][subdir] = contrib
projects[entitycache][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[inline_entity_form][subdir] = contrib

;projects[cer][subdir] = contrib ;Corresponding Entity References
;projects[entityconnect][subdir] = contrib
;projects[entityreference_filter][subdir] = contrib
;projects[entityreference_view_widget][subdir] = contrib
;projects[entityreference_prepopulate][subdir] = contrib
;projects[entity_path][subdir] = contrib


; Fields
projects[entityreference][subdir] = contrib
projects[diff][subdir] = contrib
projects[addressfield][subdir] = contrib
projects[countries][subdir] = contrib
projects[date][subdir] = contrib
projects[email][subdir] = contrib
projects[link][subdir] = contrib
projects[field_collection][subdir] = contrib
projects[video_embed_field][subdir] = contrib
projects[double_field][subdir] = contrib

projects[chosen][subdir] = contrib
projects[filefield_sources][subdir] = contrib
projects[field_collection][subdir] = contrib
projects[field_group][subdir] = contrib

; Blocks
projects[blockify][subdir] = contrib

; Display Suite
projects[ds][subdir] = contrib


; Panels
; add your favorite panels tools, cause' I am a DS guy I do not list panel modules

; Views
projects[views][subdir] = contrib
projects[better_exposed_filters][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[viewfield][subdir] = contrib
projects[autocache][subdir] = contrib
projects[admin_views][subdir] = contrib

; Forms
projects[webform][subdir] = contrib
projects[webform_hints][subdir] = contrib
projects[webform_default_fields][subdir] = contrib

; Taxonomy
projects[taxonomy_display][subdir] = contrib

; Media
projects[scald][subdir] = contrib
projects[imageapi][subdir] = contrib
projects[imageapi_optimize][subdir] = contrib


; User 
projects[login_destination][subdir] = contrib
;projects[email_registration][subdir] = contrib
;projects[realname][subdir] = contrib


; ###########################################
; #########  Content Configuration  #########
; ###########################################

; Caching
projects[entitycache][subdir] = contrib

; Publication
projects[publication_date][subdir] = contrib
projects[scheduler][subdir] = contrib


; ######################################
; #########  Content Creation  #########
; ######################################

; Paragraphs
projects[paragraphs][subdir] = contrib

; Formats
projects[better_formats][subdir] = contrib

; Editor
projects[ckeditor][subdir] = contrib
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor%20for%20Drupal/edit/ckeditor_4.4.3_edit.zip ; Quick Edit-optimized build of CKEditor:
libraries[ckeditor][destination] = libraries

; Inline Editing
projects[quickedit][subdir] = contrib
projects[quickedit_tab][subdir] = contrib

; Media


; Referencing
projects[linkit][subdir] = contrib
;projects[insert][subdir] = contrib


; ############################################
; #########  Content Administration  #########
; ############################################

projects[view_unpublished][subdir] = contrib


; ############################################
; #########  Backend Administration  #########
; ############################################

; Menu
projects[navbar][subdir] = contrib
projects[masquerade][subdir] = contrib

; Modules
projects[module_filter][subdir] = contrib


; ######################################
; #########  Design / Theming  #########
; ######################################

projects[] = aurora
projects[] = adminimal_theme

projects[borealis][subdir] = contrib
projects[jquery_update][subdir] = contrib
projects[magic][subdir] = contrib
projects[fences][subdir] = contrib
projects[html5_tools][subdir] = contrib
projects[typogrify][subdir] = contrib

projects[field_formatter_settings][subdir] = contrib
projects[ffc][subdir] = contrib ; Field formatter conditions
projects[image_link_formatter][subdir] = contrib

projects[styleguide][subdir] = contrib


; #############################
; #########  UX - UI  #########
; #############################

projects[fastclick][subdir] = contrib


; ###################################
; #########  Optimizations  #########
; ###################################

projects[speedy][subdir] = contrib

projects[seo_checklist][subdir] = contrib
projects[checklistapi][subdir] = contrib


; #########################
; #########  SEO  #########
; #########################

projects[metatag][subdir] = contrib
projects[site_map][subdir] = contrib
projects[site_verify][subdir] = contrib
projects[page_title][subdir] = contrib
projects[xmlsitemap][subdir] = contrib
projects[google_analytics][subdir] = contrib


; ###########################
; #########  Tools  #########
; ###########################

; Help
projects[advanced_help][subdir] = contrib















; #############################
; ########## OPTIONS ##########
; #############################

; Random


; Lightbox

;projects[colorbox][subdir] = contrib
;libraries[colorbox][download][type] = "get"
;libraries[colorbox][download][url] = "http://colorpowered.com/colorbox/latest"
;libraries[colorbox][directory_name] = "colorbox"

; RSP Images (Borealis includes acutally RSP Image solution, prefer picture module)

;projects[picture][subdir] = contrib
;projects[breakpoints][subdir] = contrib


; Image Focus

;projects[image_focus][subdir] = contrib
;projects[imagefield_focus][subdir] = contrib


; Slider

;projects[flexslider][subdir] = contrib


; Multilangugae

;projects[i18n][subdir] = contrib
;projects[i18nviews][subdir] = contrib
;projects[l10n_update][subdir] = contrib
;projects[transliteration][subdir] = contrib


; REST
;projects[services][subdir] = contrib
;projects[restws][subdir] = contrib


; Feeds
;projects[feeds][subdir] = contrib
;projects[feeds_tamper][subdir] = contrib


; Email
;projects[mailsystem][subdir] = contrib
;projects[mimemail][subdir] = contrib
;projects[phpmailer][subdir] = contrib
;libraries[phpmailer][download][type] = get
;libraries[phpmailer][download][url] = http://phpmailer.apache-extras.org.codespot.com/files/PHPMailer_5.2.4.tgz
;libraries[phpmailer][destination] = libraries
