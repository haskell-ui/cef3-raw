
#include <bindings.dsl.h>
#include <cef_base_capi.h>

module Bindings.CEF3.Base (module Bindings.CEF3.Base) where
#strict_import

import Bindings.Synonyms


#starttype cef_base_t
#field size,      <size_t>
#field add_ref,   <cb_cef_base_add_ref>
#field release,   <cb_cef_base_release>
#field get_refct, <cb_cef_base_get_refct>
#stoptype

#callback_t cb_cef_base_add_ref,   Ptr <cef_base_t> -> IO <int>
#callback_t cb_cef_base_release,   Ptr <cef_base_t> -> IO <int>
#callback_t cb_cef_base_get_refct, Ptr <cef_base_t> -> IO <int>

