cmake_minimum_required(VERSION 3.13)
project(lib-python-mingw64)

set(CMAKE_VERBOSE_MAKEFILE OFF)

set(major-version 3)
set(minor-version 9)

# start here

set(lib-name "python${major-version}${minor-version}")
set(dll-name "python${major-version}.dll")

set(pwd "${CMAKE_CURRENT_LIST_DIR}")
set(python-path "${pwd}/python")
set(zlib-path "${pwd}/zlib")

list(APPEND src
    "${python-path}/Modules/_abc.c"
    "${python-path}/Modules/_bisectmodule.c"
    "${python-path}/Modules/_blake2/blake2module.c"
    "${python-path}/Modules/_blake2/blake2b_impl.c"
    "${python-path}/Modules/_blake2/blake2s_impl.c"
    "${python-path}/Modules/_codecsmodule.c"
    "${python-path}/Modules/_collectionsmodule.c"
    "${python-path}/Modules/_contextvarsmodule.c"
    "${python-path}/Modules/_csv.c"
    "${python-path}/Modules/_functoolsmodule.c"
    "${python-path}/Modules/_heapqmodule.c"
    "${python-path}/Modules/_json.c"
    "${python-path}/Modules/_localemodule.c"
    "${python-path}/Modules/_lsprof.c"
    "${python-path}/Modules/_math.c"
    "${python-path}/Modules/_pickle.c"
    "${python-path}/Modules/_randommodule.c"
    "${python-path}/Modules/_sha3/sha3module.c"
    "${python-path}/Modules/_sre.c"
    "${python-path}/Modules/_stat.c"
    "${python-path}/Modules/_struct.c"
    "${python-path}/Modules/_weakref.c"
    "${python-path}/Modules/arraymodule.c"
    "${python-path}/Modules/atexitmodule.c"
    "${python-path}/Modules/audioop.c"
    "${python-path}/Modules/binascii.c"
    "${python-path}/Modules/cmathmodule.c"
    "${python-path}/Modules/_datetimemodule.c"
    "${python-path}/Modules/errnomodule.c"
    "${python-path}/Modules/faulthandler.c"
    "${python-path}/Modules/gcmodule.c"
    "${python-path}/Modules/itertoolsmodule.c"
    "${python-path}/Modules/main.c"
    "${python-path}/Modules/mathmodule.c"
    "${python-path}/Modules/md5module.c"
    "${python-path}/Modules/mmapmodule.c"
    "${python-path}/Modules/_opcode.c"
    "${python-path}/Modules/_operator.c"
    "${python-path}/Modules/parsermodule.c"
    "${python-path}/Modules/_peg_parser.c"
    "${python-path}/Modules/posixmodule.c"
    "${python-path}/Modules/rotatingtree.c"
    "${python-path}/Modules/sha1module.c"
    "${python-path}/Modules/sha256module.c"
    "${python-path}/Modules/sha512module.c"
    "${python-path}/Modules/signalmodule.c"
    "${python-path}/Modules/_statisticsmodule.c"
    "${python-path}/Modules/symtablemodule.c"
    "${python-path}/Modules/_threadmodule.c"
    "${python-path}/Modules/_tracemalloc.c"
    "${python-path}/Modules/timemodule.c"
    "${python-path}/Modules/xxsubtype.c"
    "${python-path}/Modules/_xxsubinterpretersmodule.c"
    "${python-path}/Modules/_io/fileio.c"
    "${python-path}/Modules/_io/bytesio.c"
    "${python-path}/Modules/_io/stringio.c"
    "${python-path}/Modules/_io/bufferedio.c"
    "${python-path}/Modules/_io/iobase.c"
    "${python-path}/Modules/_io/textio.c"
    "${python-path}/Modules/_io/winconsoleio.c"
    "${python-path}/Modules/_io/_iomodule.c"
    "${python-path}/Modules/cjkcodecs/_codecs_cn.c"
    "${python-path}/Modules/cjkcodecs/_codecs_hk.c"
    "${python-path}/Modules/cjkcodecs/_codecs_iso2022.c"
    "${python-path}/Modules/cjkcodecs/_codecs_jp.c"
    "${python-path}/Modules/cjkcodecs/_codecs_kr.c"
    "${python-path}/Modules/cjkcodecs/_codecs_tw.c"
    "${python-path}/Modules/cjkcodecs/multibytecodec.c"
    "${python-path}/Modules/_winapi.c"
    "${python-path}/Objects/abstract.c"
    "${python-path}/Objects/accu.c"
    "${python-path}/Objects/boolobject.c"
    "${python-path}/Objects/bytearrayobject.c"
    "${python-path}/Objects/bytes_methods.c"
    "${python-path}/Objects/bytesobject.c"
    "${python-path}/Objects/call.c"
    "${python-path}/Objects/capsule.c"
    "${python-path}/Objects/cellobject.c"
    "${python-path}/Objects/classobject.c"
    "${python-path}/Objects/codeobject.c"
    "${python-path}/Objects/complexobject.c"
    "${python-path}/Objects/descrobject.c"
    "${python-path}/Objects/dictobject.c"
    "${python-path}/Objects/enumobject.c"
    "${python-path}/Objects/exceptions.c"
    "${python-path}/Objects/fileobject.c"
    "${python-path}/Objects/floatobject.c"
    "${python-path}/Objects/frameobject.c"
    "${python-path}/Objects/funcobject.c"
    "${python-path}/Objects/genericaliasobject.c"
    "${python-path}/Objects/genobject.c"
    "${python-path}/Objects/interpreteridobject.c"
    "${python-path}/Objects/iterobject.c"
    "${python-path}/Objects/listobject.c"
    "${python-path}/Objects/longobject.c"
    "${python-path}/Objects/memoryobject.c"
    "${python-path}/Objects/methodobject.c"
    "${python-path}/Objects/moduleobject.c"
    "${python-path}/Objects/namespaceobject.c"
    "${python-path}/Objects/object.c"
    "${python-path}/Objects/obmalloc.c"
    "${python-path}/Objects/odictobject.c"
    "${python-path}/Objects/picklebufobject.c"
    "${python-path}/Objects/rangeobject.c"
    "${python-path}/Objects/setobject.c"
    "${python-path}/Objects/sliceobject.c"
    "${python-path}/Objects/structseq.c"
    "${python-path}/Objects/tupleobject.c"
    "${python-path}/Objects/typeobject.c"
    "${python-path}/Objects/unicodectype.c"
    "${python-path}/Objects/unicodeobject.c"
    "${python-path}/Objects/weakrefobject.c"
    "${python-path}/Parser/acceler.c"
    "${python-path}/Parser/grammar1.c"
    "${python-path}/Parser/listnode.c"
    "${python-path}/Parser/myreadline.c"
    "${python-path}/Parser/node.c"
    "${python-path}/Parser/parser.c"
    "${python-path}/Parser/parsetok.c"
    "${python-path}/Parser/tokenizer.c"
    "${python-path}/Parser/token.c"
    "${python-path}/Parser/pegen/pegen.c"
    "${python-path}/Parser/pegen/parse.c"
    "${python-path}/Parser/pegen/parse_string.c"
    "${python-path}/Parser/pegen/peg_api.c"
    "${python-path}/PC/invalid_parameter_handler.c"
    "${python-path}/PC/winreg.c"
    "${python-path}/PC/config.c"
    "${python-path}/PC/getpathp.c"
    "${python-path}/PC/msvcrtmodule.c"
    "${python-path}/Python/pyhash.c"
    "${python-path}/Python/_warnings.c"
    "${python-path}/Python/asdl.c"
    "${python-path}/Python/ast.c"
    "${python-path}/Python/ast_opt.c"
    "${python-path}/Python/ast_unparse.c"
    "${python-path}/Python/bltinmodule.c"
    "${python-path}/Python/bootstrap_hash.c"
    "${python-path}/Python/ceval.c"
    "${python-path}/Python/codecs.c"
    "${python-path}/Python/compile.c"
    "${python-path}/Python/context.c"
    "${python-path}/Python/dynamic_annotations.c"
    "${python-path}/Python/dynload_win.c"
    "${python-path}/Python/errors.c"
    "${python-path}/Python/fileutils.c"
    "${python-path}/Python/formatter_unicode.c"
    "${python-path}/Python/frozen.c"
    "${python-path}/Python/future.c"
    "${python-path}/Python/getargs.c"
    "${python-path}/Python/getcompiler.c"
    "${python-path}/Python/getcopyright.c"
    "${python-path}/Python/getopt.c"
    "${python-path}/Python/getplatform.c"
    "${python-path}/Python/getversion.c"
    "${python-path}/Python/graminit.c"
    "${python-path}/Python/hamt.c"
    "${python-path}/Python/hashtable.c"
    "${python-path}/Python/import.c"
    "${python-path}/Python/importdl.c"
    "${python-path}/Python/initconfig.c"
    "${python-path}/Python/marshal.c"
    "${python-path}/Python/modsupport.c"
    "${python-path}/Python/mysnprintf.c"
    "${python-path}/Python/mystrtoul.c"
    "${python-path}/Python/pathconfig.c"
    "${python-path}/Python/peephole.c"
    "${python-path}/Python/preconfig.c"
    "${python-path}/Python/pyarena.c"
    "${python-path}/Python/pyctype.c"
    "${python-path}/Python/pyfpe.c"
    "${python-path}/Python/pylifecycle.c"
    "${python-path}/Python/pymath.c"
    "${python-path}/Python/pytime.c"
    "${python-path}/Python/pystate.c"
    "${python-path}/Python/pystrcmp.c"
    "${python-path}/Python/pystrhex.c"
    "${python-path}/Python/pystrtod.c"
    "${python-path}/Python/dtoa.c"
    "${python-path}/Python/Python-ast.c"
    "${python-path}/Python/pythonrun.c"
    "${python-path}/Python/structmember.c"
    "${python-path}/Python/symtable.c"
    "${python-path}/Python/sysmodule.c"
    "${python-path}/Python/thread.c"
    "${python-path}/Python/traceback.c"
    "${python-path}/Modules/zlibmodule.c"
    "${zlib-path}/adler32.c"
    "${zlib-path}/compress.c"
    "${zlib-path}/crc32.c"
    "${zlib-path}/deflate.c"
    "${zlib-path}/infback.c"
    "${zlib-path}/inffast.c"
    "${zlib-path}/inflate.c"
    "${zlib-path}/inftrees.c"
    "${zlib-path}/trees.c"
    "${zlib-path}/uncompr.c"
    "${zlib-path}/zutil.c"
    "${python-path}/PC/dl_nt.c"
    "${python-path}/Modules/getbuildinfo.c"
)

