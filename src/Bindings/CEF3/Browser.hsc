#include <bindings.dsl.h>
#include <cef_browser_capi.h>
#include <cef_frame_capi.h>
#include <cef_v8_capi.h>
#include <cef_client_capi.h>
#include <cef_drag_handler_capi.h>
#include <cef_context_menu_handler_capi.h>
#include <cef_render_handler_capi.h>
#include <cef_load_handler_capi.h>
#include <cef_dialog_handler_capi.h>
#include <cef_display_handler_capi.h>
#include <cef_download_handler_capi.h>
#include <cef_focus_handler_capi.h>
#include <cef_geolocation_capi.h>
#include <cef_geolocation_handler_capi.h>
#include <cef_jsdialog_handler_capi.h>
#include <cef_keyboard_handler_capi.h>
#include <cef_life_span_handler_capi.h>

module Bindings.CEF3.Browser
 (module Bindings.CEF3.Browser) where

#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefStringList
import Bindings.CEF3.Internal.CefStringMap
import Bindings.CEF3.Internal.CefStringMultimap
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Internal.CefTime

import Bindings.CEF3.Base
import Bindings.CEF3.Dom
import Bindings.CEF3.Request
import Bindings.CEF3.Stream
import Bindings.CEF3.StringVisitor
import Bindings.CEF3.ProcessMessage
import Bindings.CEF3.RequestContext
import Bindings.CEF3.Task

import Bindings.CEF3.ProcessMessage

import Bindings.CEF3.DownloadItem
import Bindings.CEF3.DragData
import Bindings.CEF3.MenuModel

import Bindings.CEF3.AuthCallback
import Bindings.CEF3.ResourceHandler
import Bindings.CEF3.Response
import Bindings.CEF3.WebPlugin

#undef cef_cursor_handle_t
#undef cef_event_handle_t
#undef cef_window_handle_t
#undef cef_text_input_context_t

#starttype cef_browser_t
#field base,                <cef_base_t>
#field get_host,            <cb_cef_browser_get_host>
#field can_go_back,         <cb_cef_browser_can_go_back>
#field go_back,             <cb_cef_browser_go_back>
#field can_go_forward,      <cb_cef_browser_can_go_forward>
#field go_forward,          <cb_cef_browser_go_forward>
#field is_loading,          <cb_cef_browser_is_loading>
#field reload,              <cb_cef_browser_reload>
#field reload_ignore_cache, <cb_cef_browser_reload_ignore_cache>
#field stop_load,           <cb_cef_browser_stop_load>
#field get_identifier,      <cb_cef_browser_get_identifier>
#field is_same,             <cb_cef_browser_is_same>
#field is_popup,            <cb_cef_browser_is_popup>
#field has_document,        <cb_cef_browser_has_document>
#field get_main_frame,      <cb_cef_browser_get_main_frame>
#field get_focused_frame,   <cb_cef_browser_get_focused_frame>
#field get_frame_byident,   <cb_cef_browser_get_frame_byident>
#field get_frame,           <cb_cef_browser_get_frame>
#field get_frame_count,     <cb_cef_browser_get_frame_count>
#field get_frame_identifiers, <cb_cef_browser_get_frame_identifiers>
#field get_frame_names,     <cb_cef_browser_get_frame_names>
#field send_process_message, <cb_cef_browser_send_process_message>
#stoptype

#callback_t cb_cef_browser_get_host,            Ptr <cef_browser_t> -> IO (Ptr <cef_browser_host_t>)
#callback_t cb_cef_browser_can_go_back,         Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_go_back,             Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_can_go_forward,      Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_go_forward,          Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_is_loading,          Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_reload,              Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_browser_reload_ignore_cache, Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_browser_stop_load,           Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_browser_get_identifier,      Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_is_same,             Ptr <cef_browser_t> -> Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_is_popup,            Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_has_document,        Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_browser_get_main_frame,      Ptr <cef_browser_t> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_browser_get_focused_frame,   Ptr <cef_browser_t> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_browser_get_frame_byident,   Ptr <cef_browser_t> -> <int64> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_browser_get_frame,           Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_browser_get_frame_count,     Ptr <cef_browser_t> -> IO <size_t>
#callback_t cb_cef_browser_get_frame_identifiers, Ptr <cef_browser_t> -> Ptr <size_t> -> Ptr <int64> -> IO <void>
#callback_t cb_cef_browser_get_frame_names,     Ptr <cef_browser_t> -> <cef_string_list_t> -> IO <void>
#callback_t cb_cef_browser_send_process_message, Ptr <cef_browser_t> -> <cef_process_id_t> -> Ptr <cef_process_message_t> -> IO <int>


#starttype cef_run_file_dialog_callback_t
#field base, <cef_base_t>
#field cont, <cb_cef_run_file_dialog_callback_cont>
#stoptype

#callback_t cb_cef_run_file_dialog_callback_cont, Ptr <cef_browser_t> -> Ptr <cef_browser_host_t> -> <cef_string_list_t> -> IO <void>


