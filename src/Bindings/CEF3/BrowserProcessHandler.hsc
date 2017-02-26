#include <bindings.dsl.h>
#include <cef_browser_process_handler_capi.h>

module Bindings.CEF3.BrowserProcessHandler (module Bindings.CEF3.BrowserProcessHandler) where
#strict_import

import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.CommandLine
import Bindings.CEF3.Values

#starttype cef_browser_process_handler_t
#field base,                              <cef_base_t>
#field on_context_initialized,            <cb_cef_browser_process_handler_on_context_initialized>
#field on_before_child_process_launch,    <cb_cef_browser_process_handler_on_before_child_process_launch>
#field on_render_process_thread_created,  <cb_cef_browser_process_handler_on_render_process_thread_created>
#stoptype

#callback_t cb_cef_browser_process_handler_on_context_initialized,            Ptr <cef_browser_process_handler_t> -> IO <void>
#callback_t cb_cef_browser_process_handler_on_before_child_process_launch,    Ptr <cef_browser_process_handler_t> -> Ptr <cef_command_line_t> -> IO <void>
#callback_t cb_cef_browser_process_handler_on_render_process_thread_created,  Ptr <cef_browser_process_handler_t> -> Ptr <cef_list_value_t> -> IO <void>


