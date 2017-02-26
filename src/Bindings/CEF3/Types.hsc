
#include <bindings.dsl.h>
#include <cef_browser_capi.h>
module Bindings.CEF3.Types
 (module Bindings.CEF3.Types) where
#strict_import
import Bindings.Synonyms

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

