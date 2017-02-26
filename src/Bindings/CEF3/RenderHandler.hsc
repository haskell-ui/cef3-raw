#include <bindings.dsl.h>
#include <cef_render_handler_capi.h>
module Bindings.CEF3.RenderHandler
 (module Bindings.CEF3.RenderHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser

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

