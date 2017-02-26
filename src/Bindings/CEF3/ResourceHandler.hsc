#include <bindings.dsl.h>
#include <cef_resource_handler_capi.h>
module Bindings.CEF3.ResourceHandler
 (module Bindings.CEF3.ResourceHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Callback
import Bindings.CEF3.Cookie
import Bindings.CEF3.Request
import Bindings.CEF3.Response

#starttype cef_resource_handler_t
#field base,                      <cef_base_t>
#field process_request,           <cb_cef_resource_handler_process_request>
#field get_response_headers,      <cb_cef_resource_handler_get_response_headers>
#field read_response,             <cb_cef_resource_handler_read_response>
#field can_get_cookie,            <cb_cef_resource_handler_can_get_cookie>
#field can_set_cookie,            <cb_cef_resource_handler_can_set_cookie>
#field cancel,                    <cb_cef_resource_handler_cancel>
#stoptype

#callback_t cb_cef_resource_handler_process_request,           Ptr <cef_resource_handler_t> -> Ptr <cef_request_t> -> Ptr <cef_callback_t> -> IO <int>
#callback_t cb_cef_resource_handler_get_response_headers,      Ptr <cef_resource_handler_t> -> Ptr <cef_response_t> -> Ptr <int64> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_resource_handler_read_response,             Ptr <cef_resource_handler_t> -> Ptr <void> -> <int> -> Ptr <int> -> Ptr <cef_callback_t> -> IO <int>
#callback_t cb_cef_resource_handler_can_get_cookie,            Ptr <cef_resource_handler_t> -> Ptr <cef_cookie_t> -> IO <int>
#callback_t cb_cef_resource_handler_can_set_cookie,            Ptr <cef_resource_handler_t> -> Ptr <cef_cookie_t> -> IO <int>
#callback_t cb_cef_resource_handler_cancel,                    Ptr <cef_resource_handler_t> -> IO <void>

