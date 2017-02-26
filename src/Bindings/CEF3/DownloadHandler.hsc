#include <bindings.dsl.h>
#include <cef_download_handler_capi.h>
module Bindings.CEF3.DownloadHandler
 (module Bindings.CEF3.DownloadHandler) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Browser
import Bindings.CEF3.DownloadItem

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

