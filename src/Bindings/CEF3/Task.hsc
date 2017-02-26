#include <bindings.dsl.h>
#include <cef_task_capi.h>
module Bindings.CEF3.Task
 (module Bindings.CEF3.Task) where
#strict_import
import Bindings.Synonyms
import Bindings.CEF3.Base
import Bindings.CEF3.Internal.CefTypes

#starttype cef_task_t
#field base,    <cef_base_t>
#field execute, <cb_cef_task_execute>
#stoptype

#callback_t cb_cef_task_execute, Ptr <cef_task_t> -> IO <void>


#starttype cef_task_runner_t
#field base,                      <cef_base_t>
#field is_same,                   <cb_cef_task_runner_is_same>
#field belongs_to_current_thread, <cb_cef_task_runner_belongs_to_current_thread>
#field belongs_to_thread,         <cb_cef_task_runner_belongs_to_thread>
#field post_task,                 <cb_cef_task_runner_post_task>
#field post_delayed_task,         <cb_cef_task_runner_post_delayed_task>
#stoptype

#callback_t cb_cef_task_runner_is_same,                   Ptr <cef_task_runner_t> -> Ptr <cef_task_runner_t> -> IO <int>
#callback_t cb_cef_task_runner_belongs_to_current_thread, Ptr <cef_task_runner_t> -> IO <int>
#callback_t cb_cef_task_runner_belongs_to_thread,         Ptr <cef_task_runner_t> -> <cef_thread_id_t> -> IO <int>
#callback_t cb_cef_task_runner_post_task,                 Ptr <cef_task_runner_t> -> Ptr <cef_task_t> -> IO <int>
#callback_t cb_cef_task_runner_post_delayed_task,         Ptr <cef_task_runner_t> -> Ptr <cef_task_t> -> <int64> -> IO <int>


#ccall cef_task_runner_get_for_current_thread,  IO (Ptr <cef_task_runner_t>)
#ccall cef_task_runner_get_for_thread,          IO (Ptr <cef_task_runner_t>)
#ccall cef_currently_on,                        <cef_thread_id_t> -> IO <int>
#ccall cef_post_task,                           <cef_thread_id_t> -> Ptr <cef_task_t> -> IO <int>
#ccall cef_post_delayed_task,                   <cef_thread_id_t> -> Ptr <cef_task_t> -> <int64> -> IO <int>

