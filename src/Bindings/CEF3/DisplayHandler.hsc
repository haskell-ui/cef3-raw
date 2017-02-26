#include <bindings.dsl.h>
#include <cef_display_handler_capi.h>
module Bindings.CEF3.DisplayHandler
 (module Bindings.CEF3.DisplayHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser

#starttype cef_display_handler_t
#field base,                <cef_base_t>
#field on_address_change,   <cb_cef_display_handler_on_address_change>
#field on_title_change,     <cb_cef_display_handler_on_title_change>
#field on_tooltip,          <cb_cef_display_handler_on_tooltip>
#field on_status_message,   <cb_cef_display_handler_on_status_message>
#field on_console_message,  <cb_cef_display_handler_on_console_message>
#stoptype

#callback_t cb_cef_display_handler_on_address_change,   Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_title_change,     Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_tooltip,          Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_display_handler_on_status_message,   Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_console_message,  Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <int> -> IO <int>

