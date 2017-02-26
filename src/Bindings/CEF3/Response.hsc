#include <bindings.dsl.h>
#include <cef_response_capi.h>
module Bindings.CEF3.Response
 (module Bindings.CEF3.Response) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Internal.CefStringMultimap
import Bindings.CEF3.Base

#starttype cef_response_t
#field base,                <cef_base_t>
#field is_read_only,        <cb_cef_response_is_read_only>
#field get_status,          <cb_cef_response_get_status>
#field set_status,          <cb_cef_response_set_status>
#field get_status_text,     <cb_cef_response_get_status_text>
#field set_status_text,     <cb_cef_response_set_status_text>
#field get_mime_type,       <cb_cef_response_get_mime_type>
#field set_mime_type,       <cb_cef_response_set_mime_type>
#field get_header,          <cb_cef_response_get_header>
#field get_header_map,      <cb_cef_response_get_header_map>
#field set_header_map,      <cb_cef_response_set_header_map>
#stoptype

#callback_t cb_cef_response_is_read_only,        Ptr <cef_response_t> -> IO <int>
#callback_t cb_cef_response_get_status,          Ptr <cef_response_t> -> IO <int>
#callback_t cb_cef_response_set_status,          Ptr <cef_response_t> -> <int> -> IO <void>
#callback_t cb_cef_response_get_status_text,     Ptr <cef_response_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_response_set_status_text,     Ptr <cef_response_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_response_get_mime_type,       Ptr <cef_response_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_response_set_mime_type,       Ptr <cef_response_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_response_get_header,          Ptr <cef_response_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_response_get_header_map,      Ptr <cef_response_t> -> <cef_string_multimap_t> -> IO <void>
#callback_t cb_cef_response_set_header_map,      Ptr <cef_response_t> -> <cef_string_multimap_t> -> IO <void>


#ccall cef_response_create, IO (Ptr <cef_response_t>)

