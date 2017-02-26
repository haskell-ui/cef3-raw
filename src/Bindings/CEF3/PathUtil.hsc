#include <bindings.dsl.h>
#include <cef_path_util_capi.h>
module Bindings.CEF3.PathUtil
 (module Bindings.CEF3.PathUtil) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#ccall cef_get_path, <cef_path_key_t> -> Ptr <cef_string_t> -> IO <int>

