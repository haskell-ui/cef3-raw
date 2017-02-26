#include <bindings.dsl.h>
#include <cef_command_line_capi.h>

module Bindings.CEF3.CommandLine (module Bindings.CEF3.CommandLine) where
#strict_import

import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringList
import Bindings.CEF3.Internal.CefStringMap

#starttype cef_command_line_t
#field base,              <cef_base_t>
#field is_valid,          <cb_cef_command_line_is_valid>
#field is_read_only,      <cb_cef_command_line_is_read_only>
#field copy,              <cb_cef_command_line_copy>
#field init_from_argv,    <cb_cef_command_line_init_from_argv>
#field init_from_string,  <cb_cef_command_line_init_from_string>
#field reset,             <cb_cef_command_line_reset>
#field get_argv,          <cb_cef_command_line_get_argv>
#field get_command_line_string, <cb_cef_command_line_get_command_line_string>
#field get_program,       <cb_cef_command_line_get_program>
#field set_program,       <cb_cef_command_line_set_program>
#field has_switches,      <cb_cef_command_line_has_switches>
#field has_switch,        <cb_cef_command_line_has_switch>
#field get_switch_value,  <cb_cef_command_line_get_switch_value>
#field get_switches,      <cb_cef_command_line_get_switches>
#field append_switch,     <cb_cef_command_line_append_switch>
#field append_switch_with_value, <cb_cef_command_line_append_switch_with_value>
#field has_arguments,     <cb_cef_command_line_has_arguments>
#field get_arguments,     <cb_cef_command_line_get_arguments>
#field append_argument,   <cb_cef_command_line_append_argument>
#field prepend_wrapper,   <cb_cef_command_line_prepend_wrapper>
#stoptype

#callback_t cb_cef_command_line_is_valid,          Ptr <cef_command_line_t> -> IO <int>
#callback_t cb_cef_command_line_is_read_only,      Ptr <cef_command_line_t> -> IO <int>
#callback_t cb_cef_command_line_copy,              Ptr <cef_command_line_t> -> IO (Ptr <cef_command_line_t>)
#callback_t cb_cef_command_line_init_from_argv,    Ptr <cef_command_line_t> -> <int> -> Ptr <string> -> IO <void>
#callback_t cb_cef_command_line_init_from_string,  Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_command_line_reset,             Ptr <cef_command_line_t> -> IO <void>
#callback_t cb_cef_command_line_get_argv,          Ptr <cef_command_line_t> -> <cef_string_list_t> -> IO <void>
#callback_t cb_cef_command_line_get_command_line_string, Ptr <cef_command_line_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_command_line_get_program,       Ptr <cef_command_line_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_command_line_set_program,       Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_command_line_has_switches,      Ptr <cef_command_line_t> -> IO <int>
#callback_t cb_cef_command_line_has_switch,        Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_command_line_get_switch_value,  Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_command_line_get_switches,      Ptr <cef_command_line_t> -> <cef_string_map_t> -> IO <void>
#callback_t cb_cef_command_line_append_switch,     Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_command_line_append_switch_with_value, Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_command_line_has_arguments,     Ptr <cef_command_line_t> -> IO <int>
#callback_t cb_cef_command_line_get_arguments,     Ptr <cef_command_line_t> -> <cef_string_list_t> -> IO <void>
#callback_t cb_cef_command_line_append_argument,   Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_command_line_prepend_wrapper,   Ptr <cef_command_line_t> -> Ptr <cef_string_t> -> IO <void>


#ccall cef_command_line_create,     IO (Ptr <cef_command_line_t>)
#ccall cef_command_line_get_global, IO (Ptr <cef_command_line_t>)

