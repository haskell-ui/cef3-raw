#include <bindings.dsl.h>
#include <cef_origin_whitelist_capi.h>
module Bindings.CEF3.OriginWhitelist
 (module Bindings.CEF3.OriginWhitelist) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base

#ccall cef_add_cross_origin_whitelist_entry,    Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#ccall cef_remove_cross_origin_whitelist_entry, Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#ccall cef_clear_cross_origin_whitelist,        IO <int>