#starttype cef_browser_host_t
#field base,                  <cef_base_t>
#field get_browser,           <cb_cef_browser_host_get_browser>
#field parent_window_will_close, <cb_cef_browser_host_parent_window_will_close>
#field close_browser,         <cb_cef_browser_host_close_browser>
#field set_focus,             <cb_cef_browser_host_set_focus>
#field set_window_visibility, <cb_cef_browser_host_set_window_visibility>
#field get_window_handle,     <cb_cef_browser_host_get_window_handle>
#field get_opener_window_handle, <cb_cef_browser_host_get_opener_window_handle>
#field get_client,            <cb_cef_browser_host_get_client>
#field get_request_context,   <cb_cef_browser_host_get_request_context>
#field get_zoom_level,        <cb_cef_browser_host_get_zoom_level>
#field set_zoom_level,        <cb_cef_browser_host_set_zoom_level>
#field run_file_dialog,       <cb_cef_browser_host_run_file_dialog>
#field start_download,        <cb_cef_browser_host_start_download>
#field print,                 <cb_cef_browser_host_print>
#field find,                  <cb_cef_browser_host_find>
#field stop_finding,          <cb_cef_browser_host_stop_finding>
#field show_dev_tools,        <cb_cef_browser_host_show_dev_tools>
#field close_dev_tools,       <cb_cef_browser_host_close_dev_tools>
#field set_mouse_cursor_change_disabled, <cb_cef_browser_host_set_mouse_cursor_change_disabled>
#field is_mouse_cursor_change_disabled, <cb_cef_browser_host_is_mouse_cursor_change_disabled>
#field is_window_rendering_disabled, <cb_cef_browser_host_is_window_rendering_disabled>
#field was_resized,           <cb_cef_browser_host_was_resized>
#field was_hidden,            <cb_cef_browser_host_was_hidden>
#field notify_screen_info_changed, <cb_cef_browser_host_notify_screen_info_changed>
#field invalidate,            <cb_cef_browser_host_invalidate>
#field send_key_event,        <cb_cef_browser_host_send_key_event>
#field send_mouse_click_event, <cb_cef_browser_host_send_mouse_click_event>
#field send_mouse_move_event, <cb_cef_browser_host_send_mouse_move_event>
#field send_mouse_wheel_event, <cb_cef_browser_host_send_mouse_wheel_event>
#field send_focus_event,      <cb_cef_browser_host_send_focus_event>
#field send_capture_lost_event, <cb_cef_browser_host_send_capture_lost_event>
#field get_nstext_input_context, <cb_cef_browser_host_get_nstext_input_context>
#field handle_key_event_before_text_input_client, <cb_cef_browser_host_handle_key_event_before_text_input_client>
#field handle_key_event_after_text_input_client, <cb_cef_browser_host_handle_key_event_after_text_input_client>
#stoptype

#callback_t cb_cef_browser_host_get_browser,           Ptr <cef_browser_host_t> -> IO (Ptr <cef_browser_t>)
#callback_t cb_cef_browser_host_parent_window_will_close, Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_close_browser,         Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_set_focus,             Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_set_window_visibility, Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_get_window_handle,     Ptr <cef_browser_host_t> -> IO <cef_window_handle_t>
#callback_t cb_cef_browser_host_get_opener_window_handle, Ptr <cef_browser_host_t> -> IO <cef_window_handle_t>
#callback_t cb_cef_browser_host_get_client,            Ptr <cef_browser_host_t> -> IO (Ptr <cef_client_t>)
#callback_t cb_cef_browser_host_get_request_context,   Ptr <cef_browser_host_t> -> IO (Ptr <cef_request_context_t>)
#callback_t cb_cef_browser_host_get_zoom_level,        Ptr <cef_browser_host_t> -> IO <double>
#callback_t cb_cef_browser_host_set_zoom_level,        Ptr <cef_browser_host_t> -> <double> -> IO <void>
#callback_t cb_cef_browser_host_run_file_dialog,       Ptr <cef_browser_host_t> -> <cef_file_dialog_mode_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <cef_string_list_t> -> Ptr <cef_run_file_dialog_callback_t> -> IO <void>
#callback_t cb_cef_browser_host_start_download,        Ptr <cef_browser_host_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_browser_host_print,                 Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_find,                  Ptr <cef_browser_host_t> -> <int> -> Ptr <cef_string_t> -> <int> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_stop_finding,          Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_show_dev_tools,        Ptr <cef_browser_host_t> -> Ptr <cef_window_info_t> -> Ptr <cef_client_t> -> Ptr <cef_browser_settings_t> -> IO <void>
#callback_t cb_cef_browser_host_close_dev_tools,       Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_set_mouse_cursor_change_disabled, Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_is_mouse_cursor_change_disabled, Ptr <cef_browser_host_t> -> IO <int>
#callback_t cb_cef_browser_host_is_window_rendering_disabled, Ptr <cef_browser_host_t> -> IO <int>
#callback_t cb_cef_browser_host_was_resized,           Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_was_hidden,            Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_notify_screen_info_changed, Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_invalidate,            Ptr <cef_browser_host_t> -> Ptr <cef_rect_t> -> <cef_paint_element_type_t> -> IO <void>
#callback_t cb_cef_browser_host_send_key_event,        Ptr <cef_browser_host_t> -> Ptr <cef_key_event_t> -> IO <void>
#callback_t cb_cef_browser_host_send_mouse_click_event, Ptr <cef_browser_host_t> -> Ptr <cef_mouse_event_t> -> <cef_mouse_button_type_t> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_send_mouse_move_event, Ptr <cef_browser_host_t> -> Ptr <cef_mouse_event_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_send_mouse_wheel_event, Ptr <cef_browser_host_t> -> Ptr <cef_mouse_event_t> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_send_focus_event,      Ptr <cef_browser_host_t> -> <int> -> IO <void>
#callback_t cb_cef_browser_host_send_capture_lost_event, Ptr <cef_browser_host_t> -> IO <void>
#callback_t cb_cef_browser_host_get_nstext_input_context, Ptr <cef_browser_host_t> -> IO <cef_text_input_context_t>
#callback_t cb_cef_browser_host_handle_key_event_before_text_input_client, Ptr <cef_browser_host_t> -> <cef_event_handle_t> -> IO <void>
#callback_t cb_cef_browser_host_handle_key_event_after_text_input_client, Ptr <cef_browser_host_t> -> <cef_event_handle_t> -> IO <void>
#ccall cef_browser_host_create_browser, Ptr <cef_window_info_t> -> Ptr <cef_client_t> -> Ptr <cef_string_t> -> Ptr <cef_browser_settings_t> -> Ptr <cef_request_context_t> -> IO <int>
#ccall cef_browser_host_create_browser_sync, Ptr <cef_window_info_t> -> Ptr <cef_client_t> -> Ptr <cef_string_t> -> Ptr <cef_browser_settings_t> -> Ptr <cef_request_context_t> -> IO (Ptr <cef_browser_t>)







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










