#include <bindings.dsl.h>
#include <cef_context_menu_handler_capi.h>
module Bindings.CEF3.ContextMenuHandler
 (module Bindings.CEF3.ContextMenuHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.MenuModel

#starttype cef_context_menu_handler_t
#field base,                      <cef_base_t>
#field on_before_context_menu,    <cb_cef_context_menu_handler_on_before_context_menu>
#field on_context_menu_command,   <cb_cef_context_menu_handler_on_context_menu_command>
#field on_context_menu_dismissed, <cb_cef_context_menu_handler_on_context_menu_dismissed>
#stoptype

#callback_t cb_cef_context_menu_handler_on_before_context_menu,    Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_context_menu_params_t> -> Ptr <cef_menu_model_t> -> IO <void>
#callback_t cb_cef_context_menu_handler_on_context_menu_command,   Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_context_menu_params_t> -> <int> -> <cef_event_flags_t> -> IO <int>
#callback_t cb_cef_context_menu_handler_on_context_menu_dismissed, Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> IO <void>


#starttype cef_context_menu_params_t
#field base,                <cef_base_t>
#field get_xcoord,          <cb_cef_context_menu_params_get_xcoord>
#field get_ycoord,          <cb_cef_context_menu_params_get_ycoord>
#field get_type_flags,      <cb_cef_context_menu_params_get_type_flags>
#field get_link_url,        <cb_cef_context_menu_params_get_link_url>
#field get_unfiltered_link_url, <cb_cef_context_menu_params_get_unfiltered_link_url>
#field get_source_url,      <cb_cef_context_menu_params_get_source_url>
#field has_image_contents,  <cb_cef_context_menu_params_has_image_contents>
#field get_page_url,        <cb_cef_context_menu_params_get_page_url>
#field get_frame_url,       <cb_cef_context_menu_params_get_frame_url>
#field get_frame_charset,   <cb_cef_context_menu_params_get_frame_charset>
#field get_media_type,      <cb_cef_context_menu_params_get_media_type>
#field get_media_state_flags, <cb_cef_context_menu_params_get_media_state_flags>
#field get_selection_text,  <cb_cef_context_menu_params_get_selection_text>
#field is_editable,         <cb_cef_context_menu_params_is_editable>
#field is_speech_input_enabled, <cb_cef_context_menu_params_is_speech_input_enabled>
#field get_edit_state_flags, <cb_cef_context_menu_params_get_edit_state_flags>
#stoptype

#callback_t cb_cef_context_menu_params_get_xcoord,          Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_ycoord,          Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_type_flags,      Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_type_flags_t>
#callback_t cb_cef_context_menu_params_get_link_url,        Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_unfiltered_link_url, Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_source_url,      Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_has_image_contents,  Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_page_url,        Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_frame_url,       Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_frame_charset,   Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_media_type,      Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_media_type_t>
#callback_t cb_cef_context_menu_params_get_media_state_flags, Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_media_state_flags_t>
#callback_t cb_cef_context_menu_params_get_selection_text,  Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_is_editable,         Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_is_speech_input_enabled, Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_edit_state_flags, Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_edit_state_flags_t>

