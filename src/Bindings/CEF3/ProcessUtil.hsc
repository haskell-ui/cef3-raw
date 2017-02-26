#include <bindings.dsl.h>
#include <cef_process_util_capi.h>
module Bindings.CEF3.ProcessUtil
 (module Bindings.CEF3.ProcessUtil) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Internal.CefTypes
import Bindings.CEF3.Base
import Bindings.CEF3.CommandLine

#ccall cef_launch_process, Ptr <cef_command_line_t> -> IO <int>

