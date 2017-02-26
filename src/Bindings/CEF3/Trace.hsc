#include <bindings.dsl.h>
#include <cef_trace_capi.h>
module Bindings.CEF3.Trace
 (module Bindings.CEF3.Trace) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#starttype cef_end_tracing_callback_t
#field base,                    <cef_base_t>
#field on_end_tracing_complete, <cb_cef_end_tracing_callback_on_end_tracing_complete>
#stoptype

#callback_t cb_cef_end_tracing_callback_on_end_tracing_complete, Ptr <cef_end_tracing_callback_t> -> Ptr <cef_string_t> -> IO <void>


#ccall cef_begin_tracing,               Ptr <cef_string_t> -> IO <int>
#ccall cef_end_tracing_async,           Ptr <cef_string_t> -> Ptr <cef_end_tracing_callback_t> -> IO <int>
#ccall cef_now_from_system_trace_time,  IO <int64>