add_library(${lib-name} SHARED ${src})
set_target_properties(${lib-name} PROPERTIES PREFIX "")

target_include_directories(${lib-name} PUBLIC
    "${python-path}/include"
    "${python-path}/include/internal"
    "${python-path}/include/cpython"
    "${python-path}/PC"
    "${zlib-path}"
)

target_compile_definitions(${lib-name} PUBLIC
    _Py_HAVE_ZLIB
    Py_BUILD_CORE
    Py_BUILD_CORE_BUILTIN
    Py_ENABLE_SHARED
    _WIN32_WINNT=0x0602
    MS_WIN64
    "PY3_DLLNAME=L\"${dll-name}\""
    "MS_DLL_ID=\"Win10\""
)
target_compile_options(${lib-name} PUBLIC "-fno-keep-inline-dllexport" "-fexceptions" "-mthreads")

target_link_options(${lib-name} PUBLIC "-Wl,--exclude-all-symbols")
target_link_libraries(${lib-name} PUBLIC "-L${CMAKE_CURRENT_BINARY_DIR}" -lversion -lshlwapi -lws2_32 -lpathcch)

add_custom_target(pathcch ALL
    COMMAND dlltool "-d" "${pwd}/pathcch.def" "-l" "${CMAKE_CURRENT_BINARY_DIR}/libpathcch.a"
)
add_dependencies("${lib-name}" pathcch)

list(APPEND patch-list
    "${pwd}/posixmodule.awk" "${python-path}/Modules/posixmodule.c"
)

find_program(gawk-app gawk REQUIRED PATHS "${SEARCH_PATH}")
while(1)
    list(LENGTH patch-list has-item)
    if (NOT ${has-item})
        break()
    endif()
    list(POP_FRONT patch-list awk-file)
    list(POP_FRONT patch-list patch-file)
    string(REGEX REPLACE "[^A-Za-z0-9]" "-" target-name "${awk-file}")
    add_custom_target("${target-name}" ALL
        COMMAND ${gawk-app} "-f" "${awk-file}" "${patch-file}" ">" "${awk-file}-tmp"
        COMMAND ${CMAKE_COMMAND} -E rename "${awk-file}-tmp" "${patch-file}"
    )
    add_dependencies("${lib-name}" "${target-name}")
endwhile()