#starttype cef_v8context_t
#field base,                <cef_base_t>
#field get_task_runner,     <cb_cef_v8context_get_task_runner>
#field is_valid,            <cb_cef_v8context_is_valid>
#field get_browser,         <cb_cef_v8context_get_browser>
#field get_frame,           <cb_cef_v8context_get_frame>
#field get_global,          <cb_cef_v8context_get_global>
#field enter,               <cb_cef_v8context_enter>
#field exit,                <cb_cef_v8context_exit>
#field is_same,             <cb_cef_v8context_is_same>
#field eval,                <cb_cef_v8context_eval>
#stoptype

#callback_t cb_cef_v8context_get_task_runner,     Ptr <cef_v8context_t> -> IO (Ptr <cef_task_runner_t>)
#callback_t cb_cef_v8context_is_valid,            Ptr <cef_v8context_t> -> IO <int>
#callback_t cb_cef_v8context_get_browser,         Ptr <cef_v8context_t> -> IO (Ptr <cef_browser_t>)
#callback_t cb_cef_v8context_get_frame,           Ptr <cef_v8context_t> -> IO (Ptr <cef_frame_t>)
#callback_t cb_cef_v8context_get_global,          Ptr <cef_v8context_t> -> IO (Ptr <cef_v8value_t>)
#callback_t cb_cef_v8context_enter,               Ptr <cef_v8context_t> -> IO <int>
#callback_t cb_cef_v8context_exit,                Ptr <cef_v8context_t> -> IO <int>
#callback_t cb_cef_v8context_is_same,             Ptr <cef_v8context_t> -> Ptr <cef_v8context_t> -> IO <int>
#callback_t cb_cef_v8context_eval,                Ptr <cef_v8context_t> -> Ptr <cef_string_t> -> Ptr (Ptr <cef_v8value_t>) -> Ptr (Ptr <cef_v8exception_t>)


#starttype cef_v8handler_t
#field base,    <cef_base_t>
#field execute, <cb_cef_v8handler_execute>
#stoptype

#callback_t cb_cef_v8handler_execute, Ptr <cef_v8handler_t> -> Ptr <cef_string_t> -> Ptr <cef_v8value_t> -> <size_t> -> Ptr (Ptr <cef_v8value_t>) -> Ptr (Ptr <cef_v8value_t>) -> Ptr <cef_string_t> -> IO <int>


#starttype cef_v8accessor_t
#field base,  <cef_base_t>
#field get,   <cb_cef_v8accessor_get>
#field set,   <cb_cef_v8accessor_set>
#stoptype

#callback_t cb_cef_v8accessor_get,   Ptr <cef_v8accessor_t> -> Ptr <cef_string_t> -> Ptr <cef_v8value_t> -> Ptr (Ptr <cef_v8value_t>) -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_v8accessor_set,   Ptr <cef_v8accessor_t> -> Ptr <cef_string_t> -> Ptr <cef_v8value_t> -> Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> IO <int>


#starttype cef_v8exception_t
#field base,                      <cef_base_t>
#field get_message,               <cb_cef_v8exception_get_message>
#field get_source_line,           <cb_cef_v8exception_get_source_line>
#field get_script_resource_name,  <cb_cef_v8exception_get_script_resource_name>
#field get_line_number,           <cb_cef_v8exception_get_line_number>
#field get_start_position,        <cb_cef_v8exception_get_start_position>
#field get_end_position,          <cb_cef_v8exception_get_end_position>
#field get_start_column,          <cb_cef_v8exception_get_start_column>
#field get_end_column,            <cb_cef_v8exception_get_end_column>
#stoptype

#callback_t cb_cef_v8exception_get_message,               Ptr <cef_v8exception_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8exception_get_source_line,           Ptr <cef_v8exception_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8exception_get_script_resource_name,  Ptr <cef_v8exception_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8exception_get_line_number,           Ptr <cef_v8exception_t> -> IO <int>
#callback_t cb_cef_v8exception_get_start_position,        Ptr <cef_v8exception_t> -> IO <int>
#callback_t cb_cef_v8exception_get_end_position,          Ptr <cef_v8exception_t> -> IO <int>
#callback_t cb_cef_v8exception_get_start_column,          Ptr <cef_v8exception_t> -> IO <int>
#callback_t cb_cef_v8exception_get_end_column,            Ptr <cef_v8exception_t> -> IO <int>


