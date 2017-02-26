#include <bindings.dsl.h>
#include <cef_zip_reader_capi.h>
module Bindings.CEF3.ZipReader
 (module Bindings.CEF3.ZipReader) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.Stream

#starttype cef_zip_reader_t
#field base,                    <cef_base_t>
#field move_to_first_file,      <cb_cef_zip_reader_move_to_first_file>
#field move_to_next_file,       <cb_cef_zip_reader_move_to_next_file>
#field move_to_file,            <cb_cef_zip_reader_move_to_file>
#field close,                   <cb_cef_zip_reader_close>
#field get_file_name,           <cb_cef_zip_reader_get_file_name>
#field get_file_size,           <cb_cef_zip_reader_get_file_size>
#field get_file_last_modified,  <cb_cef_zip_reader_get_file_last_modified>
#field open_file,               <cb_cef_zip_reader_open_file>
#field close_file,              <cb_cef_zip_reader_close_file>
#field read_file,               <cb_cef_zip_reader_read_file>
#field tell,                    <cb_cef_zip_reader_tell>
#field eof,                     <cb_cef_zip_reader_eof>
#stoptype

#callback_t cb_cef_zip_reader_move_to_first_file,      Ptr <cef_zip_reader_t> -> IO <int>
#callback_t cb_cef_zip_reader_move_to_next_file,       Ptr <cef_zip_reader_t> -> IO <int>
#callback_t cb_cef_zip_reader_move_to_file,            Ptr <cef_zip_reader_t> -> Ptr <cef_string_t> -> <int> -> IO <int>
#callback_t cb_cef_zip_reader_close,                   Ptr <cef_zip_reader_t> -> IO <int>
#callback_t cb_cef_zip_reader_get_file_name,           Ptr <cef_zip_reader_t> -> IO <cef_string_userfree_t>
#callback_t cb_cef_zip_reader_get_file_size,           Ptr <cef_zip_reader_t> -> IO <int64>
#callback_t cb_cef_zip_reader_get_file_last_modified,  Ptr <cef_zip_reader_t> -> IO <time_t>
#callback_t cb_cef_zip_reader_open_file,               Ptr <cef_zip_reader_t> -> Ptr <cef_string_t> -> IO <int>
#callback_t cb_cef_zip_reader_close_file,              Ptr <cef_zip_reader_t> -> IO <int>
#callback_t cb_cef_zip_reader_read_file,               Ptr <cef_zip_reader_t> -> Ptr <void> -> <size_t> -> IO <int>
#callback_t cb_cef_zip_reader_tell,                    Ptr <cef_zip_reader_t> -> IO <int64>
#callback_t cb_cef_zip_reader_eof,                     Ptr <cef_zip_reader_t> -> IO <int>


#ccall cef_zip_reader_create,   Ptr <cef_stream_reader_t> -> IO (Ptr <cef_zip_reader_t>)

