#include <bindings.dsl.h>
#include <cef_life_span_handler_capi.h>
module Bindings.CEF3.LifeSpanHandler
 (module Bindings.CEF3.LifeSpanHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser

#starttype cef_life_span_handler_t
#field base,                <cef_base_t>
#field on_before_popup,     <cb_cef_life_span_handler_on_before_popup>
#field on_after_created,    <cb_cef_life_span_handler_on_after_created>
#field run_modal,           <cb_cef_life_span_handler_run_modal>
#field do_close,            <cb_cef_life_span_handler_do_close>
#field on_before_close,     <cb_cef_life_span_handler_on_before_close>
#stoptype

#callback_t cb_cef_life_span_handler_on_before_popup,     Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_popup_features_t> -> Ptr <cef_window_info_t> -> Ptr (Ptr <cef_client_t>) -> Ptr <cef_browser_settings_t> -> Ptr <int> -> IO <int>
#callback_t cb_cef_life_span_handler_on_after_created,    Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_life_span_handler_run_modal,           Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_life_span_handler_do_close,            Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_life_span_handler_on_before_close,     Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <void>