#starttype cef_v8value_t
#field base,                    <cef_base_t>
#field is_valid,                <cb_cef_v8value_is_valid>
#field is_undefined,            <cb_cef_v8value_is_undefined>
#field is_null,                 <cb_cef_v8value_is_null>
#field is_bool,                 <cb_cef_v8value_is_bool>
#field is_int,                  <cb_cef_v8value_is_int>
#field is_uint,                 <cb_cef_v8value_is_uint>
#field is_double,               <cb_cef_v8value_is_double>
#field is_date,                 <cb_cef_v8value_is_date>
#field is_string,               <cb_cef_v8value_is_string>
#field is_object,               <cb_cef_v8value_is_object>
#field is_array,                <cb_cef_v8value_is_array>
#field is_function,             <cb_cef_v8value_is_function>
#field is_same,                 <cb_cef_v8value_is_same>
#field get_bool_value,          <cb_cef_v8value_get_bool_value>
#field get_int_value,           <cb_cef_v8value_get_int_value>
#field get_uint_value,          <cb_cef_v8value_get_uint_value>
#field get_double_value,        <cb_cef_v8value_get_double_value>
#field get_date_value,          FunPtr (Ptr <cef_v8value_t> -> IO <cef_time_t>)
#field get_string_value,        <cb_cef_v8value_get_string_value>
#field is_user_created,         <cb_cef_v8value_is_user_created>
#field has_exception,           <cb_cef_v8value_has_exception>
#field get_exception,           <cb_cef_v8value_get_exception>
#field clear_exception,         <cb_cef_v8value_clear_exception>
#field will_rethrow_exceptions, <cb_cef_v8value_will_rethrow_exceptions>
#field set_rethrow_exceptions,  <cb_cef_v8value_set_rethrow_exceptions>
#field has_value_bykey,         <cb_cef_v8value_has_value_bykey>
#field has_value_byindex,       <cb_cef_v8value_has_value_byindex>
#field delete_value_bykey,      <cb_cef_v8value_delete_value_bykey>
#field delete_value_byindex,    <cb_cef_v8value_delete_value_byindex>
#field get_value_bykey,         <cb_cef_v8value_get_value_bykey>
#field get_value_byindex,       <cb_cef_v8value_get_value_byindex>
#field set_value_bykey,         <cb_cef_v8value_set_value_bykey>
#field set_value_byindex,       <cb_cef_v8value_set_value_byindex>
#field set_value_byaccessor,    <cb_cef_v8value_set_value_byaccessor>
#field get_keys,                <cb_cef_v8value_get_keys>
#field set_user_data,           <cb_cef_v8value_set_user_data>
#field get_user_data,           <cb_cef_v8value_get_user_data>
#field get_externally_allocated_memory,     <cb_cef_v8value_get_externally_allocated_memory>
#field adjust_externally_allocated_memory,  <cb_cef_v8value_adjust_externally_allocated_memory>
#field get_array_length,        <cb_cef_v8value_get_array_length>
#field get_function_name,       <cb_cef_v8value_get_function_name>
#field get_function_handler,    <cb_cef_v8value_get_function_handler>
#field execute_function,        <cb_cef_v8value_execute_function>
#field execute_function_with_context,       <cb_cef_v8value_execute_function_with_context>
#stoptype

#callback_t cb_cef_v8value_is_valid,                Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_undefined,            Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_null,                 Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_bool,                 Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_int,                  Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_uint,                 Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_double,               Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_date,                 Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_string,               Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_object,               Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_array,                Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_function,             Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_is_same,                 Ptr <cef_v8value_t> -> Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_get_bool_value,          Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_get_int_value,           Ptr <cef_v8value_t> -> IO <int32>
#callback_t cb_cef_v8value_get_uint_value,          Ptr <cef_v8value_t> -> IO <uint32>
#callback_t cb_cef_v8value_get_double_value,        Ptr <cef_v8value_t> -> IO <double>
#callback_t cb_cef_v8value_get_string_value,        Ptr <cef_v8value_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8value_is_user_created,         Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_has_exception,           Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_get_exception,           Ptr <cef_v8value_t> -> IO (Ptr <cef_v8exception_t>)
#callback_t cb_cef_v8value_clear_exception,         Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_will_rethrow_exceptions, Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_set_rethrow_exceptions,  Ptr <cef_v8value_t> -> <int> -> IO <int>
#callback_t cb_cef_v8value_has_value_bykey,         Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_v8value_has_value_byindex,       Ptr <cef_v8value_t> -> <int> -> IO <int>
#callback_t cb_cef_v8value_delete_value_bykey,      Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_v8value_delete_value_byindex,    Ptr <cef_v8value_t> -> <int> -> IO <int>
#callback_t cb_cef_v8value_get_value_bykey,         Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> IO (Ptr <cef_v8value_t>)
#callback_t cb_cef_v8value_get_value_byindex,       Ptr <cef_v8value_t> -> <int> -> IO (Ptr <cef_v8value_t>)
#callback_t cb_cef_v8value_set_value_bykey,         Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> Ptr <cef_v8value_t> -> <cef_v8_propertyattribute_t> -> IO <int>
#callback_t cb_cef_v8value_set_value_byindex,       Ptr <cef_v8value_t> -> <int> -> Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_set_value_byaccessor,    Ptr <cef_v8value_t> -> Ptr <cef_string_t> -> <cef_v8_accesscontrol_t> -> <cef_v8_propertyattribute_t> -> IO <int>
#callback_t cb_cef_v8value_get_keys,                Ptr <cef_v8value_t> -> <cef_string_list_t> -> IO <int>
#callback_t cb_cef_v8value_set_user_data,           Ptr <cef_v8value_t> -> Ptr <cef_base_t> -> IO <int>
#callback_t cb_cef_v8value_get_user_data,           Ptr <cef_v8value_t> -> IO (Ptr <cef_base_t>)
#callback_t cb_cef_v8value_get_externally_allocated_memory,     Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_adjust_externally_allocated_memory,  Ptr <cef_v8value_t> -> <int> -> IO <int>
#callback_t cb_cef_v8value_get_array_length,        Ptr <cef_v8value_t> -> IO <int>
#callback_t cb_cef_v8value_get_function_name,       Ptr <cef_v8value_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8value_get_function_handler,    Ptr <cef_v8value_t> -> IO (Ptr <cef_v8handler_t>)
#callback_t cb_cef_v8value_execute_function,        Ptr <cef_v8value_t> -> Ptr <cef_v8value_t> -> <size_t> -> Ptr (Ptr <cef_v8value_t>) -> IO (Ptr <cef_v8value_t>)
#callback_t cb_cef_v8value_execute_function_with_context,       Ptr <cef_v8value_t> -> Ptr <cef_v8context_t> -> Ptr <cef_v8value_t> -> <size_t> -> Ptr <cef_v8value_t> -> IO (Ptr <cef_v8value_t>)


