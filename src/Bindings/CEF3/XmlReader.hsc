#include <bindings.dsl.h>
#include <cef_xml_reader_capi.h>
module Bindings.CEF3.XmlReader
 (module Bindings.CEF3.XmlReader) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Stream

#starttype cef_xml_reader_t
#field base,                      <cef_base_t>
#field move_to_next_node,         <cb_cef_xml_reader_move_to_next_node>
#field close,                     <cb_cef_xml_reader_close>
#field has_error,                 <cb_cef_xml_reader_has_error>
#field get_error,                 <cb_cef_xml_reader_get_error>
#field get_type,                  <cb_cef_xml_reader_get_type>
#field get_depth,                 <cb_cef_xml_reader_get_depth>
#field get_local_name,            <cb_cef_xml_reader_get_local_name>
#field get_prefix,                <cb_cef_xml_reader_get_prefix>
#field get_qualified_name,        <cb_cef_xml_reader_get_qualified_name>
#field get_namespace_uri,         <cb_cef_xml_reader_get_namespace_uri>
#field get_base_uri,              <cb_cef_xml_reader_get_base_uri>
#field get_xml_lang,              <cb_cef_xml_reader_get_xml_lang>
#field is_empty_element,          <cb_cef_xml_reader_is_empty_element>
#field has_value,                 <cb_cef_xml_reader_has_value>
#field get_value,                 <cb_cef_xml_reader_get_value>
#field has_attributes,            <cb_cef_xml_reader_has_attributes>
#field get_attribute_count,       <cb_cef_xml_reader_get_attribute_count>
#field get_attribute_byindex,     <cb_cef_xml_reader_get_attribute_byindex>
#field get_attribute_byqname,     <cb_cef_xml_reader_get_attribute_byqname>
#field get_attribute_bylname,     <cb_cef_xml_reader_get_attribute_bylname>
#field get_inner_xml,             <cb_cef_xml_reader_get_inner_xml>
#field get_outer_xml,             <cb_cef_xml_reader_get_outer_xml>
#field get_line_number,           <cb_cef_xml_reader_get_line_number>
#field move_to_attribute_byindex, <cb_cef_xml_reader_move_to_attribute_byindex>
#field move_to_attribute_byqname, <cb_cef_xml_reader_move_to_attribute_byqname>
#field move_to_attribute_bylname, <cb_cef_xml_reader_move_to_attribute_bylname>
#field move_to_first_attribute,   <cb_cef_xml_reader_move_to_first_attribute>
#field move_to_next_attribute,    <cb_cef_xml_reader_move_to_next_attribute>
#field move_to_carrying_element,  <cb_cef_xml_reader_move_to_carrying_element>
#stoptype

#callback_t cb_cef_xml_reader_move_to_next_node,         Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_close,                     Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_has_error,                 Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_get_error,                 Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_type,                  Ptr <cef_xml_reader_t> -> IO <cef_xml_node_type_t>
#callback_t cb_cef_xml_reader_get_depth,                 Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_get_local_name,            Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_prefix,                Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_qualified_name,        Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_namespace_uri,         Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_base_uri,              Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_xml_lang,              Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_is_empty_element,          Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_has_value,                 Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_get_value,                 Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_has_attributes,            Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_get_attribute_count,       Ptr <cef_xml_reader_t> -> IO <size_t>
#callback_t cb_cef_xml_reader_get_attribute_byindex,     Ptr <cef_xml_reader_t> -> <int> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_attribute_byqname,     Ptr <cef_xml_reader_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_attribute_bylname,     Ptr <cef_xml_reader_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_inner_xml,             Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_outer_xml,             Ptr <cef_xml_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_xml_reader_get_line_number,           Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_attribute_byindex, Ptr <cef_xml_reader_t> -> <int> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_attribute_byqname, Ptr <cef_xml_reader_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_attribute_bylname, Ptr <cef_xml_reader_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_first_attribute,   Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_next_attribute,    Ptr <cef_xml_reader_t> -> IO <int>
#callback_t cb_cef_xml_reader_move_to_carrying_element,  Ptr <cef_xml_reader_t> -> IO <int>


#ccall cef_xml_reader_create,     Ptr <cef_stream_reader_t> -> <cef_xml_encoding_type_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_xml_reader_t>)

