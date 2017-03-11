
#include <bindings.dsl.h>
#include "include/internal/cef_types_win.h"
#include "include/internal/cef_build.h"
#include <windows.h>
#include "include/internal/cef_string.h"
module Bindings.CEF3.Internal.CefTypesWin where
import Foreign.Ptr
#strict_import

#opaque_t HINSTANCE
#synonym_t cef_instance_handle_t, HINSTANCE

{- typedef struct _cef_main_args_t {
        HINSTANCE instance;
   } cef_main_args_t; -}
#starttype cef_main_args_t
#field instance , cef_instance_handle_t
#stoptype

#opaque_t HMENU
#synonym_t cef_menu_handle_t, HMENU

#opaque_t HCURSOR
#opaque_t MSG
#opaque_t HWND

#synonym_t cef_cursor_handle_t, HCURSOR
#synonym_t cef_event_handle_t,  Ptr <MSG>
#synonym_t cef_window_handle_t, HWND
#synonym_t cef_text_input_context_t, Ptr ()

{- typedef struct _cef_window_info_t {
  DWORD ex_style;
  cef_string_t window_name;
  DWORD style;
  int x;
  int y;
  int width;
  int height;
  cef_window_handle_t parent_window;
  HMENU menu;
  BOOL window_rendering_disabled;
  BOOL transparent_painting;
  cef_window_handle_t window;
} cef_window_info_t; -}

#starttype cef_window_info_t
#field ex_style, CInt
#field window_name, cef_string_t
#field style, CInt
#field x, CInt
#field y, CInt
#field width, CInt
#field height, CInt
#field parent_window, cef_window_handle_t
#field menu, cef_menu_handle_t
#field window_rendering_disabled, CInt
#field transparent_painting, CInt
#field window, cef_window_handle_t
#stoptype