#starttype cef_v8stack_trace_t
#field base,            <cef_base_t>
#field is_valid,        <cb_cef_v8stack_trace_is_valid>
#field get_frame_count, <cb_cef_v8stack_trace_get_frame_count>
#field get_frame,       <cb_cef_v8stack_trace_get_frame>
#stoptype

#callback_t cb_cef_v8stack_trace_is_valid,        Ptr <cef_v8stack_trace_t> -> IO <int>
#callback_t cb_cef_v8stack_trace_get_frame_count, Ptr <cef_v8stack_trace_t> -> IO <int>
#callback_t cb_cef_v8stack_trace_get_frame,       Ptr <cef_v8stack_trace_t> -> <int> -> IO (Ptr <cef_v8stack_frame_t>)


#starttype cef_v8stack_frame_t
#field base,              <cef_base_t>
#field is_valid,          <cb_cef_v8stack_frame_is_valid>
#field get_script_name,   <cb_cef_v8stack_frame_get_script_name>
#field get_script_name_or_source_url, <cb_cef_v8stack_frame_get_script_name_or_source_url>
#field get_function_name, <cb_cef_v8stack_frame_get_function_name>
#field get_line_number,   <cb_cef_v8stack_frame_get_line_number>
#field get_column,        <cb_cef_v8stack_frame_get_column>
#field is_eval,           <cb_cef_v8stack_frame_is_eval>
#field is_constructor,    <cb_cef_v8stack_frame_is_constructor>
#stoptype

#callback_t cb_cef_v8stack_frame_is_valid,          Ptr <cef_v8stack_frame_t> -> IO <int>
#callback_t cb_cef_v8stack_frame_get_script_name,   Ptr <cef_v8stack_frame_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8stack_frame_get_script_name_or_source_url, Ptr <cef_v8stack_frame_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8stack_frame_get_function_name, Ptr <cef_v8stack_frame_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_v8stack_frame_get_line_number,   Ptr <cef_v8stack_frame_t> -> IO <int>
#callback_t cb_cef_v8stack_frame_get_column,        Ptr <cef_v8stack_frame_t> -> IO <int>
#callback_t cb_cef_v8stack_frame_is_eval,           Ptr <cef_v8stack_frame_t> -> IO <int>
#callback_t cb_cef_v8stack_frame_is_constructor,    Ptr <cef_v8stack_frame_t> -> IO <int>


#ccall cef_v8context_get_current_context, IO (Ptr <cef_v8context_t>)
#ccall cef_v8context_get_entered_context, IO (Ptr <cef_v8context_t>)
#ccall cef_v8context_in_context,          IO <int>

#ccall cef_v8value_create_undefined,  IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_null,       IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_bool,       <int> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_int,        <int32> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_uint,       <uint32> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_double,     <double> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_date,       Ptr <cef_time_t> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_string,     Ptr <cef_time_t> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_object,     Ptr <cef_v8accessor_t> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_array,      <int> -> IO (Ptr <cef_v8value_t>)
#ccall cef_v8value_create_function,   Ptr <cef_string_t> -> Ptr <cef_v8handler_t> -> IO (Ptr <cef_v8value_t>)

#ccall cef_v8stack_trace_get_current,   <int> -> IO (Ptr <cef_v8stack_trace_t>)

#ccall cef_register_extension,  Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_v8handler_t> -> IO <int>








#starttype cef_client_t
#field base,                      <cef_base_t>
#field get_context_menu_handler,  <cb_cef_client_get_context_menu_handler>
#field get_dialog_handler,        <cb_cef_client_get_dialog_handler>
#field get_display_handler,       <cb_cef_client_get_display_handler>
#field get_download_handler,      <cb_cef_client_get_download_handler>
#field get_drag_handler,          <cb_cef_client_get_drag_handler>
#field get_focus_handler,         <cb_cef_client_get_focus_handler>
#field get_geolocation_handler,   <cb_cef_client_get_geolocation_handler>
#field get_jsdialog_handler,      <cb_cef_client_get_jsdialog_handler>
#field get_keyboard_handler,      <cb_cef_client_get_keyboard_handler>
#field get_life_span_handler,     <cb_cef_client_get_life_span_handler>
#field get_load_handler,          <cb_cef_client_get_load_handler>
#field get_render_handler,        <cb_cef_client_get_render_handler>
#field get_request_handler,       <cb_cef_client_get_request_handler>
#field on_process_message_received, <cb_cef_client_on_process_message_received>
#stoptype

