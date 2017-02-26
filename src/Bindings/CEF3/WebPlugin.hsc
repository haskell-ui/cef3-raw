#include <bindings.dsl.h>
#include <cef_web_plugin_capi.h>
module Bindings.CEF3.WebPlugin
 (module Bindings.CEF3.WebPlugin) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#starttype cef_web_plugin_info_t
#field base,            <cef_base_t>
#field get_name,        <cb_cef_web_plugin_info_get_name>
#field get_path,        <cb_cef_web_plugin_info_get_path>
#field get_version,     <cb_cef_web_plugin_info_get_version>
#field get_description, <cb_cef_web_plugin_info_get_description>
#stoptype

#callback_t cb_cef_web_plugin_info_get_name,        Ptr <cef_web_plugin_info_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_web_plugin_info_get_path,        Ptr <cef_web_plugin_info_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_web_plugin_info_get_version,     Ptr <cef_web_plugin_info_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_web_plugin_info_get_description, Ptr <cef_web_plugin_info_t> -> IO <cef_string_userfree_t>


#starttype cef_web_plugin_info_visitor_t
#field base,  <cef_base_t>
#field visit, <cb_cef_web_plugin_info_visitor_visit>
#stoptype

#callback_t cb_cef_web_plugin_info_visitor_visit, Ptr <cef_web_plugin_info_visitor_t> -> Ptr <cef_web_plugin_info_t> -> <int> -> <int> -> IO <int>


#starttype cef_web_plugin_unstable_callback_t
#field base,        <cef_base_t>
#field is_unstable, <cb_cef_web_plugin_unstable_callback_is_unstable>
#stoptype

#callback_t cb_cef_web_plugin_unstable_callback_is_unstable, Ptr <cef_web_plugin_unstable_callback_t> -> Ptr <cef_string_t> -> <int> -> IO <void>


#ccall cef_visit_web_plugin_info,           Ptr <cef_web_plugin_info_visitor_t> -> IO <void>
#ccall cef_refresh_web_plugins,             IO <void>
#ccall cef_add_web_plugin_path,             Ptr <cef_string_t> -> IO <void>
#ccall cef_add_web_plugin_directory,        Ptr <cef_string_t> -> IO <void>
#ccall cef_remove_web_plugin_path,          Ptr <cef_string_t> -> IO <void>
#ccall cef_unregister_internal_web_plugin,  Ptr <cef_string_t> -> IO <void>
#ccall cef_force_web_plugin_shutdown,       Ptr <cef_string_t> -> IO <void>
#ccall cef_register_web_plugin_crash,       Ptr <cef_string_t> -> IO <void>
#ccall cef_is_web_plugin_unstable,          Ptr <cef_string_t> -> Ptr <cef_web_plugin_unstable_callback_t> -> IO <void>

