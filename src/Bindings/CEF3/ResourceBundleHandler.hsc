#include <bindings.dsl.h>
#include <cef_resource_bundle_handler_capi.h>
module Bindings.CEF3.ResourceBundleHandler
 (module Bindings.CEF3.ResourceBundleHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base

#starttype cef_resource_bundle_handler_t
#field base,                  <cef_base_t>
#field get_localized_string,  <cb_cef_resource_bundle_handler_get_localized_string>
#field get_data_resource,     <cb_cef_resource_bundle_handler_get_data_resource>
#stoptype

#callback_t cb_cef_resource_bundle_handler_get_localized_string,  Ptr <cef_resource_bundle_handler_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_resource_bundle_handler_get_data_resource,     Ptr <cef_resource_bundle_handler_t> -> <int> -> Ptr (Ptr <void>) -> Ptr <size_t> -> IO <int>

