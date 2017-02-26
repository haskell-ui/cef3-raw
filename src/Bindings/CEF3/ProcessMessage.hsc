#include <bindings.dsl.h>
#include <cef_process_message_capi.h>
module Bindings.CEF3.ProcessMessage
 (module Bindings.CEF3.ProcessMessage) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Base
import Bindings.CEF3.Values

#starttype cef_process_message_t
#field base,                <cef_base_t>
#field is_valid,            <cb_cef_process_message_is_valid>
#field is_read_only,        <cb_cef_process_message_is_read_only>
#field copy,                <cb_cef_process_message_copy>
#field get_name,            <cb_cef_process_message_get_name>
#field get_argument_list,   <cb_cef_process_message_get_argument_list>
#stoptype

#callback_t cb_cef_process_message_is_valid,            Ptr <cef_process_message_t> -> IO <int>
#callback_t cb_cef_process_message_is_read_only,        Ptr <cef_process_message_t> -> IO <int>
#callback_t cb_cef_process_message_copy,                Ptr <cef_process_message_t> -> IO (Ptr <cef_process_message_t>)
#callback_t cb_cef_process_message_get_name,            Ptr <cef_process_message_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_process_message_get_argument_list,   Ptr <cef_process_message_t> -> IO (Ptr <cef_list_value_t>)


#ccall cef_process_message_create, Ptr <cef_string_t> -> IO (Ptr <cef_process_message_t>)

