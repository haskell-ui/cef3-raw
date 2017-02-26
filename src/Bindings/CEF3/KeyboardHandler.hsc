#include <bindings.dsl.h>
#include <cef_keyboard_handler_capi.h>
module Bindings.CEF3.KeyboardHandler
 (module Bindings.CEF3.KeyboardHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser

#starttype cef_keyboard_handler_t
#field base,              <cef_base_t>
#field on_pre_key_event,  <cb_cef_keyboard_handler_on_pre_key_event>
#field on_key_event,      <cb_cef_keyboard_handler_on_key_event>
#stoptype

#callback_t cb_cef_keyboard_handler_on_pre_key_event,  Ptr <cef_keyboard_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_key_event_t> -> <cef_event_handle_t> -> Ptr <int> -> IO <int>
#callback_t cb_cef_keyboard_handler_on_key_event,      Ptr <cef_keyboard_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_key_event_t> -> <cef_event_handle_t> -> IO <int>

