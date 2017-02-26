#include <bindings.dsl.h>
#include <cef_values_capi.h>

module Bindings.CEF3.Values (module Bindings.CEF3.Values) where
#strict_import

import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringList
import Bindings.CEF3.Internal.CefTypes


#starttype cef_binary_value_t
#field base,      <cef_base_t>
#field is_valid,  <cb_cef_binary_value_is_valid>
#field is_owned,  <cb_cef_binary_value_is_owned>
#field copy,      <cb_cef_binary_value_copy>
#field get_size,  <cb_cef_binary_value_get_size>
#field get_data,  <cb_cef_binary_value_get_data>
#stoptype

#callback_t cb_cef_binary_value_is_valid,  Ptr <cef_binary_value_t> -> IO <int>
#callback_t cb_cef_binary_value_is_owned,  Ptr <cef_binary_value_t> -> IO <int>
#callback_t cb_cef_binary_value_copy,      Ptr <cef_binary_value_t> -> IO (Ptr <cef_binary_value_t>)
#callback_t cb_cef_binary_value_get_size,  Ptr <cef_binary_value_t> -> IO <size_t>
#callback_t cb_cef_binary_value_get_data,  Ptr <cef_binary_value_t> -> Ptr <void> -> <size_t> -> <size_t> -> IO <size_t>


#starttype cef_dictionary_value_t
#field base,            <cef_base_t>
#field is_valid,        <cb_cef_dictionary_value_is_valid>
#field is_owned,        <cb_cef_dictionary_value_is_owned>
#field is_read_only,    <cb_cef_dictionary_value_is_read_only>
#field copy,            <cb_cef_dictionary_value_copy>
#field get_size,        <cb_cef_dictionary_value_get_size>
#field clear,           <cb_cef_dictionary_value_clear>
#field has_key,         <cb_cef_dictionary_value_has_key>
#field get_keys,        <cb_cef_dictionary_value_get_keys>
#field remove,          <cb_cef_dictionary_value_remove>
#field get_type,        <cb_cef_dictionary_value_get_type>
#field get_bool,        <cb_cef_dictionary_value_get_bool>
#field get_int,         <cb_cef_dictionary_value_get_int>
#field get_double,      <cb_cef_dictionary_value_get_double>
#field get_string,      <cb_cef_dictionary_value_get_string>
#field get_binary,      <cb_cef_dictionary_value_get_binary>
#field get_dictionary,  <cb_cef_dictionary_value_get_dictionary>
#field get_list,        <cb_cef_dictionary_value_get_list>
#field set_null,        <cb_cef_dictionary_value_set_null>
#field set_bool,        <cb_cef_dictionary_value_set_bool>
#field set_int,         <cb_cef_dictionary_value_set_int>
#field set_double,      <cb_cef_dictionary_value_set_double>
#field set_string,      <cb_cef_dictionary_value_set_string>
#field set_binary,      <cb_cef_dictionary_value_set_binary>
#field set_dictionary,  <cb_cef_dictionary_value_set_dictionary>
#field set_list,        <cb_cef_dictionary_value_set_list>
#stoptype

#callback_t cb_cef_dictionary_value_is_valid,        Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_is_owned,        Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_is_read_only,    Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_copy,            Ptr <cef_dictionary_value_t> -> <int> -> IO (Ptr <cef_dictionary_value_t>)
#callback_t cb_cef_dictionary_value_get_size,        Ptr <cef_dictionary_value_t> -> IO <size_t>
#callback_t cb_cef_dictionary_value_clear,           Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_has_key,         Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_get_keys,        Ptr <cef_dictionary_value_t> -> <cef_string_list_t> -> IO <int>
#callback_t cb_cef_dictionary_value_remove,          Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_get_type,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <cef_value_type_t>
#callback_t cb_cef_dictionary_value_get_bool,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_get_int,         Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_get_double,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <double>
#callback_t cb_cef_dictionary_value_get_string,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_dictionary_value_get_binary,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_binary_value_t>)
#callback_t cb_cef_dictionary_value_get_dictionary,  Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_dictionary_value_t>)
#callback_t cb_cef_dictionary_value_get_list,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_list_value_t>)
#callback_t cb_cef_dictionary_value_set_null,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_set_bool,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_dictionary_value_set_int,         Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_dictionary_value_set_double,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> <double> -> IO <int>
#callback_t cb_cef_dictionary_value_set_string,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_dictionary_value_set_binary,      Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> Ptr <cef_binary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_set_dictionary,  Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_dictionary_value_set_list,        Ptr <cef_dictionary_value_t> -> Ptr <cef_string_t> -> Ptr <cef_list_value_t> -> IO <int>


