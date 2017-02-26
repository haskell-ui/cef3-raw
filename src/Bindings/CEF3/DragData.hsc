#include <bindings.dsl.h>
#include <cef_drag_data_capi.h>
module Bindings.CEF3.DragData
 (module Bindings.CEF3.DragData) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringList
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#starttype cef_drag_data_t
#field base,                <cef_base_t>
#field is_link,             <cb_cef_drag_data_is_link>
#field is_fragment,         <cb_cef_drag_data_is_fragment>
#field is_file,             <cb_cef_drag_data_is_file>
#field get_link_url,        <cb_cef_drag_data_get_link_url>
#field get_link_title,      <cb_cef_drag_data_get_link_title>
#field get_link_metadata,   <cb_cef_drag_data_get_link_metadata>
#field get_fragment_text,   <cb_cef_drag_data_get_fragment_text>
#field get_fragment_html,   <cb_cef_drag_data_get_fragment_html>
#field get_fragment_base_url, <cb_cef_drag_data_get_fragment_base_url>
#field get_file_name,       <cb_cef_drag_data_get_file_name>
#field get_file_names,      <cb_cef_drag_data_get_file_names>
#stoptype

#callback_t cb_cef_drag_data_is_link,             Ptr <cef_drag_data_t> -> IO <int>
#callback_t cb_cef_drag_data_is_fragment,         Ptr <cef_drag_data_t> -> IO <int>
#callback_t cb_cef_drag_data_is_file,             Ptr <cef_drag_data_t> -> IO <int>
#callback_t cb_cef_drag_data_get_link_url,        Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_link_title,      Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_link_metadata,   Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_fragment_text,   Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_fragment_html,   Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_fragment_base_url, Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_file_name,       Ptr <cef_drag_data_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_drag_data_get_file_names,      Ptr <cef_drag_data_t> -> <cef_string_list_t> -> IO <int>

