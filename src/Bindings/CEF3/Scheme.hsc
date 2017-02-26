#include <bindings.dsl.h>
#include <cef_scheme_capi.h>
module Bindings.CEF3.Scheme
 (module Bindings.CEF3.Scheme) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.Request
import Bindings.CEF3.ResourceHandler
import Bindings.CEF3.Response

#starttype cef_scheme_registrar_t
#field base,                <cef_base_t>
#field add_custom_scheme,   <cb_cef_scheme_registrar_add_custom_scheme>
#stoptype

#callback_t cb_cef_scheme_registrar_add_custom_scheme,   Ptr <cef_scheme_registrar_t> -> Ptr <cef_string_t> -> <int> -> <int> -> <int> -> IO <int>


#starttype cef_scheme_handler_factory_t
#field base,    <cef_base_t>
#field create,  <cb_cef_scheme_handler_factory_create>
#stoptype

#callback_t cb_cef_scheme_handler_factory_create,  Ptr <cef_scheme_handler_factory_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_request_t> -> IO (Ptr <cef_resource_handler_t>)


#ccall cef_register_scheme_handler_factory, Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_scheme_handler_factory_t> -> IO <int>
#ccall cef_clear_scheme_handler_factories,  IO <int>