#callback_t cb_cef_client_get_context_menu_handler,  Ptr <cef_client_t> -> IO (Ptr <cef_context_menu_handler_t>)
#callback_t cb_cef_client_get_dialog_handler,        Ptr <cef_client_t> -> IO (Ptr <cef_dialog_handler_t>)
#callback_t cb_cef_client_get_display_handler,       Ptr <cef_client_t> -> IO (Ptr <cef_display_handler_t>)
#callback_t cb_cef_client_get_download_handler,      Ptr <cef_client_t> -> IO (Ptr <cef_download_handler_t>)
#callback_t cb_cef_client_get_drag_handler,          Ptr <cef_client_t> -> IO (Ptr <cef_drag_handler_t>)
#callback_t cb_cef_client_get_focus_handler,         Ptr <cef_client_t> -> IO (Ptr <cef_focus_handler_t>)
#callback_t cb_cef_client_get_geolocation_handler,   Ptr <cef_client_t> -> IO (Ptr <cef_geolocation_handler_t>)
#callback_t cb_cef_client_get_jsdialog_handler,      Ptr <cef_client_t> -> IO (Ptr <cef_jsdialog_handler_t>)
#callback_t cb_cef_client_get_keyboard_handler,      Ptr <cef_client_t> -> IO (Ptr <cef_keyboard_handler_t>)
#callback_t cb_cef_client_get_life_span_handler,     Ptr <cef_client_t> -> IO (Ptr <cef_life_span_handler_t>)
#callback_t cb_cef_client_get_load_handler,          Ptr <cef_client_t> -> IO (Ptr <cef_load_handler_t>)
#callback_t cb_cef_client_get_render_handler,        Ptr <cef_client_t> -> IO (Ptr <cef_render_handler_t>)
#callback_t cb_cef_client_get_request_handler,       Ptr <cef_client_t> -> IO (Ptr <cef_request_handler_t>)
#callback_t cb_cef_client_on_process_message_received, Ptr <cef_client_t> -> Ptr <cef_browser_t> -> <cef_process_id_t> -> Ptr <cef_process_message_t> -> IO <int>







#starttype cef_drag_handler_t
#field base,          <cef_base_t>
#field on_drag_enter, <cb_cef_drag_handler_on_drag_enter>
#stoptype

#callback_t cb_cef_drag_handler_on_drag_enter, Ptr <cef_drag_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_drag_data_t> -> <cef_drag_operations_mask_t> -> IO <int>






#starttype cef_context_menu_handler_t
#field base,                      <cef_base_t>
#field on_before_context_menu,    <cb_cef_context_menu_handler_on_before_context_menu>
#field on_context_menu_command,   <cb_cef_context_menu_handler_on_context_menu_command>
#field on_context_menu_dismissed, <cb_cef_context_menu_handler_on_context_menu_dismissed>
#stoptype

#callback_t cb_cef_context_menu_handler_on_before_context_menu,    Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_context_menu_params_t> -> Ptr <cef_menu_model_t> -> IO <void>
#callback_t cb_cef_context_menu_handler_on_context_menu_command,   Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_context_menu_params_t> -> <int> -> <cef_event_flags_t> -> IO <int>
#callback_t cb_cef_context_menu_handler_on_context_menu_dismissed, Ptr <cef_context_menu_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> IO <void>


#starttype cef_context_menu_params_t
#field base,                <cef_base_t>
#field get_xcoord,          <cb_cef_context_menu_params_get_xcoord>
#field get_ycoord,          <cb_cef_context_menu_params_get_ycoord>
#field get_type_flags,      <cb_cef_context_menu_params_get_type_flags>
#field get_link_url,        <cb_cef_context_menu_params_get_link_url>
#field get_unfiltered_link_url, <cb_cef_context_menu_params_get_unfiltered_link_url>
#field get_source_url,      <cb_cef_context_menu_params_get_source_url>
#field has_image_contents,  <cb_cef_context_menu_params_has_image_contents>
#field get_page_url,        <cb_cef_context_menu_params_get_page_url>
#field get_frame_url,       <cb_cef_context_menu_params_get_frame_url>
#field get_frame_charset,   <cb_cef_context_menu_params_get_frame_charset>
#field get_media_type,      <cb_cef_context_menu_params_get_media_type>
#field get_media_state_flags, <cb_cef_context_menu_params_get_media_state_flags>
#field get_selection_text,  <cb_cef_context_menu_params_get_selection_text>
#field is_editable,         <cb_cef_context_menu_params_is_editable>
#field is_speech_input_enabled, <cb_cef_context_menu_params_is_speech_input_enabled>
#field get_edit_state_flags, <cb_cef_context_menu_params_get_edit_state_flags>
#stoptype

#callback_t cb_cef_context_menu_params_get_xcoord,          Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_ycoord,          Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_type_flags,      Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_type_flags_t>
#callback_t cb_cef_context_menu_params_get_link_url,        Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_unfiltered_link_url, Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_source_url,      Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_has_image_contents,  Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_page_url,        Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_frame_url,       Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_frame_charset,   Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_get_media_type,      Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_media_type_t>
#callback_t cb_cef_context_menu_params_get_media_state_flags, Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_media_state_flags_t>
#callback_t cb_cef_context_menu_params_get_selection_text,  Ptr <cef_context_menu_params_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_context_menu_params_is_editable,         Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_is_speech_input_enabled, Ptr <cef_context_menu_params_t> -> IO <int>
#callback_t cb_cef_context_menu_params_get_edit_state_flags, Ptr <cef_context_menu_params_t> -> IO <cef_context_menu_edit_state_flags_t>







#starttype cef_render_handler_t
#field base,                  <cef_base_t>
#field get_root_screen_rect,  <cb_cef_render_handler_get_root_screen_rect>
#field get_view_rect,         <cb_cef_render_handler_get_view_rect>
#field get_screen_point,      <cb_cef_render_handler_get_screen_point>
#field get_screen_info,       <cb_cef_render_handler_get_screen_info>
#field on_popup_show,         <cb_cef_render_handler_on_popup_show>
#field on_popup_size,         <cb_cef_render_handler_on_popup_size>
#field on_paint,              <cb_cef_render_handler_on_paint>
#field on_cursor_change,      <cb_cef_render_handler_on_cursor_change>
#field on_scroll_offset_changed, <cb_cef_render_handler_on_scroll_offset_changed>
#stoptype

