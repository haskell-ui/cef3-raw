
#include <bindings.dsl.h>
#include <cef_app_capi.h>

module Bindings.CEF3.App (module Bindings.CEF3.App) where
#strict_import

import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.BrowserProcessHandler
import Bindings.CEF3.CommandLine
import Bindings.CEF3.RenderProcessHandler
import Bindings.CEF3.ResourceBundleHandler
import Bindings.CEF3.Scheme


#starttype cef_app_t
#field base,                              <cef_base_t>
#field on_before_command_line_processing, <cb_cef_app_on_before_command_line_processing>
#field on_register_custom_schemes,        <cb_cef_app_on_register_custom_schemes>
#field get_resource_bundle_handler,       <cb_cef_app_get_resource_bundle_handler>
#field get_browser_process_handler,       <cb_cef_app_get_browser_process_handler>
#field get_render_process_handler,        <cb_cef_app_get_render_process_handler>
#stoptype

#callback_t cb_cef_app_on_before_command_line_processing, Ptr <cef_app_t> -> Ptr <cef_string_t> -> Ptr <cef_command_line_t> -> IO <void>
#callback_t cb_cef_app_on_register_custom_schemes,        Ptr <cef_app_t> -> Ptr <cef_scheme_registrar_t> -> IO <void>
#callback_t cb_cef_app_get_resource_bundle_handler,       Ptr <cef_app_t> -> IO (Ptr <cef_resource_bundle_handler_t>)
#callback_t cb_cef_app_get_browser_process_handler,       Ptr <cef_app_t> -> IO (Ptr <cef_browser_process_handler_t>)
#callback_t cb_cef_app_get_render_process_handler,        Ptr <cef_app_t> -> IO (Ptr <cef_render_process_handler_t>)


#ccall  cef_execute_process,        Ptr <cef_main_args_t> -> Ptr <cef_app_t> -> Ptr <void> -> IO <int>
#ccall  cef_initialize,             Ptr <cef_main_args_t> -> Ptr <cef_settings_t> -> Ptr <cef_app_t> -> Ptr <void> -> IO <int>
#ccall  cef_shutdown,               IO <void>
#ccall  cef_do_message_loop_work,   IO <void>
#ccall  cef_run_message_loop,       IO <void>
#ccall  cef_quit_message_loop,      IO <void>
#ccall  cef_set_osmodal_loop,       <int> -> IO <void>

