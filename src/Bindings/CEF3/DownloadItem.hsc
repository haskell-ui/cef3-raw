#include <bindings.dsl.h>
#include <cef_download_item_capi.h>
module Bindings.CEF3.DownloadItem
 (module Bindings.CEF3.DownloadItem) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Internal.CefTime
import Bindings.CEF3.Base

#starttype cef_download_item_t
#field base,                    <cef_base_t>
#field is_valid,                <cb_cef_download_item_is_valid>
#field is_in_progress,          <cb_cef_download_item_is_in_progress>
#field is_complete,             <cb_cef_download_item_is_complete>
#field is_canceled,             <cb_cef_download_item_is_canceled>
#field get_current_speed,       <cb_cef_download_item_get_current_speed>
#field get_percent_complete,    <cb_cef_download_item_get_percent_complete>
#field get_total_bytes,         <cb_cef_download_item_get_total_bytes>
#field get_received_bytes,      <cb_cef_download_item_get_received_bytes>
#field get_start_time,          FunPtr (Ptr <cef_download_item_t> -> IO <cef_time_t>)
#field get_end_time,            FunPtr (Ptr <cef_download_item_t> -> IO <cef_time_t>)
#field get_full_path,           <cb_cef_download_item_get_full_path>
#field get_id,                  <cb_cef_download_item_get_id>
#field get_url,                 <cb_cef_download_item_get_url>
#field get_suggested_file_name, <cb_cef_download_item_get_suggested_file_name>
#field get_content_disposition, <cb_cef_download_item_get_content_disposition>
#field get_mime_type,           <cb_cef_download_item_get_mime_type>
#stoptype

#callback_t cb_cef_download_item_is_valid,                Ptr <cef_download_item_t> -> IO <int>
#callback_t cb_cef_download_item_is_in_progress,          Ptr <cef_download_item_t> -> IO <int>
#callback_t cb_cef_download_item_is_complete,             Ptr <cef_download_item_t> -> IO <int>
#callback_t cb_cef_download_item_is_canceled,             Ptr <cef_download_item_t> -> IO <int>
#callback_t cb_cef_download_item_get_current_speed,       Ptr <cef_download_item_t> -> IO <int64>
#callback_t cb_cef_download_item_get_percent_complete,    Ptr <cef_download_item_t> -> IO <int>
#callback_t cb_cef_download_item_get_total_bytes,         Ptr <cef_download_item_t> -> IO <int64>
#callback_t cb_cef_download_item_get_received_bytes,      Ptr <cef_download_item_t> -> IO <int64>
#callback_t cb_cef_download_item_get_full_path,           Ptr <cef_download_item_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_download_item_get_id,                  Ptr <cef_download_item_t> -> IO <uint32>
#callback_t cb_cef_download_item_get_url,                 Ptr <cef_download_item_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_download_item_get_suggested_file_name, Ptr <cef_download_item_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_download_item_get_content_disposition, Ptr <cef_download_item_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_download_item_get_mime_type,           Ptr <cef_download_item_t> -> IO <cef_string_userfree_t>

