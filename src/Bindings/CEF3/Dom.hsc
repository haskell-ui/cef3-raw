#include <bindings.dsl.h>
#include <cef_dom_capi.h>
module Bindings.CEF3.Dom
 (module Bindings.CEF3.Dom) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringMap
import Bindings.CEF3.Internal.CefTypes

#starttype cef_domvisitor_t
#field base,    <cef_base_t>
#field visit,   <cb_cef_domvisitor_visit>
#stoptype

#callback_t cb_cef_domvisitor_visit,   Ptr <cef_domvisitor_t> -> Ptr <cef_domdocument_t> -> IO <void>


#starttype cef_domdocument_t
#field base,                <cef_base_t>
#field get_type,            <cb_cef_domdocument_get_type>
#field get_document,        <cb_cef_domdocument_get_document>
#field get_body,            <cb_cef_domdocument_get_body>
#field get_head,            <cb_cef_domdocument_get_head>
#field get_title,           <cb_cef_domdocument_get_title>
#field get_element_by_id,   <cb_cef_domdocument_get_element_by_id>
#field get_focused_node,    <cb_cef_domdocument_get_focused_node>
#field has_selection,       <cb_cef_domdocument_has_selection>
#field get_selection_start_node,    <cb_cef_domdocument_get_selection_start_node>
#field get_selection_start_offset,  <cb_cef_domdocument_get_selection_start_offset>
#field get_selection_end_node,      <cb_cef_domdocument_get_selection_end_node>
#field get_selection_end_offset,    <cb_cef_domdocument_get_selection_end_offset>
#field get_selection_as_markup,     <cb_cef_domdocument_get_selection_as_markup>
#field get_selection_as_text,       <cb_cef_domdocument_get_selection_as_text>
#field get_base_url,        <cb_cef_domdocument_get_base_url>
#field get_complete_url,    <cb_cef_domdocument_get_complete_url>
#stoptype

#callback_t cb_cef_domdocument_get_type,            Ptr <cef_domdocument_t> -> IO <cef_dom_document_type_t>
#callback_t cb_cef_domdocument_get_document,        Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_body,            Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_head,            Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_title,           Ptr <cef_domdocument_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domdocument_get_element_by_id,   Ptr <cef_domdocument_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_focused_node,    Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_has_selection,       Ptr <cef_domdocument_t> -> IO <int>
#callback_t cb_cef_domdocument_get_selection_start_node,    Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_selection_start_offset,  Ptr <cef_domdocument_t> -> IO <int>
#callback_t cb_cef_domdocument_get_selection_end_node,      Ptr <cef_domdocument_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domdocument_get_selection_end_offset,    Ptr <cef_domdocument_t> -> IO <int>
#callback_t cb_cef_domdocument_get_selection_as_markup,     Ptr <cef_domdocument_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domdocument_get_selection_as_text,       Ptr <cef_domdocument_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domdocument_get_base_url,        Ptr <cef_domdocument_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domdocument_get_complete_url,    Ptr <cef_domdocument_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>


#starttype cef_domnode_t
#field base,        <cef_base_t>
#field get_type,    <cb_cef_domnode_get_type>
#field is_text,     <cb_cef_domnode_is_text>
#field is_element,  <cb_cef_domnode_is_element>
#field is_editable, <cb_cef_domnode_is_editable>
#field is_form_control_element,       <cb_cef_domnode_is_form_control_element>
#field get_form_control_element_type, <cb_cef_domnode_get_form_control_element_type>
#field is_same,     <cb_cef_domnode_is_same>
#field get_name,    <cb_cef_domnode_get_name>
#field get_value,   <cb_cef_domnode_get_value>
#field set_value,   <cb_cef_domnode_set_value>
#field get_as_markup, <cb_cef_domnode_get_as_markup>
#field get_document,  <cb_cef_domnode_get_document>
#field get_parent,    <cb_cef_domnode_get_parent>
#field get_previous_sibling,  <cb_cef_domnode_get_previous_sibling>
#field get_next_sibling,      <cb_cef_domnode_get_next_sibling>
#field has_children,          <cb_cef_domnode_has_children>
#field get_first_child,       <cb_cef_domnode_get_first_child>
#field get_last_child,        <cb_cef_domnode_get_last_child>
#field add_event_listener,    <cb_cef_domnode_add_event_listener>
#field get_element_tag_name,    <cb_cef_domnode_get_element_tag_name>
#field has_element_attributes,  <cb_cef_domnode_has_element_attributes>
#field has_element_attribute,   <cb_cef_domnode_has_element_attribute>
#field get_element_attribute,   <cb_cef_domnode_get_element_attribute>
#field get_element_attributes,  <cb_cef_domnode_get_element_attributes>
#field set_element_attribute,   <cb_cef_domnode_set_element_attribute>
#field get_element_inner_text,  <cb_cef_domnode_get_element_inner_text>
#stoptype

