#include <bindings.dsl.h>
#include <cef_callback_capi.h>
module Bindings.CEF3.Callback
 (module Bindings.CEF3.Callback) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base

#starttype cef_callback_t
#field base,    <cef_base_t>
#field cont,    <cb_cef_callback_cont>
#field cancel,  <cb_cef_callback_cancel>
#stoptype

#callback_t cb_cef_callback_cont,    Ptr <cef_callback_t> -> IO <void>
#callback_t cb_cef_callback_cancel,  Ptr <cef_callback_t> -> IO <void>


#starttype cef_completion_handler_t
#field base,        <cef_base_t>
#field on_complete, <cb_cef_completion_handler_on_complete>
#stoptype

#callback_t cb_cef_completion_handler_on_complete, Ptr <cef_completion_handler_t> -> IO <void>

