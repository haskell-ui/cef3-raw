#include <bindings.dsl.h>

module Bindings.Synonyms (module Bindings.Synonyms) where
#strict_import

-- Haskell type defines
#synonym_t int,     CInt
#synonym_t size_t,  CSize
#synonym_t void,    ()
#synonym_t string,  CString
#synonym_t double,  CDouble
#synonym_t time_t,  CTime

