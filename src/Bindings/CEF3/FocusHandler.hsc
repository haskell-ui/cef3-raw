#include <bindings.dsl.h>
#include <cef_focus_handler_capi.h>
module Bindings.CEF3.FocusHandler
 (module Bindings.CEF3.FocusHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.Dom

#starttype cef_focus_handler_t
#field base,            <cef_base_t>
#field on_take_focus,   <cb_cef_focus_handler_on_take_focus>
#field on_set_focus,    <cb_cef_focus_handler_on_set_focus>
#field on_got_focus,    <cb_cef_focus_handler_on_got_focus>
#stoptype

#callback_t cb_cef_focus_handler_on_take_focus,   Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> <int> -> IO <void>
#callback_t cb_cef_focus_handler_on_set_focus,    Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> <cef_focus_source_t> -> IO <int>
#callback_t cb_cef_focus_handler_on_got_focus,    Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> IO <void>

