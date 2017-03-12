
#include <bindings.dsl.h>
#include "include/internal/cef_types_win.h"
#include "include/internal/cef_build.h"
#include <windows.h>
#include "include/internal/cef_string.h"
module Bindings.CEF3.Internal.CefTypesWin where
import Foreign.Ptr
import Bindings.CEF3.Internal.CefString
import System.Win32.Types
import Graphics.Win32.GDI.Types
#strict_import

{- typedef struct _cef_main_args_t {
        HINSTANCE instance;
   } cef_main_args_t; -}
#starttype cef_main_args_t
#field instance , HINSTANCE
#stoptype

#opaque_t MSG

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
#field ex_style, DWORD
#field window_name, <cef_string_utf16_t>
#field style, DWORD
#field x, CInt
#field y, CInt
#field width, CInt
#field height, CInt
#field parent_window, <cef_window_handle_t>
#field menu, HMENU
#field window_rendering_disabled, BOOL
#field transparent_painting, BOOL
#field window, <cef_window_handle_t>
#stoptype