#callback_t cb_cef_render_handler_get_root_screen_rect,  Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_rect_t> -> IO <int>
#callback_t cb_cef_render_handler_get_view_rect,         Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_rect_t> -> IO <int>
#callback_t cb_cef_render_handler_get_screen_point,      Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> <int> -> <int> -> Ptr <int> -> Ptr <int> -> IO <int>
#callback_t cb_cef_render_handler_get_screen_info,       Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_screen_info_t> -> IO <int>
#callback_t cb_cef_render_handler_on_popup_show,         Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> <int> -> IO <void>
#callback_t cb_cef_render_handler_on_popup_size,         Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_rect_t> -> IO <void>
#callback_t cb_cef_render_handler_on_paint,              Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> <cef_paint_element_type_t> -> <size_t> -> Ptr <cef_rect_t> -> Ptr <void> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_render_handler_on_cursor_change,      Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> <cef_cursor_handle_t> -> IO <void>
#callback_t cb_cef_render_handler_on_scroll_offset_changed, Ptr <cef_render_handler_t> -> Ptr <cef_browser_t> -> IO <void>





#starttype cef_load_handler_t
#field base,                      <cef_base_t>
#field on_loading_state_change,   <cb_cef_load_handler_on_loading_state_change>
#field on_load_start,             <cb_cef_load_handler_on_load_start>
#field on_load_end,               <cb_cef_load_handler_on_load_end>
#field on_load_error,             <cb_cef_load_handler_on_load_error>
#stoptype

#callback_t cb_cef_load_handler_on_loading_state_change,   Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> <int> -> <int> -> <int> -> IO <void>
#callback_t cb_cef_load_handler_on_load_start,             Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> IO <void>
#callback_t cb_cef_load_handler_on_load_end,               Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <int> -> IO <void>
#callback_t cb_cef_load_handler_on_load_error,             Ptr <cef_load_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <cef_errorcode_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>









#starttype cef_file_dialog_callback_t
#field base,    <cef_base_t>
#field cont,    <cb_cef_file_dialog_callback_cont>
#field cancel,  <cb_cef_file_dialog_callback_cancel>
#stoptype

#callback_t cb_cef_file_dialog_callback_cont,    Ptr <cef_file_dialog_callback_t> -> <cef_string_list_t> -> IO <void>
#callback_t cb_cef_file_dialog_callback_cancel,  Ptr <cef_file_dialog_callback_t> -> IO <void>


#starttype cef_dialog_handler_t
#field base,            <cef_base_t>
#field on_file_dialog,  <cb_cef_dialog_handler_on_file_dialog>
#stoptype

#callback_t cb_cef_dialog_handler_on_file_dialog,  Ptr <cef_dialog_handler_t> -> Ptr <cef_browser_t> -> <cef_file_dialog_mode_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <cef_string_list_t> -> Ptr <cef_file_dialog_callback_t> -> IO <int>







#starttype cef_display_handler_t
#field base,                <cef_base_t>
#field on_address_change,   <cb_cef_display_handler_on_address_change>
#field on_title_change,     <cb_cef_display_handler_on_title_change>
#field on_tooltip,          <cb_cef_display_handler_on_tooltip>
#field on_status_message,   <cb_cef_display_handler_on_status_message>
#field on_console_message,  <cb_cef_display_handler_on_console_message>
#stoptype

#callback_t cb_cef_display_handler_on_address_change,   Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_title_change,     Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_tooltip,          Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_display_handler_on_status_message,   Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_display_handler_on_console_message,  Ptr <cef_display_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> <int> -> IO <int>








#starttype cef_before_download_callback_t
#field base,  <cef_base_t>
#field cont,  <cb_cef_before_download_callback_cont>
#stoptype

#callback_t cb_cef_before_download_callback_cont,  Ptr <cef_string_t> -> <int> -> IO <void>


#starttype cef_download_item_callback_t
#field base,    <cef_base_t>
#field cancel,  <cb_cef_download_item_callback_cancel>
#stoptype

#callback_t cb_cef_download_item_callback_cancel,  Ptr <cef_download_item_callback_t> -> IO <void>


#starttype cef_download_handler_t
#field base,                <cef_base_t>
#field on_before_download,  <cb_cef_download_handler_on_before_download>
#field on_download_updated, <cb_cef_download_handler_on_download_updated>
#stoptype

#callback_t cb_cef_download_handler_on_before_download,  Ptr <cef_download_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_download_item_t> -> Ptr <cef_string_t> -> Ptr <cef_before_download_callback_t> -> IO <void>
#callback_t cb_cef_download_handler_on_download_updated, Ptr <cef_download_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_download_item_t> -> Ptr <cef_download_item_callback_t> -> IO <void>







#starttype cef_focus_handler_t
#field base,            <cef_base_t>
#field on_take_focus,   <cb_cef_focus_handler_on_take_focus>
#field on_set_focus,    <cb_cef_focus_handler_on_set_focus>
#field on_got_focus,    <cb_cef_focus_handler_on_got_focus>
#stoptype

#callback_t cb_cef_focus_handler_on_take_focus,   Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> <int> -> IO <void>
#callback_t cb_cef_focus_handler_on_set_focus,    Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> <cef_focus_source_t> -> IO <int>
#callback_t cb_cef_focus_handler_on_got_focus,    Ptr <cef_focus_handler_t> -> Ptr <cef_browser_t> -> IO <void>














#starttype cef_get_geolocation_callback_t
#field base,                <cef_base_t>
#field on_location_update,  <cb_cef_get_geolocation_callback_on_location_update>
#stoptype

#callback_t cb_cef_get_geolocation_callback_on_location_update,  Ptr <cef_get_geolocation_callback_t> -> Ptr <cef_geoposition_t> -> IO <void>



#ccall cef_get_geolocation, Ptr <cef_get_geolocation_callback_t> -> IO <int>



