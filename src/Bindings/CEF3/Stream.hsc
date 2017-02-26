#include <bindings.dsl.h>
#include <cef_stream_capi.h>
module Bindings.CEF3.Stream
 (module Bindings.CEF3.Stream) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefString
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base

#starttype cef_read_handler_t
#field base,      <cef_base_t>
#field read,      <cb_cef_read_handler_read>
#field seek,      <cb_cef_read_handler_seek>
#field tell,      <cb_cef_read_handler_tell>
#field eof,       <cb_cef_read_handler_eof>
#field may_block, <cb_cef_read_handler_may_block>
#stoptype

#callback_t cb_cef_read_handler_read,      Ptr <cef_read_handler_t> -> Ptr <void> -> <size_t> -> <size_t> -> IO <size_t>
#callback_t cb_cef_read_handler_seek,      Ptr <cef_read_handler_t> -> <int64> -> <int> -> IO <int>
#callback_t cb_cef_read_handler_tell,      Ptr <cef_read_handler_t> -> IO <int64>
#callback_t cb_cef_read_handler_eof,       Ptr <cef_read_handler_t> -> IO <int>
#callback_t cb_cef_read_handler_may_block, Ptr <cef_read_handler_t> -> IO <int>


#starttype cef_stream_reader_t
#field base,      <cef_base_t>
#field read,      <cb_cef_stream_reader_read>
#field seek,      <cb_cef_stream_reader_seek>
#field tell,      <cb_cef_stream_reader_tell>
#field eof,       <cb_cef_stream_reader_eof>
#field may_block, <cb_cef_stream_reader_may_block>
#stoptype

#callback_t cb_cef_stream_reader_read,      Ptr <cef_stream_reader_t> -> Ptr <void> -> <size_t> -> <size_t> -> IO <size_t>
#callback_t cb_cef_stream_reader_seek,      Ptr <cef_stream_reader_t> -> <int64> -> <int> -> IO <int>
#callback_t cb_cef_stream_reader_tell,      Ptr <cef_stream_reader_t> -> IO <int64>
#callback_t cb_cef_stream_reader_eof,       Ptr <cef_stream_reader_t> -> IO <int>
#callback_t cb_cef_stream_reader_may_block, Ptr <cef_stream_reader_t> -> IO <int>


#starttype cef_write_handler_t
#field base,      <cef_base_t>
#field write,     <cb_cef_write_handler_write>
#field seek,      <cb_cef_write_handler_seek>
#field tell,      <cb_cef_write_handler_tell>
#field flush,     <cb_cef_write_handler_flush>
#field may_block, <cb_cef_write_handler_may_block>
#stoptype

#callback_t cb_cef_write_handler_write,     Ptr <cef_write_handler_t> -> Ptr <void> -> <size_t> -> <size_t> -> IO <size_t>
#callback_t cb_cef_write_handler_seek,      Ptr <cef_write_handler_t> -> <int64> -> <int> -> IO <int>
#callback_t cb_cef_write_handler_tell,      Ptr <cef_write_handler_t> -> IO <int64>
#callback_t cb_cef_write_handler_flush,     Ptr <cef_write_handler_t> -> IO <int>
#callback_t cb_cef_write_handler_may_block, Ptr <cef_write_handler_t> -> IO <int>


#starttype cef_stream_writer_t
#field base,      <cef_base_t>
#field write,     <cb_cef_stream_writer_write>
#field seek,      <cb_cef_stream_writer_seek>
#field tell,      <cb_cef_stream_writer_tell>
#field flush,     <cb_cef_stream_writer_flush>
#field may_block, <cb_cef_stream_writer_may_block>
#stoptype

#callback_t cb_cef_stream_writer_write,     Ptr <cef_stream_writer_t> -> Ptr <void> -> <size_t> -> <size_t> -> IO <size_t>
#callback_t cb_cef_stream_writer_seek,      Ptr <cef_stream_writer_t> -> <int64> -> <int> -> IO <int>
#callback_t cb_cef_stream_writer_tell,      Ptr <cef_stream_writer_t> -> IO <int64>
#callback_t cb_cef_stream_writer_flush,     Ptr <cef_stream_writer_t> -> IO <int>
#callback_t cb_cef_stream_writer_may_block, Ptr <cef_stream_writer_t> -> IO <int>


#ccall cef_stream_reader_create_for_file,     Ptr <cef_string_t> -> IO (Ptr <cef_stream_reader_t>)
#ccall cef_stream_reader_create_for_data,     Ptr <void> -> <size_t> -> IO (Ptr <cef_stream_reader_t>)
#ccall cef_stream_reader_create_for_handler,  Ptr <cef_read_handler_t> -> IO (Ptr <cef_stream_reader_t>)

#ccall cef_stream_writer_create_for_file,     Ptr <cef_string_t> -> IO (Ptr <cef_stream_writer_t>)
#ccall cef_stream_writer_create_for_handler,  Ptr <cef_write_handler_t> -> IO (Ptr <cef_stream_writer_t>)

