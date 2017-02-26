#include <bindings.dsl.h>
#include <cef_cookie_capi.h>
module Bindings.CEF3.Cookie
 (module Bindings.CEF3.Cookie) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringList
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Callback

#starttype cef_cookie_manager_t
#field base,                  <cef_base_t>
#field set_supported_schemes, <cb_cef_cookie_manager_set_supported_schemes>
#field visit_all_cookies,     <cb_cef_cookie_manager_visit_all_cookies>
#field visit_url_cookies,     <cb_cef_cookie_manager_visit_url_cookies>
#field set_cookie,            <cb_cef_cookie_manager_set_cookie>
#field delete_cookies,        <cb_cef_cookie_manager_delete_cookies>
#field set_storage_path,      <cb_cef_cookie_manager_set_storage_path>
#field flush_store,           <cb_cef_cookie_manager_flush_store>
#stoptype

#callback_t cb_cef_cookie_manager_set_supported_schemes, Ptr <cef_cookie_manager_t> -> <cef_string_list_t> -> IO <void>
#callback_t cb_cef_cookie_manager_visit_all_cookies,     Ptr <cef_cookie_manager_t> -> Ptr <cef_cookie_visitor_t> -> IO <int>
#callback_t cb_cef_cookie_manager_visit_url_cookies,     Ptr <cef_cookie_manager_t> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_cookie_visitor_t> -> IO <int>
#callback_t cb_cef_cookie_manager_set_cookie,            Ptr <cef_cookie_manager_t> -> Ptr <cef_string_t> -> Ptr <cef_cookie_t> -> IO <int>
#callback_t cb_cef_cookie_manager_delete_cookies,        Ptr <cef_cookie_manager_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_cookie_manager_set_storage_path,      Ptr <cef_cookie_manager_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_cookie_manager_flush_store,           Ptr <cef_cookie_manager_t> -> Ptr <cef_completion_handler_t> -> IO <int>


#starttype cef_cookie_visitor_t
#field base,  <cef_base_t>
#field visit, <cb_cef_cookie_visitor_visit>
#stoptype

#callback_t cb_cef_cookie_visitor_visit, Ptr <cef_cookie_visitor_t> -> Ptr <cef_cookie_t> -> <int> -> <int> -> Ptr <int> -> IO <int>


#ccall cef_cookie_manager_get_global_manager,   IO (Ptr <cef_cookie_manager_t>)
#ccall cef_cookie_manager_create_manager,       Ptr <cef_string_t> -> <int> -> IO (Ptr <cef_cookie_manager_t>)

