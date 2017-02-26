#include <bindings.dsl.h>
#include <cef_browser_capi.h>
#include <cef_frame_capi.h>
module Bindings.CEF3.Frame
 (module Bindings.CEF3.Frame) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Dom
import Bindings.CEF3.Request
import Bindings.CEF3.Stream
import Bindings.CEF3.StringVisitor


#starttype cef_frame_t
#field base,          <cef_base_t>
#field is_valid,      <cb_cef_frame_is_valid>
#field undo,          <cb_cef_frame_undo>
#field redo,          <cb_cef_frame_redo>
#field cut,           <cb_cef_frame_cut>
#field copy,          <cb_cef_frame_copy>
#field paste,         <cb_cef_frame_paste>
#field del,           <cb_cef_frame_del>
#field select_all,    <cb_cef_frame_select_all>
#field view_source,   <cb_cef_frame_view_source>
#field get_source,    <cb_cef_frame_get_source>
#field get_text,      <cb_cef_frame_get_text>
#field load_request,  <cb_cef_frame_load_request>
#field load_url,      <cb_cef_frame_load_url>
#field load_string,   <cb_cef_frame_load_string>
#field execute_java_script, <cb_cef_frame_execute_java_script>
#field is_main,       <cb_cef_frame_is_main>
#field is_focused,    <cb_cef_frame_is_focused>
#field get_name,      <cb_cef_frame_get_name>
#field get_identifier,  <cb_cef_frame_get_identifier>
#field get_parent,    <cb_cef_frame_get_parent>
#field get_url,       <cb_cef_frame_get_url>
#field get_browser,   <cb_cef_frame_get_browser>
#field get_v8context, <cb_cef_frame_get_v8context>
#field visit_dom,     <cb_cef_frame_visit_dom>
#stoptype

#callback_t cb_cef_frame_is_valid,      Ptr <cef_frame_t> -> IO <int>
#callback_t cb_cef_frame_undo,          Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_redo,          Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_cut,           Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_copy,          Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_paste,         Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_del,           Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_select_all,    Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_view_source,   Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_frame_get_source,    Ptr <cef_frame_t> -> Ptr <cef_string_visitor_t> -> IO <void>
#callback_t cb_cef_frame_get_text,      Ptr <cef_frame_t> -> Ptr <cef_string_visitor_t> -> IO <void>
#callback_t cb_cef_frame_load_request,  Ptr <cef_frame_t> -> Ptr <cef_request_t> -> IO <void>
#callback_t cb_cef_frame_load_url,      Ptr <cef_frame_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_frame_load_string,   Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_frame_execute_java_script, Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <int> -> IO <void>
#callback_t cb_cef_frame_is_main,       Ptr <cef_frame_t> -> IO <int>
#callback_t cb_cef_frame_is_focused,    Ptr <cef_frame_t> -> IO <int>
#callback_t cb_cef_frame_get_name,      Ptr <cef_frame_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_frame_get_identifier,  Ptr <cef_frame_t> -> IO <int64>
#callback_t cb_cef_frame_get_parent,    Ptr <cef_frame_t> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_frame_get_url,       Ptr <cef_frame_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_frame_get_browser,   Ptr <cef_frame_t> -> IO (Ptr <cef_browser_t>)
#callback_t cb_cef_frame_get_v8context, Ptr <cef_frame_t> -> IO (Ptr <cef_v8context_t>)
#callback_t cb_cef_frame_visit_dom,     Ptr <cef_frame_t> -> Ptr <cef_domvisitor_t> -> IO <void>

