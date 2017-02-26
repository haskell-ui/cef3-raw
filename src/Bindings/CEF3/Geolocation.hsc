#include <bindings.dsl.h>
#include <cef_geolocation_capi.h>
module Bindings.CEF3.Geolocation
 (module Bindings.CEF3.Geolocation) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefTypes

#starttype cef_get_geolocation_callback_t
#field base,                <cef_base_t>
#field on_location_update,  <cb_cef_get_geolocation_callback_on_location_update>
#stoptype

#callback_t cb_cef_get_geolocation_callback_on_location_update,  Ptr <cef_get_geolocation_callback_t> -> Ptr <cef_geoposition_t> -> IO <void>



#ccall cef_get_geolocation, Ptr <cef_get_geolocation_callback_t> -> IO <int>



#starttype cef_geolocation_callback_t
#field base,  <cef_base_t>
#field cont,  <cb_cef_geolocation_callback_cont>
#stoptype

#callback_t cb_cef_geolocation_callback_cont,  Ptr <cef_geolocation_callback_t> -> <int> -> IO <void>

