
#include <bindings.dsl.h>
#include <cef_render_process_handler_capi.h>

module Bindings.CEF3.RenderProcessHandler
    (module Bindings.CEF3.RenderProcessHandler) where
#strict_import

import Bindings.Synonyms
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.Dom
-- import Bindings.CEF3.LoadHandler
import Bindings.CEF3.Request
import Bindings.CEF3.ProcessMessage
import Bindings.CEF3.Values

#starttype cef_render_process_handler_t
#field base,                        <cef_base_t>
#field on_render_thread_created,    <cb_cef_render_process_handler_on_render_thread_created>
#field on_web_kit_initialized,      <cb_cef_render_process_handler_on_web_kit_initialized>
#field on_browser_created,          <cb_cef_render_process_handler_on_browser_created>
#field on_browser_destroyed,        <cb_cef_render_process_handler_on_browser_destroyed>
#field get_load_handler,            <cb_cef_render_process_handler_get_load_handler>
#field on_before_navigation,        <cb_cef_render_process_handler_on_before_navigation>
#field on_context_created,          <cb_cef_render_process_handler_on_context_created>
#field on_context_released,         <cb_cef_render_process_handler_on_context_released>
#field on_uncaught_exception,       <cb_cef_render_process_handler_on_uncaught_exception>
#field on_focused_node_changed,     <cb_cef_render_process_handler_on_focused_node_changed>
#field on_process_message_received, <cb_cef_render_process_handler_on_process_message_received>
#stoptype

#callback_t cb_cef_render_process_handler_on_render_thread_created,    Ptr <cef_render_process_handler_t> -> Ptr <cef_list_value_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_web_kit_initialized,      Ptr <cef_render_process_handler_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_browser_created,          Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_browser_destroyed,        Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_render_process_handler_get_load_handler,            Ptr <cef_render_process_handler_t> -> IO (Ptr <cef_load_handler_t>)
#callback_t cb_cef_render_process_handler_on_before_navigation,        Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> <cef_navigation_type_t> -> <int> -> IO <int>
#callback_t cb_cef_render_process_handler_on_context_created,          Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_v8context_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_context_released,         Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_v8context_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_uncaught_exception,       Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_v8context_t> -> Ptr <cef_v8exception_t> -> Ptr <cef_v8stack_trace_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_focused_node_changed,     Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_domnode_t> -> IO <void>
#callback_t cb_cef_render_process_handler_on_process_message_received, Ptr <cef_render_process_handler_t> -> Ptr <cef_browser_t> -> <cef_process_id_t> -> Ptr <cef_process_message_t> -> IO <int>

