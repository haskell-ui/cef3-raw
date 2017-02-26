#include <bindings.dsl.h>
#include <cef_menu_model_capi.h>
module Bindings.CEF3.MenuModel
 (module Bindings.CEF3.MenuModel) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#starttype cef_menu_model_t
#field base,                  <cef_base_t>
#field clear,                 <cb_cef_menu_model_clear>
#field get_count,             <cb_cef_menu_model_get_count>
#field add_separator,         <cb_cef_menu_model_add_separator>
#field add_item,              <cb_cef_menu_model_add_item>
#field add_check_item,        <cb_cef_menu_model_add_check_item>
#field add_radio_item,        <cb_cef_menu_model_add_radio_item>
#field add_sub_menu,          <cb_cef_menu_model_add_sub_menu>
#field insert_separator_at,   <cb_cef_menu_model_insert_separator_at>
#field insert_item_at,        <cb_cef_menu_model_insert_item_at>
#field insert_check_item_at,  <cb_cef_menu_model_insert_check_item_at>
#field insert_radio_item_at,  <cb_cef_menu_model_insert_radio_item_at>
#field insert_sub_menu_at,    <cb_cef_menu_model_insert_sub_menu_at>
#field remove,                <cb_cef_menu_model_remove>
#field remove_at,             <cb_cef_menu_model_remove_at>
#field get_index_of,          <cb_cef_menu_model_get_index_of>
#field get_command_id_at,     <cb_cef_menu_model_get_command_id_at>
#field set_command_id_at,     <cb_cef_menu_model_set_command_id_at>
#field get_label,             <cb_cef_menu_model_get_label>
#field get_label_at,          <cb_cef_menu_model_get_label_at>
#field set_label,             <cb_cef_menu_model_set_label>
#field set_label_at,          <cb_cef_menu_model_set_label_at>
#field get_type,              <cb_cef_menu_model_get_type>
#field get_type_at,           <cb_cef_menu_model_get_type_at>
#field get_group_id,          <cb_cef_menu_model_get_group_id>
#field get_group_id_at,       <cb_cef_menu_model_get_group_id_at>
#field set_group_id,          <cb_cef_menu_model_set_group_id>
#field set_group_id_at,       <cb_cef_menu_model_set_group_id_at>
#field get_sub_menu,          <cb_cef_menu_model_get_sub_menu>
#field get_sub_menu_at,       <cb_cef_menu_model_get_sub_menu_at>
#field is_visible,            <cb_cef_menu_model_is_visible>
#field is_visible_at,         <cb_cef_menu_model_is_visible_at>
#field set_visible,           <cb_cef_menu_model_set_visible>
#field set_visible_at,        <cb_cef_menu_model_set_visible_at>
#field is_enabled,            <cb_cef_menu_model_is_enabled>
#field is_enabled_at,         <cb_cef_menu_model_is_enabled_at>
#field set_enabled,           <cb_cef_menu_model_set_enabled>
#field set_enabled_at,        <cb_cef_menu_model_set_enabled_at>
#field is_checked,            <cb_cef_menu_model_is_checked>
#field is_checked_at,         <cb_cef_menu_model_is_checked_at>
#field set_checked,           <cb_cef_menu_model_set_checked>
#field set_checked_at,        <cb_cef_menu_model_set_checked_at>
#field has_accelerator,       <cb_cef_menu_model_has_accelerator>
#field has_accelerator_at,    <cb_cef_menu_model_has_accelerator_at>
#field set_accelerator,       <cb_cef_menu_model_set_accelerator>
#field set_accelerator_at,    <cb_cef_menu_model_set_accelerator_at>
#field remove_accelerator,    <cb_cef_menu_model_remove_accelerator>
#field remove_accelerator_at, <cb_cef_menu_model_remove_accelerator_at>
#field get_accelerator,       <cb_cef_menu_model_get_accelerator>
#field get_accelerator_at,    <cb_cef_menu_model_get_accelerator_at>
#stoptype

#callback_t cb_cef_menu_model_clear,                 Ptr <cef_menu_model_t> -> IO <int>
#callback_t cb_cef_menu_model_get_count,             Ptr <cef_menu_model_t> -> IO <int>
#callback_t cb_cef_menu_model_add_separator,         Ptr <cef_menu_model_t> -> IO <int>
#callback_t cb_cef_menu_model_add_item,              Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_add_check_item,        Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_add_radio_item,        Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_add_sub_menu,          Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> IO (Ptr <cef_menu_model_t>)
#callback_t cb_cef_menu_model_insert_separator_at,   Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_insert_item_at,        Ptr <cef_menu_model_t> -> <int> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_insert_check_item_at,  Ptr <cef_menu_model_t> -> <int> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_insert_radio_item_at,  Ptr <cef_menu_model_t> -> <int> -> <int> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_insert_sub_menu_at,    Ptr <cef_menu_model_t> -> <int> -> <int> -> Ptr <cef_string_t> -> IO (Ptr <cef_menu_model_t>)
#callback_t cb_cef_menu_model_remove,                Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_remove_at,             Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_index_of,          Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_command_id_at,     Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_command_id_at,     Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_label,             Ptr <cef_menu_model_t> -> <int> -> IO <cef_string_userfree_t>
#callback_t cb_cef_menu_model_get_label_at,          Ptr <cef_menu_model_t> -> <int> -> IO <cef_string_userfree_t>
#callback_t cb_cef_menu_model_set_label,             Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_set_label_at,          Ptr <cef_menu_model_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_menu_model_get_type,              Ptr <cef_menu_model_t> -> <int> -> IO <cef_menu_item_type_t>
#callback_t cb_cef_menu_model_get_type_at,           Ptr <cef_menu_model_t> -> <int> -> IO <cef_menu_item_type_t>
#callback_t cb_cef_menu_model_get_group_id,          Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_group_id_at,       Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_group_id,          Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_group_id_at,       Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_sub_menu,          Ptr <cef_menu_model_t> -> <int> -> IO (Ptr <cef_menu_model_t>)
#callback_t cb_cef_menu_model_get_sub_menu_at,       Ptr <cef_menu_model_t> -> <int> -> IO (Ptr <cef_menu_model_t>)
#callback_t cb_cef_menu_model_is_visible,            Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_is_visible_at,         Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_visible,           Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_visible_at,        Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_is_enabled,            Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_is_enabled_at,         Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_enabled,           Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_enabled_at,        Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_is_checked,            Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_is_checked_at,         Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_checked,           Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_checked_at,        Ptr <cef_menu_model_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_has_accelerator,       Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_has_accelerator_at,    Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_accelerator,       Ptr <cef_menu_model_t> -> <int> -> <int> -> <int> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_set_accelerator_at,    Ptr <cef_menu_model_t> -> <int> -> <int> -> <int> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_remove_accelerator,    Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_remove_accelerator_at, Ptr <cef_menu_model_t> -> <int> -> IO <int>
#callback_t cb_cef_menu_model_get_accelerator,       Ptr <cef_menu_model_t> -> <int> -> Ptr <int> -> Ptr <int> -> Ptr <int> -> Ptr <int> -> IO <int>
#callback_t cb_cef_menu_model_get_accelerator_at,    Ptr <cef_menu_model_t> -> <int> -> Ptr <int> -> Ptr <int> -> Ptr <int> -> Ptr <int> -> IO <int>

