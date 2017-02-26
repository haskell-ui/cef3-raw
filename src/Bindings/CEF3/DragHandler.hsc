#include <bindings.dsl.h>
#include <cef_drag_handler_capi.h>
module Bindings.CEF3.DragHandler
 (module Bindings.CEF3.DragHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.DragData

#starttype cef_drag_handler_t
#field base,          <cef_base_t>
#field on_drag_enter, <cb_cef_drag_handler_on_drag_enter>
#stoptype

#callback_t cb_cef_drag_handler_on_drag_enter, Ptr <cef_drag_handler_t> -> Ptr <cef_browser_t> -> Ptr <cef_drag_data_t> -> <cef_drag_operations_mask_t> -> IO <int>