#starttype cef_list_value_t
#field base,            <cef_base_t>
#field is_valid,        <cb_cef_list_value_is_valid>
#field is_owned,        <cb_cef_list_value_is_owned>
#field is_read_only,    <cb_cef_list_value_is_read_only>
#field copy,            <cb_cef_list_value_copy>
#field set_size,        <cb_cef_list_value_set_size>
#field get_size,        <cb_cef_list_value_get_size>
#field clear,           <cb_cef_list_value_clear>
#field remove,          <cb_cef_list_value_remove>
#field get_type,        <cb_cef_list_value_get_type>
#field get_bool,        <cb_cef_list_value_get_bool>
#field get_int,         <cb_cef_list_value_get_int>
#field get_double,      <cb_cef_list_value_get_double>
#field get_string,      <cb_cef_list_value_get_string>
#field get_binary,      <cb_cef_list_value_get_binary>
#field get_dictionary,  <cb_cef_list_value_get_dictionary>
#field get_list,        <cb_cef_list_value_get_list>
#field set_null,        <cb_cef_list_value_set_null>
#field set_bool,        <cb_cef_list_value_set_bool>
#field set_int,         <cb_cef_list_value_set_int>
#field set_double,      <cb_cef_list_value_set_double>
#field set_string,      <cb_cef_list_value_set_string>
#field set_binary,      <cb_cef_list_value_set_binary>
#field set_dictionary,  <cb_cef_list_value_set_dictionary>
#field set_list,        <cb_cef_list_value_set_list>
#stoptype

#callback_t cb_cef_list_value_is_valid,        Ptr <cef_list_value_t> -> IO <int>
#callback_t cb_cef_list_value_is_owned,        Ptr <cef_list_value_t> -> IO <int>
#callback_t cb_cef_list_value_is_read_only,    Ptr <cef_list_value_t> -> IO <int>
#callback_t cb_cef_list_value_copy,            Ptr <cef_list_value_t> -> IO (Ptr <cef_list_value_t>)
#callback_t cb_cef_list_value_set_size,        Ptr <cef_list_value_t> -> <size_t> -> IO <int>
#callback_t cb_cef_list_value_get_size,        Ptr <cef_list_value_t> -> IO <size_t>
#callback_t cb_cef_list_value_clear,           Ptr <cef_list_value_t> -> IO <int>
#callback_t cb_cef_list_value_remove,          Ptr <cef_list_value_t> -> <int> -> IO <int>
#callback_t cb_cef_list_value_get_type,        Ptr <cef_list_value_t> -> <int> -> IO <cef_value_type_t>
#callback_t cb_cef_list_value_get_bool,        Ptr <cef_list_value_t> -> <int> -> IO <int>
#callback_t cb_cef_list_value_get_int,         Ptr <cef_list_value_t> -> <int> -> IO <int>
#callback_t cb_cef_list_value_get_double,      Ptr <cef_list_value_t> -> <int> -> IO <double>
#callback_t cb_cef_list_value_get_string,      Ptr <cef_list_value_t> -> <int> -> IO <cef_string_userfree_t>
#callback_t cb_cef_list_value_get_binary,      Ptr <cef_list_value_t> -> <int> -> IO (Ptr <cef_binary_value_t>)
#callback_t cb_cef_list_value_get_dictionary,  Ptr <cef_list_value_t> -> <int> -> IO (Ptr <cef_dictionary_value_t>)
#callback_t cb_cef_list_value_get_list,        Ptr <cef_list_value_t> -> <int> -> IO (Ptr <cef_list_value_t>)
#callback_t cb_cef_list_value_set_null,        Ptr <cef_list_value_t> -> <int> -> IO <int>
#callback_t cb_cef_list_value_set_bool,        Ptr <cef_list_value_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_list_value_set_int,         Ptr <cef_list_value_t> -> <int> -> <int> -> IO <int>
#callback_t cb_cef_list_value_set_double,      Ptr <cef_list_value_t> -> <int> -> <double> -> IO <int>
#callback_t cb_cef_list_value_set_string,      Ptr <cef_list_value_t> -> <int> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_list_value_set_binary,      Ptr <cef_list_value_t> -> <int> -> Ptr <cef_binary_value_t> -> IO <int>
#callback_t cb_cef_list_value_set_dictionary,  Ptr <cef_list_value_t> -> <int> -> Ptr <cef_dictionary_value_t> -> IO <int>
#callback_t cb_cef_list_value_set_list,        Ptr <cef_list_value_t> -> <int> -> Ptr <cef_list_value_t> -> IO <int>


#ccall cef_binary_value_create, Ptr <void> -> <size_t> -> IO (Ptr <cef_binary_value_t>)
#ccall cef_dictionary_value_create, IO (Ptr <cef_dictionary_value_t>)
#ccall cef_list_value_create, IO (Ptr <cef_list_value_t>)

