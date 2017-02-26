#include <bindings.dsl.h>
#include <cef_request_capi.h>
module Bindings.CEF3.Request
 (module Bindings.CEF3.Request) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringMultimap
import Bindings.CEF3.Internal.CefTypes

#starttype cef_request_t
#field base,                <cef_base_t>
#field is_read_only,        <cb_cef_request_is_read_only>
#field get_url,             <cb_cef_request_get_url>
#field set_url,             <cb_cef_request_set_url>
#field get_method,          <cb_cef_request_get_method>
#field set_method,          <cb_cef_request_set_method>
#field get_post_data,       <cb_cef_request_get_post_data>
#field set_post_data,       <cb_cef_request_set_post_data>
#field get_header_map,      <cb_cef_request_get_header_map>
#field set_header_map,      <cb_cef_request_set_header_map>
#field set,                 <cb_cef_request_set>
#field get_flags,           <cb_cef_request_get_flags>
#field set_flags,           <cb_cef_request_set_flags>
#field get_first_party_for_cookies, <cb_cef_request_get_first_party_for_cookies>
#field set_first_party_for_cookies, <cb_cef_request_set_first_party_for_cookies>
#field get_resource_type,   <cb_cef_request_get_resource_type>
#field get_transition_type, <cb_cef_request_get_transition_type>
#stoptype

#callback_t cb_cef_request_is_read_only,        Ptr <cef_request_t> -> IO <int>
#callback_t cb_cef_request_get_url,             Ptr <cef_request_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_request_set_url,             Ptr <cef_request_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_get_method,          Ptr <cef_request_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_request_set_method,          Ptr <cef_request_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_get_post_data,       Ptr <cef_request_t> -> IO (Ptr <cef_post_data_t>)
#callback_t cb_cef_request_set_post_data,       Ptr <cef_request_t> -> Ptr <cef_post_data_t> -> IO <void>
#callback_t cb_cef_request_get_header_map,      Ptr <cef_request_t> -> <cef_string_multimap_t> -> IO <void>
#callback_t cb_cef_request_set_header_map,      Ptr <cef_request_t> -> <cef_string_multimap_t> -> IO <void>
#callback_t cb_cef_request_set,                 Ptr <cef_request_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_post_data_t> -> <cef_string_multimap_t> -> IO <void>
#callback_t cb_cef_request_get_flags,           Ptr <cef_request_t> -> IO <int>
#callback_t cb_cef_request_set_flags,           Ptr <cef_request_t> -> <int> -> IO <void>
#callback_t cb_cef_request_get_first_party_for_cookies, Ptr <cef_request_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_request_set_first_party_for_cookies, Ptr <cef_request_t> -> Ptr <cef_string_userfree_t> -> IO <void>
#callback_t cb_cef_request_get_resource_type,   Ptr <cef_request_t> -> IO <cef_resource_type_t>
#callback_t cb_cef_request_get_transition_type, Ptr <cef_request_t> -> IO <cef_transition_type_t>


#starttype cef_post_data_t
#field base,                <cef_base_t>
#field is_read_only,        <cb_cef_post_data_is_read_only>
#field get_element_count,   <cb_cef_post_data_get_element_count>
#field get_elements,        <cb_cef_post_data_get_elements>
#field remove_element,      <cb_cef_post_data_remove_element>
#field add_element,         <cb_cef_post_data_add_element>
#field remove_elements,     <cb_cef_post_data_remove_elements>
#stoptype

#callback_t cb_cef_post_data_is_read_only,        Ptr <cef_post_data_t> -> IO <int>
#callback_t cb_cef_post_data_get_element_count,   Ptr <cef_post_data_t> -> IO <size_t>
#callback_t cb_cef_post_data_get_elements,        Ptr <cef_post_data_t> -> Ptr <size_t> -> Ptr (Ptr <cef_post_data_element_t>) -> IO <void>
#callback_t cb_cef_post_data_remove_element,      Ptr <cef_post_data_t> -> Ptr <cef_post_data_element_t> -> IO <int>
#callback_t cb_cef_post_data_add_element,         Ptr <cef_post_data_t> -> Ptr <cef_post_data_element_t> -> IO <int>
#callback_t cb_cef_post_data_remove_elements,     Ptr <cef_post_data_t> -> IO <void>


#starttype cef_post_data_element_t
#field base,                <cef_base_t>
#field is_read_only,        <cb_cef_post_data_element_is_read_only>
#field set_to_empty,        <cb_cef_post_data_element_set_to_empty>
#field set_to_file,         <cb_cef_post_data_element_set_to_file>
#field set_to_bytes,        <cb_cef_post_data_element_set_to_bytes>
#field get_type,            <cb_cef_post_data_element_get_type>
#field get_file,            <cb_cef_post_data_element_get_file>
#field get_bytes_count,     <cb_cef_post_data_element_get_bytes_count>
#field get_bytes,           <cb_cef_post_data_element_get_bytes>
#stoptype

#callback_t cb_cef_post_data_element_is_read_only,        Ptr <cef_post_data_element_t> -> IO <int>
#callback_t cb_cef_post_data_element_set_to_empty,        Ptr <cef_post_data_element_t> -> IO <void>
#callback_t cb_cef_post_data_element_set_to_file,         Ptr <cef_post_data_element_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_post_data_element_set_to_bytes,        Ptr <cef_post_data_element_t> -> <size_t> -> Ptr <void> -> IO <void>
#callback_t cb_cef_post_data_element_get_type,            Ptr <cef_post_data_element_t> -> IO <cef_postdataelement_type_t>
#callback_t cb_cef_post_data_element_get_file,            Ptr <cef_post_data_element_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_post_data_element_get_bytes_count,     Ptr <cef_post_data_element_t> -> IO <size_t>
#callback_t cb_cef_post_data_element_get_bytes,           Ptr <cef_post_data_element_t> -> <size_t> -> Ptr <void> -> IO <size_t>

