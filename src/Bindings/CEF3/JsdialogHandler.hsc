#include <bindings.dsl.h>
#include <cef_jsdialog_handler_capi.h>
module Bindings.CEF3.JsdialogHandler
 (module Bindings.CEF3.JsdialogHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser

#starttype cef_jsdialog_callback_t
#field base,  <cef_base_t>
#field cont,  <cb_cef_jsdialog_callback_cont>
#stoptype

#callback_t cb_cef_jsdialog_callback_cont,  Ptr <cef_jsdialog_callback_t> -> <int> -> Ptr <cef_string_t> -> IO <void>


#starttype cef_jsdialog_handler_t
#field base,                <cef_base_t>
#field on_jsdialog,         <cb_cef_jsdialog_handler_on_jsdialog>
#field on_before_unload_dialog, <cb_cef_jsdialog_handler_on_before_unload_dialog>
#field on_reset_dialog_state,   <cb_cef_jsdialog_handler_on_reset_dialog_state>
#field on_dialog_closed,        <cb_cef_jsdialog_handler_on_dialog_closed>
#stoptype

#callback_t cb_cef_jsdialog_handler_on_jsdialog,         Ptr <cef_jsdialog_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <cef_jsdialog_type_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_jsdialog_callback_t> -> Ptr <int> -> IO <int>
#callback_t cb_cef_jsdialog_handler_on_before_unload_dialog, Ptr <cef_jsdialog_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_jsdialog_callback_t> -> IO <int>
#callback_t cb_cef_jsdialog_handler_on_reset_dialog_state,   Ptr <cef_jsdialog_handler_t> -> Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_jsdialog_handler_on_dialog_closed,        Ptr <cef_jsdialog_handler_t> -> Ptr <cef_browser_t> -> IO <void>

