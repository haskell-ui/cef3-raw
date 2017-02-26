#include <bindings.dsl.h>
#include <cef_urlrequest_capi.h>
module Bindings.CEF3.Urlrequest
 (module Bindings.CEF3.Urlrequest) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.AuthCallback
import Bindings.CEF3.Base
import Bindings.CEF3.Request
import Bindings.CEF3.Response

#starttype cef_urlrequest_t
#field base,                <cef_base_t>
#field get_request,         <cb_cef_urlrequest_get_request>
#field get_client,          <cb_cef_urlrequest_get_client>
#field get_request_status,  <cb_cef_urlrequest_get_request_status>
#field get_request_error,   <cb_cef_urlrequest_get_request_error>
#field get_response,        <cb_cef_urlrequest_get_response>
#field cancel,              <cb_cef_urlrequest_cancel>
#stoptype

#callback_t cb_cef_urlrequest_get_request,         Ptr <cef_urlrequest_t> -> IO (Ptr <cef_request_t>)
#callback_t cb_cef_urlrequest_get_client,          Ptr <cef_urlrequest_t> -> IO (Ptr <cef_urlrequest_client_t>)
#callback_t cb_cef_urlrequest_get_request_status,  Ptr <cef_urlrequest_t> -> IO <cef_urlrequest_status_t>
#callback_t cb_cef_urlrequest_get_request_error,   Ptr <cef_urlrequest_t> -> IO <cef_errorcode_t>
#callback_t cb_cef_urlrequest_get_response,        Ptr <cef_urlrequest_t> -> IO (Ptr <cef_response_t>)
#callback_t cb_cef_urlrequest_cancel,              Ptr <cef_urlrequest_t> -> IO <void>


#starttype cef_urlrequest_client_t
#field base,                  <cef_base_t>
#field on_request_complete,   <cb_cef_urlrequest_client_on_request_complete>
#field on_upload_progress,    <cb_cef_urlrequest_client_on_upload_progress>
#field on_download_progress,  <cb_cef_urlrequest_client_on_download_progress>
#field on_download_data,      <cb_cef_urlrequest_client_on_download_data>
#field get_auth_credentials,  <cb_cef_urlrequest_client_get_auth_credentials>
#stoptype

#callback_t cb_cef_urlrequest_client_on_request_complete,   Ptr <cef_urlrequest_client_t> -> Ptr <cef_urlrequest_t> -> IO <void>
#callback_t cb_cef_urlrequest_client_on_upload_progress,    Ptr <cef_urlrequest_client_t> -> Ptr <cef_urlrequest_t> -> <uint64> -> <uint64> -> IO <void>
#callback_t cb_cef_urlrequest_client_on_download_progress,  Ptr <cef_urlrequest_client_t> -> Ptr <cef_urlrequest_t> -> <uint64> -> <uint64> -> IO <void>
#callback_t cb_cef_urlrequest_client_on_download_data,      Ptr <cef_urlrequest_client_t> -> Ptr <cef_urlrequest_t> -> Ptr <void> -> <size_t> -> IO <void>
#callback_t cb_cef_urlrequest_client_get_auth_credentials,  Ptr <cef_urlrequest_client_t> -> <int> -> Ptr <cef_string_t> -> <int> -> Ptr <cef_string_t> -> Ptr <cef_string_t> -> Ptr <cef_auth_callback_t> -> IO <int>


#ccall cef_urlrequest_create, Ptr <cef_request_t> -> Ptr <cef_urlrequest_client_t> -> IO (Ptr <cef_urlrequest_t>)

