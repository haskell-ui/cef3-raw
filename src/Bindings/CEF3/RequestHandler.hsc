#include <bindings.dsl.h>
#include <cef_request_handler_capi.h>
module Bindings.CEF3.RequestHandler
 (module Bindings.CEF3.RequestHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.AuthCallback
import Bindings.CEF3.Base
-- import Bindings.CEF3.Browser
import Bindings.CEF3.Request
import Bindings.CEF3.ResourceHandler
import Bindings.CEF3.Response
import Bindings.CEF3.WebPlugin

#starttype cef_request_handler_t
#field base,                    <cef_base_t>
#field on_before_browse,        <cb_cef_request_handler_on_before_browse>
#field on_before_resource_load, <cb_cef_request_handler_on_before_resource_load>
#field get_resource_handler,    <cb_cef_request_handler_get_resource_handler>
#field on_resource_redirect,    <cb_cef_request_handler_on_resource_redirect>
#field get_auth_credentials,    <cb_cef_request_handler_get_auth_credentials>
#field on_quota_request,        <cb_cef_request_handler_on_quota_request>
#field on_protocol_execution,   <cb_cef_request_handler_on_protocol_execution>
#field on_certificate_error,    <cb_cef_request_handler_on_certificate_error>
#field on_before_plugin_load,   <cb_cef_request_handler_on_before_plugin_load>
#field on_plugin_crashed,       <cb_cef_request_handler_on_plugin_crashed>
#field on_render_process_terminated, <cb_cef_request_handler_on_render_process_terminated>
#stoptype

#callback_t cb_cef_request_handler_on_before_browse,        Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> <int> -> IO <int>
#callback_t cb_cef_request_handler_on_before_resource_load, Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> IO <int>
#callback_t cb_cef_request_handler_get_resource_handler,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> IO (Ptr <cef_resource_handler_t>)
#callback_t cb_cef_request_handler_on_resource_redirect,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_handler_get_auth_credentials,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <int> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_auth_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_quota_request,        Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> <int64> -> Ptr <cef_quota_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_protocol_execution,   Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <int> -> IO <void>
#callback_t cb_cef_request_handler_on_certificate_error,    Ptr <cef_request_handler_t> -> <cef_errorcode_t> -> Ptr <cef_string_t> -> Ptr <cef_allow_certificate_error_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_before_plugin_load,   Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_web_plugin_info_t> -> IO <int>
#callback_t cb_cef_request_handler_on_plugin_crashed,       Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_handler_on_render_process_terminated, Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> <cef_termination_status_t> -> IO <void>

