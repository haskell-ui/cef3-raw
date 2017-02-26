#include <bindings.dsl.h>
#include <cef_client_capi.h>
module Bindings.CEF3.Client
 (module Bindings.CEF3.Client) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.ContextMenuHandler
import Bindings.CEF3.DialogHandler
import Bindings.CEF3.DisplayHandler
import Bindings.CEF3.DownloadHandler
import Bindings.CEF3.DragHandler
import Bindings.CEF3.FocusHandler
import Bindings.CEF3.GeolocationHandler
import Bindings.CEF3.JsdialogHandler
import Bindings.CEF3.KeyboardHandler
import Bindings.CEF3.LifeSpanHandler
import Bindings.CEF3.LoadHandler
import Bindings.CEF3.ProcessMessage
import Bindings.CEF3.RenderHandler
import Bindings.CEF3.RequestHandler

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