#callback_t cb_cef_domnode_get_type,    Ptr <cef_domnode_t> -> IO <cef_dom_node_type_t>
#callback_t cb_cef_domnode_is_text,     Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_is_element,  Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_is_editable, Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_is_form_control_element,       Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_get_form_control_element_type, Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_is_same,     Ptr <cef_domnode_t> -> Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_get_name,    Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_get_value,   Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_set_value,   Ptr <cef_domnode_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_domnode_get_as_markup, Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_get_document,  Ptr <cef_domnode_t> -> IO (Ptr <cef_domdocument_t>)
#callback_t cb_cef_domnode_get_parent,    Ptr <cef_domnode_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domnode_get_previous_sibling,  Ptr <cef_domnode_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domnode_get_next_sibling,      Ptr <cef_domnode_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domnode_has_children,          Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_get_first_child,       Ptr <cef_domnode_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domnode_get_last_child,        Ptr <cef_domnode_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domnode_add_event_listener,    Ptr <cef_domnode_t> -> Ptr <cef_string_t> -> Ptr <cef_domevent_listener_t> -> <int> -> IO <void>
#callback_t cb_cef_domnode_get_element_tag_name,    Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_has_element_attributes,  Ptr <cef_domnode_t> -> IO <int>
#callback_t cb_cef_domnode_has_element_attribute,   Ptr <cef_domnode_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_domnode_get_element_attribute,   Ptr <cef_domnode_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domnode_get_element_attributes,  Ptr <cef_domnode_t> -> <cef_string_map_t> -> IO <void>
#callback_t cb_cef_domnode_set_element_attribute,   Ptr <cef_domnode_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_domnode_get_element_inner_text,  Ptr <cef_domnode_t> -> IO <cef_string_userfree_t>


#starttype cef_domevent_t
#field base,          <cef_base_t>
#field get_type,      <cb_cef_domevent_get_type>
#field get_category,  <cb_cef_domevent_get_category>
#field get_phase,     <cb_cef_domevent_get_phase>
#field can_bubble,    <cb_cef_domevent_can_bubble>
#field can_cancel,    <cb_cef_domevent_can_cancel>
#field get_document,  <cb_cef_domevent_get_document>
#field get_target,    <cb_cef_domevent_get_target>
#field get_current_target, <cb_cef_domevent_get_current_target>
#stoptype

#callback_t cb_cef_domevent_get_type,      Ptr <cef_domevent_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_domevent_get_category,  Ptr <cef_domevent_t> -> IO <cef_dom_event_category_t>
#callback_t cb_cef_domevent_get_phase,     Ptr <cef_domevent_t> -> IO <cef_dom_event_phase_t>
#callback_t cb_cef_domevent_can_bubble,    Ptr <cef_domevent_t> -> IO <int>
#callback_t cb_cef_domevent_can_cancel,    Ptr <cef_domevent_t> -> IO <int>
#callback_t cb_cef_domevent_get_document,  Ptr <cef_domevent_t> -> IO (Ptr <cef_domdocument_t>)
#callback_t cb_cef_domevent_get_target,    Ptr <cef_domevent_t> -> IO (Ptr <cef_domnode_t>)
#callback_t cb_cef_domevent_get_current_target, Ptr <cef_domevent_t> -> IO (Ptr <cef_domnode_t>)


#starttype cef_domevent_listener_t
#field base,          <cef_base_t>
#field handle_event,  <cb_cef_domevent_listener_handle_event>
#stoptype

#callback_t cb_cef_domevent_listener_handle_event,  Ptr <cef_domevent_listener_t> -> Ptr <cef_domevent_t> -> IO <void>