#starttype cef_geolocation_callback_t
#field base,  <cef_base_t>
#field cont,  <cb_cef_geolocation_callback_cont>
#stoptype

#callback_t cb_cef_geolocation_callback_cont,  Ptr <cef_geolocation_callback_t> -> <int> -> IO <void>


#starttype cef_geolocation_handler_t
#field base,                              <cef_base_t>
#field on_request_geolocation_permission, <cb_cef_geolocation_handler_on_request_geolocation_permission>
#field on_cancel_geolocation_permission,  <cb_cef_geolocation_handler_on_cancel_geolocation_permission>
#stoptype

#callback_t cb_cef_geolocation_handler_on_request_geolocation_permission, Ptr <cef_geolocation_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_geolocation_callback_t> -> IO <void>
#callback_t cb_cef_geolocation_handler_on_cancel_geolocation_permission,  Ptr <cef_geolocation_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> <int> -> IO <void>















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












#starttype cef_keyboard_handler_t
#field base,              <cef_base_t>
#field on_pre_key_event,  <cb_cef_keyboard_handler_on_pre_key_event>
#field on_key_event,      <cb_cef_keyboard_handler_on_key_event>
#stoptype

#callback_t cb_cef_keyboard_handler_on_pre_key_event,  Ptr <cef_keyboard_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_key_event_t> -> <cef_event_handle_t> -> Ptr <int> -> IO <int>
#callback_t cb_cef_keyboard_handler_on_key_event,      Ptr <cef_keyboard_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_key_event_t> -> <cef_event_handle_t> -> IO <int>









#starttype cef_life_span_handler_t
#field base,                <cef_base_t>
#field on_before_popup,     <cb_cef_life_span_handler_on_before_popup>
#field on_after_created,    <cb_cef_life_span_handler_on_after_created>
#field run_modal,           <cb_cef_life_span_handler_run_modal>
#field do_close,            <cb_cef_life_span_handler_do_close>
#field on_before_close,     <cb_cef_life_span_handler_on_before_close>
#stoptype

#callback_t cb_cef_life_span_handler_on_before_popup,     Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_popup_features_t> -> Ptr <cef_window_info_t> -> Ptr (Ptr <cef_client_t>) -> Ptr <cef_browser_settings_t> -> Ptr <int> -> IO <int>
#callback_t cb_cef_life_span_handler_on_after_created,    Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <void>
#callback_t cb_cef_life_span_handler_run_modal,           Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_life_span_handler_do_close,            Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <int>
#callback_t cb_cef_life_span_handler_on_before_close,     Ptr <cef_life_span_handler_t> -> Ptr <cef_browser_t> -> IO <void>







#starttype cef_request_handler_t
#field base,                    <cef_base_t>
#field on_before_browse,        <cb_cef_request_handler_on_before_browse>
#field on_before_resource_load, <cb_cef_request_handler_on_before_resource_load>
#field get_resource_handler,    <cb_cef_request_handler_get_resource_handler>
#field on_resource_redirect,    <cb_cef_request_handler_on_resource_redirect>
#field get_auth_credentials,    <cb_cef_request_handler_get_auth_credentials>
#field on_quota_request,        <cb_cef_request_handler_on_quota_request>
#field on_protocol_execution,   <cb_cef_request_handler_on_protocol_execution>
#field on_certificate_error,    <cb_cef_request_handler_on_certificate_error>
#field on_before_plugin_load,   <cb_cef_request_handler_on_before_plugin_load>
#field on_plugin_crashed,       <cb_cef_request_handler_on_plugin_crashed>
#field on_render_process_terminated, <cb_cef_request_handler_on_render_process_terminated>
#stoptype

#callback_t cb_cef_request_handler_on_before_browse,        Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> <int> -> IO <int>
#callback_t cb_cef_request_handler_on_before_resource_load, Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> IO <int>
#callback_t cb_cef_request_handler_get_resource_handler,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_request_t> -> IO (Ptr <cef_resource_handler_t>)
#callback_t cb_cef_request_handler_on_resource_redirect,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_handler_get_auth_credentials,    Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_frame_t> -> <int> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_auth_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_quota_request,        Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> <int64> -> Ptr <cef_quota_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_protocol_execution,   Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <int> -> IO <void>
#callback_t cb_cef_request_handler_on_certificate_error,    Ptr <cef_request_handler_t> -> <cef_errorcode_t> -> Ptr <cef_string_t> -> Ptr <cef_allow_certificate_error_callback_t> -> IO <int>
#callback_t cb_cef_request_handler_on_before_plugin_load,   Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_web_plugin_info_t> -> IO <int>
#callback_t cb_cef_request_handler_on_plugin_crashed,       Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_string_t> -> IO <void>
#callback_t cb_cef_request_handler_on_render_process_terminated, Ptr <cef_request_handler_t> -> Ptr <cef_browser_t> -> <cef_termination_status_t> -> IO <void>


#starttype cef_quota_callback_t
#field base,    <cef_base_t>
#field cont,    <cb_cef_quota_callback_cont>
#field cancel,  <cb_cef_quota_callback_cancel>
#stoptype

#callback_t cb_cef_quota_callback_cont,    Ptr <cef_quota_callback_t> -> <int> -> IO <void>
#callback_t cb_cef_quota_callback_cancel,  Ptr <cef_quota_callback_t> -> IO <void>



#starttype cef_allow_certificate_error_callback_t
#field base,    <cef_base_t>
#field cont,    <cb_cef_allow_certificate_error_callback_cont>
#stoptype

#callback_t cb_cef_allow_certificate_error_callback_cont,    Ptr <cef_allow_certificate_error_callback_t> -> <int> -> IO <void>

