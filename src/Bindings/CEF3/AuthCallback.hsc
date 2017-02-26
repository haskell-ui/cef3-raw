#include <bindings.dsl.h>
#include <cef_auth_callback_capi.h>
module Bindings.CEF3.AuthCallback
 (module Bindings.CEF3.AuthCallback) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base

#starttype cef_auth_callback_t
#field base,    <cef_base_t>
#field cont,    <cb_cef_auth_callback_cont>
#field cancel,  <cb_cef_auth_callback_cancel>
#stoptype

#callback_t cb_cef_auth_callback_cont,    Ptr <cef_auth_callback_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_auth_callback_cancel,  Ptr <cef_auth_callback_t> -> IO <void>

