#include <bindings.dsl.h>
#include <cef_request_context_capi.h>
#include <cef_request_context_handler_capi.h>
module Bindings.CEF3.RequestContext
 (module Bindings.CEF3.RequestContext) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Cookie
import Bindings.CEF3.Request

#starttype cef_request_context_t
#field base,        <cef_base_t>
#field is_same,     <cb_cef_request_context_is_same>
#field is_global,   <cb_cef_request_context_is_global>
#field get_handler, <cb_cef_request_context_get_handler>
#stoptype

#callback_t cb_cef_request_context_is_same,     Ptr <cef_request_context_t> -> Ptr <cef_request_context_t> -> IO <int>
#callback_t cb_cef_request_context_is_global,   Ptr <cef_request_context_t> -> IO <int>
#callback_t cb_cef_request_context_get_handler, Ptr <cef_request_context_t> -> IO (Ptr <cef_request_context_handler_t>)


#ccall cef_request_create, IO (Ptr <cef_request_t>)
#ccall cef_post_data_create, IO (Ptr <cef_post_data_t>)
#ccall cef_post_data_element_create, IO (Ptr <cef_post_data_element_t>)








#starttype cef_request_context_handler_t
#field base,                <cef_base_t>
#field get_cookie_manager,  <cb_cef_request_context_handler_get_cookie_manager>
#stoptype

#callback_t cb_cef_request_context_handler_get_cookie_manager,  Ptr <cef_request_context_handler_t> -> IO (Ptr <cef_cookie_manager_t>)


#ccall cef_request_context_get_global_context,  IO (Ptr <cef_request_context_t>)
#ccall cef_request_context_create_context,      IO (Ptr <cef_request_context_t>) 

