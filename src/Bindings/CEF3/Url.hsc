#include <bindings.dsl.h>
#include <cef_url_capi.h>
module Bindings.CEF3.Url
 (module Bindings.CEF3.Url) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#ccall cef_parse_url,     Ptr <cef_string_t> -> Ptr <cef_urlparts_t> -> IO <int>
#ccall cef_create_url,    Ptr <cef_urlparts_t> -> Ptr <cef_string_t> -> IO <int>
#ccall cef_get_mime_type, Ptr <cef_string_t> -> IO <cef_string_userfree_t>

