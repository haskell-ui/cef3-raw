#include <bindings.dsl.h>
#include <cef_string_visitor_capi.h>
module Bindings.CEF3.StringVisitor
 (module Bindings.CEF3.StringVisitor) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base

#starttype cef_string_visitor_t
#field base,  <cef_base_t>
#field visit, <cb_cef_string_visitor_visit>
#stoptype

#callback_t cb_cef_string_visitor_visit, Ptr <cef_string_visitor_t> -> Ptr <cef_string_t> -> IO <void>

