#include <bindings.dsl.h>
#include <cef_load_handler_capi.h>
module Bindings.CEF3.LoadHandler
 (module Bindings.CEF3.LoadHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
-- import Bindings.CEF3.Browser

#starttype cef_load_handler_t
#field base,                      <cef_base_t>
#field on_loading_state_change,   <cb_cef_load_handler_on_loading_state_change>
#field on_load_start,             <cb_cef_load_handler_on_load_start>
#field on_load_end,               <cb_cef_load_handler_on_load_end>
#field on_load_error,             <cb_cef_load_handler_on_load_error>
#stoptype

#callback_t cb_cef_load_handler_on_loading_state_change,   Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> <int> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_load_handler_on_load_start,             Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_load_handler_on_load_end,               Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <int> -> IO <void>
#callback_t cb_cef_load_handler_on_load_error,             Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <cef_errorcode_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>


