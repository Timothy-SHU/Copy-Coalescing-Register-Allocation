; ModuleID = 'simulator/fileoutscalarmgr.cc'
source_filename = "simulator/fileoutscalarmgr.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cFileOutputScalarManager = type <{ %class.cOutputScalarManager, %struct.sRunData, %class.opp_string, ptr, i32, [4 x i8] }>
%class.cOutputScalarManager = type { %class.cObject }
%class.cObject = type { ptr }
%struct.sRunData = type { i8, %class.opp_string, %class.opp_string_map, %class.opp_string_map }
%class.opp_string_map = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.opp_string = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::pair" = type { %class.opp_string, %class.opp_string }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.0" = type { i8 }
%struct._Guard = type { ptr }

$_ZN20cOutputScalarManagerC2Ev = comdat any

$_ZN8sRunDataC2Ev = comdat any

$_ZN10opp_stringC2Ev = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_ZN8sRunDataD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK10opp_string5c_strEv = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZN10opp_stringC2ERKS_ = comdat any

$_ZNKSt6vectorIPKcSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIPKcSaIS1_EEixEm = comdat any

$_ZNSt6vectorIPKcSaIS1_EED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv = comdat any

$_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_ = comdat any

$_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEppEi = comdat any

$_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZN7cObjectC2Ev = comdat any

$_ZN20cOutputScalarManagerD0Ev = comdat any

$_ZN14opp_string_mapC2Ev = comdat any

$_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEED2Ev = comdat any

$_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEEC2Ev = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EEC2Ev = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessI10opp_stringEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEED2Ev = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE7destroyIS4_EEvRS6_PT_ = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE7destroyIS4_EEvPT_ = comdat any

$_ZNSt4pairIK10opp_stringS0_ED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE10deallocateEPS5_m = comdat any

$_ZNKSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE9_M_mbeginEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_Z10opp_strdupPKc = comdat any

$_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPPKcEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIPKcED2Ev = comdat any

$_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE5beginEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE3endEv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTS20cOutputScalarManager = comdat any

$_ZTI20cOutputScalarManager = comdat any

$_ZTV20cOutputScalarManager = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_OUTPUT_SCALAR_FILE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_42E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUT_SCALAR_PRECISION = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_43E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUT_SCALAR_FILE_APPEND = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_44E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SCALAR_RECORDING = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_46E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_48E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV24cFileOutputScalarManager = dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTI24cFileOutputScalarManager, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN24cFileOutputScalarManagerD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN24cFileOutputScalarManager6endRunEv, ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN24cFileOutputScalarManager15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map, ptr @_ZNK24cFileOutputScalarManager11getFileNameEv, ptr @_ZN24cFileOutputScalarManager5flushEv] }, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Cannot open output scalar file `%s'\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTI6cEnvir = external constant ptr
@_ZTI9EnvirBase = external constant ptr
@.str.7 = private unnamed_addr constant [23 x i8] c"old output scalar file\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"version %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Cannot write output scalar file `%s'\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"scalar . \09%s \09%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"scalar . \09%s \09%.*g\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"attr unit  %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"(unnamed)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"scalar %s \09%s \09%.*g\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"attr %s  %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"statistic %s \09%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"weightedSum\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"sqrSumWeights\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"weightedSqrSum\00", align 1
@_ZTI10cStatistic = external constant ptr
@_ZTI15cDensityEstBase = external constant ptr
@.str.23 = private unnamed_addr constant [11 x i8] c":histogram\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"bin\09-INF\09%lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"bin\09%.*g\09%.*g\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"bin\09%.*g\09%lu\0A\00", align 1
@_ZTS24cFileOutputScalarManager = dso_local constant [27 x i8] c"24cFileOutputScalarManager\00", align 1
@_ZTS20cOutputScalarManager = linkonce_odr dso_local constant [23 x i8] c"20cOutputScalarManager\00", comdat, align 1
@_ZTI7cObject = external constant ptr
@_ZTI20cOutputScalarManager = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20cOutputScalarManager, ptr @_ZTI7cObject }, comdat, align 8
@_ZTI24cFileOutputScalarManager = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24cFileOutputScalarManager, ptr @_ZTI20cOutputScalarManager }, align 8
@configOptions = external global %class.cGlobalRegistrationList, align 8
@.str.27 = private unnamed_addr constant [19 x i8] c"output-scalar-file\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"${resultdir}/${configname}-${runnumber}.sca\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Name for the output scalar file.\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"output-scalar-precision\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.32 = private unnamed_addr constant [131 x i8] c"The number of significant digits for recording data into the output scalar file. The maximum value is ~15 (IEEE double precision).\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"output-scalar-file-append\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.35 = private unnamed_addr constant [137 x i8] c"What to do when the output scalar file already exists: append to it (OMNeT++ 3.x behavior), or delete it and begin a new file (default).\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"scalar-recording\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.38 = private unnamed_addr constant [181 x i8] c"Whether the matching output scalars should be recorded. Syntax: <module-full-path>.<scalar-name>.scalar-recording=true/false. Example: **.queue.packetsDropped.scalar-recording=true\00", align 1
@classes = external global %class.cGlobalRegistrationList, align 8
@_ZTV20cOutputScalarManager = linkonce_odr dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTI20cOutputScalarManager, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN20cOutputScalarManagerD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV7cObject = external unnamed_addr constant { [21 x ptr] }, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"field %s %.*g\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_fileoutscalarmgr.cc, ptr null }]

@_ZN24cFileOutputScalarManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24cFileOutputScalarManagerC2Ev
@_ZN24cFileOutputScalarManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24cFileOutputScalarManagerD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_42Ev) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_42Ev() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !173 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #21
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.27, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #21
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_FILE, align 8, !tbaa !174
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #21
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_43Ev) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_43Ev() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !180 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #21
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.30, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #21
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_PRECISION, align 8, !tbaa !174
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #21
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_44E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_44Ev) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_44E, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_44Ev() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !181 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #21
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.33, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #21
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_FILE_APPEND, align 8, !tbaa !174
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #21
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !182 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #21
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.36, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #21
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !174
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #21
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_48E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_48Ev) #21
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_48E, ptr nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_48Ev() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !183 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #21
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI24cFileOutputScalarManager) #21
          to label %4 unwind label %9

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_48v, ptr noundef null) #21
          to label %5 unwind label %9

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !178
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #21
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  tail call void @_ZN20cOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV24cFileOutputScalarManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !178
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  invoke void @_ZN8sRunDataC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
          to label %3 unwind label %20

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %5 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  store ptr null, ptr %5, align 8, !tbaa !184
  %6 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds ptr, ptr %7, i64 31
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(288) %6) #21
          to label %11 unwind label %22

11:                                               ; preds = %3
  %12 = load ptr, ptr @CFGID_OUTPUT_SCALAR_PRECISION, align 8, !tbaa !174
  %13 = load ptr, ptr %10, align 8, !tbaa !178
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i64 %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12, i64 noundef 0) #21
          to label %17 unwind label %22

17:                                               ; preds = %11
  %18 = trunc i64 %16 to i32
  %19 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  store i32 %18, ptr %19, align 8, !tbaa !202
  ret void

20:                                               ; preds = %1
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %11, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  tail call void @_ZN8sRunDataD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #25
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN20cOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !172 {
  tail call void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV20cOutputScalarManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN8sRunDataC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  store i8 0, ptr %0, align 8, !tbaa !204
  %2 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  %3 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 2
  tail call void @_ZN14opp_string_mapC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #21
  %4 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 3
  tail call void @_ZN14opp_string_mapC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !205 {
  store ptr null, ptr %0, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !207 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !174
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8sRunDataD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 3
  tail call void @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  %3 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 2
  tail call void @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #25
  %4 = getelementptr inbounds %struct.sRunData, ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV24cFileOutputScalarManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !178
  tail call void @_ZN24cFileOutputScalarManager9closeFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %3 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  tail call void @_ZN8sRunDataD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #25
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager9closeFileEv(ptr nocapture noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #6 align 2 !prof !209 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !210

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #21
  store ptr null, ptr %2, align 8, !tbaa !184
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN24cFileOutputScalarManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager8openFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %4) #21
  %5 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  invoke void @_Z6mkPathPKc(ptr noundef %5) #21
          to label %6 unwind label %15

6:                                                ; preds = %1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  %7 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %8 = call noalias ptr @fopen(ptr noundef %7, ptr noundef nonnull @.str) #21
  %9 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !184
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %19, !prof !211

11:                                               ; preds = %6
  %12 = call ptr @__cxa_allocate_exception(i64 128) #22
  %13 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull @.str.6, ptr noundef %13) #21
          to label %14 unwind label %17

14:                                               ; preds = %11
  call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

15:                                               ; preds = %1
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  br label %20

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %12) #22
  br label %20

19:                                               ; preds = %6
  ret void

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_Z6mkPathPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: optsize
declare void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !212 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.39, ptr %2, !prof !213
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager8startRunEv(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @_ZN24cFileOutputScalarManager9closeFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds ptr, ptr %4, i64 31
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(288) %3) #21
  %8 = load ptr, ptr @CFGID_OUTPUT_SCALAR_FILE, align 8, !tbaa !174
  %9 = load ptr, ptr %7, align 8, !tbaa !178
  %10 = getelementptr inbounds ptr, ptr %9, i64 29
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8) #21
  %12 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  %13 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %14 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12) #21
          to label %15 unwind label %32

15:                                               ; preds = %1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  %16 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %17 = icmp ne ptr %16, null
  call void @llvm.assume(i1 %17)
  %18 = call ptr @__dynamic_cast(ptr nonnull %16, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #22
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = getelementptr inbounds ptr, ptr %19, i64 68
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull align 8 dereferenceable(600) %18, ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  %22 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %23 = load ptr, ptr %22, align 8, !tbaa !178
  %24 = getelementptr inbounds ptr, ptr %23, i64 31
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(288) %22) #21
  %27 = load ptr, ptr @CFGID_OUTPUT_SCALAR_FILE_APPEND, align 8, !tbaa !174
  %28 = load ptr, ptr %26, align 8, !tbaa !178
  %29 = getelementptr inbounds ptr, ptr %28, i64 25
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %27, i1 noundef zeroext false) #21
  br i1 %31, label %36, label %34, !prof !211

32:                                               ; preds = %1
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  resume { ptr, i32 } %33

34:                                               ; preds = %15
  %35 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  call void @_Z10removeFilePKcS0_(ptr noundef %35, ptr noundef nonnull @.str.7) #21
  br label %36

36:                                               ; preds = %34, %15
  %37 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  call void @_ZN8sRunData5resetEv(ptr noundef nonnull align 8 dereferenceable(112) %37) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !214 {
  %3 = load ptr, ptr %0, align 8, !tbaa !206
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %3) #24
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !206
  ret ptr %7
}

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_Z10removeFilePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8sRunData5resetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #6 align 2 !prof !172 {
  tail call void @_ZN24cFileOutputScalarManager9closeFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %2 = alloca %class.opp_string, align 8
  %3 = alloca %"class.std::vector", align 8
  %4 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %20, !prof !215

7:                                                ; preds = %1
  tail call void @_ZN24cFileOutputScalarManager8openFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  %8 = load ptr, ptr %4, align 8, !tbaa !184
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10, !prof !211

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.8, i32 noundef 2) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20, !prof !211

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #22
  %15 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %16 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.9, ptr noundef %16) #21
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #22
  br label %68

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !216, !range !217, !noundef !218
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %67, !prof !215

24:                                               ; preds = %20
  tail call void @_ZN8sRunData7initRunEv(ptr noundef nonnull align 8 dereferenceable(112) %21) #21
  %25 = load ptr, ptr %4, align 8, !tbaa !184
  %26 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  call void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %26) #21
  invoke void @_ZN8sRunData12writeRunDataEP8_IO_FILE10opp_string(ptr noundef nonnull align 8 dereferenceable(112) %21, ptr noundef %25, ptr noundef nonnull %2) #21
          to label %27 unwind label %40

27:                                               ; preds = %24
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %28 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = getelementptr inbounds ptr, ptr %29, i64 32
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(288) %28) #21
  %33 = load ptr, ptr %32, align 8, !tbaa !178
  %34 = getelementptr inbounds ptr, ptr %33, i64 52
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %32) #21
  %36 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %42, label %39, !prof !219

39:                                               ; preds = %59, %27
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %67

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %68

42:                                               ; preds = %27, %59
  %43 = phi i64 [ %60, %59 ], [ 0, %27 ]
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %43) #25
  %45 = load ptr, ptr %44, align 8, !tbaa !174
  %46 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %47 = load ptr, ptr %46, align 8, !tbaa !178
  %48 = getelementptr inbounds ptr, ptr %47, i64 32
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(288) %46) #21
          to label %51 unwind label %65

51:                                               ; preds = %42
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %43) #25
  %53 = load ptr, ptr %52, align 8, !tbaa !174
  %54 = load ptr, ptr %50, align 8, !tbaa !178
  %55 = getelementptr inbounds ptr, ptr %54, i64 51
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %53) #21
          to label %58 unwind label %65

58:                                               ; preds = %51
  invoke void @_ZN24cFileOutputScalarManager30recordNumericIterationVariableEPKcS1_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %45, ptr noundef %57) #21
          to label %59 unwind label %65

59:                                               ; preds = %58
  %60 = add nuw nsw i64 %43, 1
  %61 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %42, label %39, !prof !220, !llvm.loop !221

65:                                               ; preds = %58, %51, %42
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %68

67:                                               ; preds = %7, %39, %20
  ret void

68:                                               ; preds = %65, %40, %18
  %69 = phi { ptr, i32 } [ %66, %65 ], [ %41, %40 ], [ %19, %18 ]
  resume { ptr, i32 } %69
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN8sRunData7initRunEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8sRunData12writeRunDataEP8_IO_FILE10opp_string(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !223 {
  %3 = load ptr, ptr %1, align 8, !tbaa !206
  %4 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %3) #21
  store ptr %4, ptr %0, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !224 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = load ptr, ptr %0, align 8, !tbaa !227
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !228 {
  %3 = load ptr, ptr %0, align 8, !tbaa !227
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager30recordNumericIterationVariableEPKcS1_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %7 = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.10) #25
  %8 = call double @strtod(ptr noundef %2, ptr noundef nonnull %4) #25
  %9 = load ptr, ptr %4, align 8, !tbaa !174
  %10 = load i8, ptr %9, align 1, !tbaa !230
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %2) #21
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %12
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #22
  %19 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %20 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.9, ptr noundef %20) #21
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  tail call void @__cxa_free_exception(ptr %18) #22
  br label %98

26:                                               ; preds = %3
  %27 = icmp eq ptr %9, %2
  br i1 %27, label %97, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  %29 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5) #21
          to label %38 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %32 = extractvalue { ptr, i32 } %31, 0
  %33 = extractvalue { ptr, i32 } %31, 1
  %34 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #22
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %30
  %37 = call ptr @__cxa_begin_catch(ptr %32) #22
  invoke void @__cxa_end_catch()
          to label %93 unwind label %49

38:                                               ; preds = %28
  %39 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !184
  %41 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !202
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef %42, double noundef %29) #21
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = call ptr @__cxa_allocate_exception(i64 128) #22
  %47 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %48 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %47) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %46, ptr noundef nonnull @.str.9, ptr noundef %48) #21
          to label %82 unwind label %57

49:                                               ; preds = %36
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = extractvalue { ptr, i32 } %50, 1
  br label %94

53:                                               ; preds = %82, %63
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = extractvalue { ptr, i32 } %54, 0
  %56 = extractvalue { ptr, i32 } %54, 1
  br label %94

57:                                               ; preds = %45
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = extractvalue { ptr, i32 } %58, 0
  %60 = extractvalue { ptr, i32 } %58, 1
  call void @__cxa_free_exception(ptr %46) #22
  br label %94

61:                                               ; preds = %38
  %62 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  br i1 %62, label %93, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %39, align 8, !tbaa !184
  %65 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  %66 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %65) #21
          to label %67 unwind label %53

67:                                               ; preds = %63
  br i1 %66, label %68, label %70

68:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  %69 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %69) #21
          to label %74 unwind label %85

70:                                               ; preds = %67
  %71 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.13, ptr noundef %71) #21
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %78, label %93

74:                                               ; preds = %68
  %75 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.13, ptr noundef %75) #21
  %77 = icmp slt i32 %76, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  br i1 %77, label %78, label %93

78:                                               ; preds = %70, %74
  %79 = call ptr @__cxa_allocate_exception(i64 128) #22
  %80 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %81 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %80) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %79, ptr noundef nonnull @.str.9, ptr noundef %81) #21
          to label %82 unwind label %89

82:                                               ; preds = %45, %78
  %83 = phi ptr [ %79, %78 ], [ %46, %45 ]
  invoke void @__cxa_throw(ptr nonnull %83, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
          to label %84 unwind label %53

84:                                               ; preds = %82
  unreachable

85:                                               ; preds = %68
  %86 = landingpad { ptr, i32 }
          cleanup
  %87 = extractvalue { ptr, i32 } %86, 1
  %88 = extractvalue { ptr, i32 } %86, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  br label %94

89:                                               ; preds = %78
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = extractvalue { ptr, i32 } %90, 0
  %92 = extractvalue { ptr, i32 } %90, 1
  call void @__cxa_free_exception(ptr %79) #22
  br label %94

93:                                               ; preds = %70, %36, %61, %74
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  br label %97

94:                                               ; preds = %85, %89, %57, %53, %49, %30
  %95 = phi i32 [ %56, %53 ], [ %60, %57 ], [ %92, %89 ], [ %87, %85 ], [ %52, %49 ], [ %33, %30 ]
  %96 = phi ptr [ %55, %53 ], [ %59, %57 ], [ %91, %89 ], [ %88, %85 ], [ %51, %49 ], [ %32, %30 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  br label %98

97:                                               ; preds = %26, %93, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void

98:                                               ; preds = %94, %22
  %99 = phi i32 [ %25, %22 ], [ %95, %94 ]
  %100 = phi ptr [ %24, %22 ], [ %96, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %101 = insertvalue { ptr, i32 } poison, ptr %100, 0
  %102 = insertvalue { ptr, i32 } %101, i32 %99, 1
  resume { ptr, i32 } %102
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  invoke void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #21
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #26
  unreachable
}

; Function Attrs: nounwind optsize
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !232 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %15 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !216, !range !217, !noundef !218
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22, !prof !233

21:                                               ; preds = %5
  tail call void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  br label %22

22:                                               ; preds = %21, %5
  %23 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !184
  %25 = icmp eq ptr %24, null
  br i1 %25, label %194, label %26, !prof !234

26:                                               ; preds = %22
  %27 = icmp eq ptr %2, null
  br i1 %27, label %31, label %28, !prof !234

28:                                               ; preds = %26
  %29 = load i8, ptr %2, align 1, !tbaa !230
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32, !prof !234

31:                                               ; preds = %28, %26
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi ptr [ %2, %28 ], [ @.str.14, %31 ]
  %34 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  %36 = getelementptr inbounds ptr, ptr %35, i64 31
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(288) %34) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  %39 = load ptr, ptr %1, align 8, !tbaa !178
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.15) #21
          to label %42 unwind label %95

42:                                               ; preds = %32
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %33) #21
          to label %43 unwind label %97

43:                                               ; preds = %42
  %44 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  %45 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !174
  %46 = load ptr, ptr %38, align 8, !tbaa !178
  %47 = getelementptr inbounds ptr, ptr %46, i64 33
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef zeroext i1 %48(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %44, ptr noundef %45, i1 noundef zeroext false) #21
          to label %50 unwind label %99

50:                                               ; preds = %43
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  br i1 %49, label %51, label %194, !prof !235

51:                                               ; preds = %50
  %52 = load ptr, ptr %23, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %53 = load ptr, ptr %1, align 8, !tbaa !178
  %54 = getelementptr inbounds ptr, ptr %53, i64 8
  %55 = load ptr, ptr %54, align 8
  call void %55(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  %56 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  %57 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %56) #21
          to label %58 unwind label %105

58:                                               ; preds = %51
  br i1 %57, label %59, label %65, !prof !234

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %60 = load ptr, ptr %1, align 8, !tbaa !178
  %61 = getelementptr inbounds ptr, ptr %60, i64 8
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %63 unwind label %107

63:                                               ; preds = %59
  %64 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %64) #21
          to label %69 unwind label %109

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #22
  %66 = load ptr, ptr %1, align 8, !tbaa !178
  %67 = getelementptr inbounds ptr, ptr %66, i64 8
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %69 unwind label %111

69:                                               ; preds = %65, %63
  %70 = phi ptr [ %10, %63 ], [ %12, %65 ]
  %71 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %70) #25
  %72 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %33) #21
          to label %73 unwind label %113

73:                                               ; preds = %69
  br i1 %72, label %74, label %75, !prof !236

74:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #22
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %33) #21
          to label %79 unwind label %115

75:                                               ; preds = %73
  %76 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !202
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.16, ptr noundef %71, ptr noundef nonnull %33, i32 noundef %77, double noundef %3) #21
  br label %84

79:                                               ; preds = %74
  %80 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #25
  %81 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !202
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.16, ptr noundef %71, ptr noundef %80, i32 noundef %82, double noundef %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #22
  br label %84

84:                                               ; preds = %75, %79
  %85 = phi i32 [ %78, %75 ], [ %83, %79 ]
  %86 = icmp slt i32 %85, 0
  br i1 %57, label %88, label %87

87:                                               ; preds = %84
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %89

88:                                               ; preds = %84
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #22
  br label %89

89:                                               ; preds = %87, %88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br i1 %86, label %90, label %131, !prof !234

90:                                               ; preds = %89
  %91 = call ptr @__cxa_allocate_exception(i64 128) #22
  %92 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %93 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %91, ptr noundef nonnull @.str.9, ptr noundef %93) #21
          to label %94 unwind label %129

94:                                               ; preds = %90
  call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

95:                                               ; preds = %32
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %103

97:                                               ; preds = %42
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %101

99:                                               ; preds = %43
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %98, %97 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %96, %95 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  br label %195

105:                                              ; preds = %51
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %127

107:                                              ; preds = %59
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %125

109:                                              ; preds = %63
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %121

111:                                              ; preds = %65
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %123

113:                                              ; preds = %69
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %117

115:                                              ; preds = %74
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #22
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  br i1 %57, label %120, label %119

119:                                              ; preds = %117
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #25
  br label %123

120:                                              ; preds = %117
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #25
  br label %121

121:                                              ; preds = %120, %109
  %122 = phi { ptr, i32 } [ %110, %109 ], [ %118, %120 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  br label %125

123:                                              ; preds = %111, %119
  %124 = phi { ptr, i32 } [ %112, %111 ], [ %118, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %127

125:                                              ; preds = %121, %107
  %126 = phi { ptr, i32 } [ %108, %107 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #22
  br label %127

127:                                              ; preds = %123, %125, %105
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %106, %105 ], [ %124, %123 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br label %195

129:                                              ; preds = %90
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %91) #22
  br label %195

131:                                              ; preds = %89
  %132 = icmp eq ptr %4, null
  br i1 %132, label %194, label %133, !prof !235

133:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  %134 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %134, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  %135 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %135, ptr %15, align 8
  %136 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br i1 %136, label %138, label %137

137:                                              ; preds = %188, %133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  br label %194

138:                                              ; preds = %133, %188
  %139 = load ptr, ptr %23, align 8, !tbaa !184
  %140 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %141 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %140) #21
  %142 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %141) #21
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #22
  %144 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %145 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %144) #21
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %145) #21
  %146 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  br label %150

147:                                              ; preds = %138
  %148 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %149 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %148) #21
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi ptr [ %146, %143 ], [ %149, %147 ]
  %152 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %153 = getelementptr inbounds %"struct.std::pair", ptr %152, i64 0, i32 1
  %154 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %153) #21
  %155 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %154) #21
          to label %156 unwind label %179

156:                                              ; preds = %150
  br i1 %155, label %157, label %161

157:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #22
  %158 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %159 = getelementptr inbounds %"struct.std::pair", ptr %158, i64 0, i32 1
  %160 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %159) #21
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %160) #21
          to label %166 unwind label %181

161:                                              ; preds = %156
  %162 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %163 = getelementptr inbounds %"struct.std::pair", ptr %162, i64 0, i32 1
  %164 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %163) #21
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.17, ptr noundef %151, ptr noundef %164) #21
  br label %169

166:                                              ; preds = %157
  %167 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #25
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.17, ptr noundef %151, ptr noundef %167) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #22
  br label %169

169:                                              ; preds = %161, %166
  %170 = phi i32 [ %165, %161 ], [ %168, %166 ]
  %171 = icmp slt i32 %170, 0
  br i1 %142, label %172, label %173

172:                                              ; preds = %169
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #22
  br label %173

173:                                              ; preds = %169, %172
  br i1 %171, label %174, label %188

174:                                              ; preds = %173
  %175 = call ptr @__cxa_allocate_exception(i64 128) #22
  %176 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %177 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %176) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %175, ptr noundef nonnull @.str.9, ptr noundef %177) #21
          to label %178 unwind label %186

178:                                              ; preds = %174
  call void @__cxa_throw(ptr nonnull %175, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

179:                                              ; preds = %150
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %183

181:                                              ; preds = %157
  %182 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #22
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi { ptr, i32 } [ %182, %181 ], [ %180, %179 ]
  br i1 %142, label %185, label %192

185:                                              ; preds = %183
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #22
  br label %192

186:                                              ; preds = %174
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %175) #22
  br label %192

188:                                              ; preds = %173
  %189 = call ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEppEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  %190 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %190, ptr %15, align 8
  %191 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br i1 %191, label %138, label %137, !llvm.loop !237

192:                                              ; preds = %183, %185, %186
  %193 = phi { ptr, i32 } [ %187, %186 ], [ %184, %185 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  br label %195

194:                                              ; preds = %50, %137, %131, %22
  ret void

195:                                              ; preds = %192, %129, %127, %103
  %196 = phi { ptr, i32 } [ %130, %129 ], [ %193, %192 ], [ %128, %127 ], [ %104, %103 ]
  resume { ptr, i32 } %196
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !238 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !203 {
  %2 = tail call ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !229 {
  %3 = load ptr, ptr %0, align 8, !tbaa !239
  %4 = load ptr, ptr %1, align 8, !tbaa !239
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !241 {
  %2 = tail call ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEppEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !229 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %3) #28
  store ptr %4, ptr %0, align 8, !tbaa !239
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %15 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !216, !range !217, !noundef !218
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  tail call void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0) #21
  br label %23

23:                                               ; preds = %22, %5
  %24 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = icmp eq ptr %25, null
  br i1 %26, label %351, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load ptr, ptr %3, align 8, !tbaa !178
  %31 = getelementptr inbounds ptr, ptr %30, i64 7
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27, %29
  %36 = phi ptr [ %33, %29 ], [ %2, %27 ]
  %37 = load i8, ptr %36, align 1, !tbaa !230
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi ptr [ %36, %35 ], [ @.str.14, %39 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  %42 = load ptr, ptr %1, align 8, !tbaa !178
  %43 = getelementptr inbounds ptr, ptr %42, i64 8
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.15) #21
          to label %45 unwind label %60

45:                                               ; preds = %40
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %41) #21
          to label %46 unwind label %62

46:                                               ; preds = %45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  %47 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = getelementptr inbounds ptr, ptr %48, i64 31
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(288) %47) #21
          to label %52 unwind label %66

52:                                               ; preds = %46
  %53 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  %54 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !174
  %55 = load ptr, ptr %51, align 8, !tbaa !178
  %56 = getelementptr inbounds ptr, ptr %55, i64 33
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef zeroext i1 %57(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %53, ptr noundef %54, i1 noundef zeroext false) #21
          to label %59 unwind label %66

59:                                               ; preds = %52
  br i1 %58, label %68, label %350

60:                                               ; preds = %40
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %45
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  br label %354

66:                                               ; preds = %168, %163, %162, %157, %156, %151, %150, %145, %139, %108, %52, %46
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %352

68:                                               ; preds = %59
  %69 = load ptr, ptr %24, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %70 = load ptr, ptr %1, align 8, !tbaa !178
  %71 = getelementptr inbounds ptr, ptr %70, i64 8
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %73 unwind label %109

73:                                               ; preds = %68
  %74 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  %75 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %74) #21
          to label %76 unwind label %111

76:                                               ; preds = %73
  br i1 %75, label %77, label %83

77:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %78 = load ptr, ptr %1, align 8, !tbaa !178
  %79 = getelementptr inbounds ptr, ptr %78, i64 8
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %81 unwind label %113

81:                                               ; preds = %77
  %82 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %82) #21
          to label %87 unwind label %115

83:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #22
  %84 = load ptr, ptr %1, align 8, !tbaa !178
  %85 = getelementptr inbounds ptr, ptr %84, i64 8
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %87 unwind label %117

87:                                               ; preds = %83, %81
  %88 = phi ptr [ %10, %81 ], [ %12, %83 ]
  %89 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %88) #25
  %90 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %41) #21
          to label %91 unwind label %119

91:                                               ; preds = %87
  br i1 %90, label %92, label %93

92:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #22
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %41) #21
          to label %95 unwind label %121

93:                                               ; preds = %91
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.18, ptr noundef %89, ptr noundef nonnull %41) #21
  br label %98

95:                                               ; preds = %92
  %96 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #25
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.18, ptr noundef %89, ptr noundef %96) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #22
  br label %98

98:                                               ; preds = %93, %95
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  %100 = icmp slt i32 %99, 0
  br i1 %75, label %102, label %101

101:                                              ; preds = %98
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %103

102:                                              ; preds = %98
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #22
  br label %103

103:                                              ; preds = %101, %102
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br i1 %100, label %104, label %139

104:                                              ; preds = %103
  %105 = call ptr @__cxa_allocate_exception(i64 128) #22
  %106 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %107 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %106) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %105, ptr noundef nonnull @.str.9, ptr noundef %107) #21
          to label %108 unwind label %137

108:                                              ; preds = %104
  invoke void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
          to label %356 unwind label %66

109:                                              ; preds = %68
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %135

111:                                              ; preds = %73
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %133

113:                                              ; preds = %77
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %131

115:                                              ; preds = %81
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %127

117:                                              ; preds = %83
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %129

119:                                              ; preds = %87
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %92
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #22
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  br i1 %75, label %126, label %125

125:                                              ; preds = %123
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #25
  br label %129

126:                                              ; preds = %123
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #25
  br label %127

127:                                              ; preds = %126, %115
  %128 = phi { ptr, i32 } [ %116, %115 ], [ %124, %126 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #25
  br label %131

129:                                              ; preds = %117, %125
  %130 = phi { ptr, i32 } [ %118, %117 ], [ %124, %125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %133

131:                                              ; preds = %127, %113
  %132 = phi { ptr, i32 } [ %114, %113 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #22
  br label %133

133:                                              ; preds = %129, %131, %111
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %112, %111 ], [ %130, %129 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #25
  br label %135

135:                                              ; preds = %133, %109
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br label %352

137:                                              ; preds = %104
  %138 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %105) #22
  br label %352

139:                                              ; preds = %103
  %140 = load ptr, ptr %3, align 8, !tbaa !178
  %141 = getelementptr inbounds ptr, ptr %140, i64 27
  %142 = load ptr, ptr %141, align 8
  %143 = invoke noundef zeroext i1 %142(ptr noundef nonnull align 8 dereferenceable(60) %3) #21
          to label %144 unwind label %66

144:                                              ; preds = %139
  br i1 %143, label %145, label %169

145:                                              ; preds = %144
  %146 = load ptr, ptr %3, align 8, !tbaa !178
  %147 = getelementptr inbounds ptr, ptr %146, i64 39
  %148 = load ptr, ptr %147, align 8
  %149 = invoke noundef double %148(ptr noundef nonnull align 8 dereferenceable(60) %3) #21
          to label %150 unwind label %66

150:                                              ; preds = %145
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.19, double noundef %149) #21
          to label %151 unwind label %66

151:                                              ; preds = %150
  %152 = load ptr, ptr %3, align 8, !tbaa !178
  %153 = getelementptr inbounds ptr, ptr %152, i64 40
  %154 = load ptr, ptr %153, align 8
  %155 = invoke noundef double %154(ptr noundef nonnull align 8 dereferenceable(60) %3) #21
          to label %156 unwind label %66

156:                                              ; preds = %151
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.20, double noundef %155) #21
          to label %157 unwind label %66

157:                                              ; preds = %156
  %158 = load ptr, ptr %3, align 8, !tbaa !178
  %159 = getelementptr inbounds ptr, ptr %158, i64 41
  %160 = load ptr, ptr %159, align 8
  %161 = invoke noundef double %160(ptr noundef nonnull align 8 dereferenceable(60) %3) #21
          to label %162 unwind label %66

162:                                              ; preds = %157
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.21, double noundef %161) #21
          to label %163 unwind label %66

163:                                              ; preds = %162
  %164 = load ptr, ptr %3, align 8, !tbaa !178
  %165 = getelementptr inbounds ptr, ptr %164, i64 42
  %166 = load ptr, ptr %165, align 8
  %167 = invoke noundef double %166(ptr noundef nonnull align 8 dereferenceable(60) %3) #21
          to label %168 unwind label %66

168:                                              ; preds = %163
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.22, double noundef %167) #21
          to label %169 unwind label %66

169:                                              ; preds = %168, %144
  %170 = icmp eq ptr %4, null
  br i1 %170, label %242, label %171

171:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  %172 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %172, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  %173 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %173, ptr %15, align 8
  %174 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br i1 %174, label %176, label %175

175:                                              ; preds = %236, %171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  br label %242

176:                                              ; preds = %171, %236
  %177 = load ptr, ptr %24, align 8, !tbaa !184
  %178 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %179 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %178) #21
  %180 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %179) #21
          to label %181 unwind label %219

181:                                              ; preds = %176
  br i1 %180, label %182, label %187

182:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #22
  %183 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %184 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %183) #21
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %184) #21
          to label %185 unwind label %223

185:                                              ; preds = %182
  %186 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  br label %190

187:                                              ; preds = %181
  %188 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %189 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %188) #21
  br label %190

190:                                              ; preds = %187, %185
  %191 = phi ptr [ %186, %185 ], [ %189, %187 ]
  %192 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %193 = getelementptr inbounds %"struct.std::pair", ptr %192, i64 0, i32 1
  %194 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %193) #21
  %195 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %194) #21
          to label %196 unwind label %225

196:                                              ; preds = %190
  br i1 %195, label %197, label %201

197:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #22
  %198 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %199 = getelementptr inbounds %"struct.std::pair", ptr %198, i64 0, i32 1
  %200 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %199) #21
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %200) #21
          to label %206 unwind label %227

201:                                              ; preds = %196
  %202 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #25
  %203 = getelementptr inbounds %"struct.std::pair", ptr %202, i64 0, i32 1
  %204 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %203) #21
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.17, ptr noundef %191, ptr noundef %204) #21
  br label %209

206:                                              ; preds = %197
  %207 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #25
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.17, ptr noundef %191, ptr noundef %207) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #22
  br label %209

209:                                              ; preds = %201, %206
  %210 = phi i32 [ %205, %201 ], [ %208, %206 ]
  %211 = icmp slt i32 %210, 0
  br i1 %180, label %212, label %213

212:                                              ; preds = %209
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #22
  br label %213

213:                                              ; preds = %209, %212
  br i1 %211, label %214, label %236

214:                                              ; preds = %213
  %215 = call ptr @__cxa_allocate_exception(i64 128) #22
  %216 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %217 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %216) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %215, ptr noundef nonnull @.str.9, ptr noundef %217) #21
          to label %218 unwind label %234

218:                                              ; preds = %214
  invoke void @__cxa_throw(ptr nonnull %215, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
          to label %356 unwind label %221

219:                                              ; preds = %176
  %220 = landingpad { ptr, i32 }
          cleanup
  br label %240

221:                                              ; preds = %218
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %240

223:                                              ; preds = %182
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %232

225:                                              ; preds = %190
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %229

227:                                              ; preds = %197
  %228 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #22
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi { ptr, i32 } [ %228, %227 ], [ %226, %225 ]
  br i1 %180, label %231, label %240

231:                                              ; preds = %229
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #25
  br label %232

232:                                              ; preds = %231, %223
  %233 = phi { ptr, i32 } [ %224, %223 ], [ %230, %231 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #22
  br label %240

234:                                              ; preds = %214
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %215) #22
  br label %240

236:                                              ; preds = %213
  %237 = call ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEppEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  %238 = call ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  store ptr %238, ptr %15, align 8
  %239 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br i1 %239, label %176, label %175, !llvm.loop !242

240:                                              ; preds = %219, %221, %229, %232, %234
  %241 = phi { ptr, i32 } [ %235, %234 ], [ %233, %232 ], [ %230, %229 ], [ %220, %219 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  br label %352

242:                                              ; preds = %169, %175
  %243 = call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI10cStatistic, ptr nonnull @_ZTI15cDensityEstBase, i64 0) #22
  %244 = icmp eq ptr %243, null
  br i1 %244, label %350, label %245

245:                                              ; preds = %242
  %246 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #21
  %247 = load ptr, ptr %246, align 8, !tbaa !178
  %248 = getelementptr inbounds ptr, ptr %247, i64 31
  %249 = load ptr, ptr %248, align 8
  %250 = invoke noundef ptr %249(ptr noundef nonnull align 8 dereferenceable(288) %246) #21
          to label %251 unwind label %282

251:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.23) #21
          to label %252 unwind label %284

252:                                              ; preds = %251
  %253 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #25
  %254 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !174
  %255 = load ptr, ptr %250, align 8, !tbaa !178
  %256 = getelementptr inbounds ptr, ptr %255, i64 33
  %257 = load ptr, ptr %256, align 8
  %258 = invoke noundef zeroext i1 %257(ptr noundef nonnull align 8 dereferenceable(8) %250, ptr noundef %253, ptr noundef %254, i1 noundef zeroext false) #21
          to label %259 unwind label %286

259:                                              ; preds = %252
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #22
  br i1 %258, label %260, label %350

260:                                              ; preds = %259
  %261 = load ptr, ptr %3, align 8, !tbaa !178
  %262 = getelementptr inbounds ptr, ptr %261, i64 59
  %263 = load ptr, ptr %262, align 8
  %264 = invoke noundef i32 %263(ptr noundef nonnull align 8 dereferenceable(168) %3) #21
          to label %265 unwind label %290

265:                                              ; preds = %260
  %266 = icmp sgt i32 %264, 0
  br i1 %266, label %267, label %350

267:                                              ; preds = %265
  %268 = load ptr, ptr %24, align 8, !tbaa !184
  %269 = load ptr, ptr %3, align 8, !tbaa !178
  %270 = getelementptr inbounds ptr, ptr %269, i64 63
  %271 = load ptr, ptr %270, align 8
  %272 = invoke noundef i64 %271(ptr noundef nonnull align 8 dereferenceable(168) %3) #21
          to label %273 unwind label %290

273:                                              ; preds = %267
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef nonnull @.str.24, i64 noundef %272) #21
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  br label %305

278:                                              ; preds = %273
  %279 = call ptr @__cxa_allocate_exception(i64 128) #22
  %280 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %281 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %280) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %279, ptr noundef nonnull @.str.9, ptr noundef %281) #21
          to label %345 unwind label %292

282:                                              ; preds = %245
  %283 = landingpad { ptr, i32 }
          cleanup
  br label %352

284:                                              ; preds = %251
  %285 = landingpad { ptr, i32 }
          cleanup
  br label %288

286:                                              ; preds = %252
  %287 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #25
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi { ptr, i32 } [ %287, %286 ], [ %285, %284 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #22
  br label %352

290:                                              ; preds = %345, %333, %297, %267, %260
  %291 = landingpad { ptr, i32 }
          cleanup
  br label %352

292:                                              ; preds = %278
  %293 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %279) #22
  br label %352

294:                                              ; preds = %319
  %295 = add nuw nsw i32 %306, 1
  %296 = icmp eq i32 %295, %264
  br i1 %296, label %297, label %305, !llvm.loop !243

297:                                              ; preds = %294
  %298 = load ptr, ptr %24, align 8, !tbaa !184
  %299 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %300 = load i32, ptr %299, align 8, !tbaa !202
  %301 = load ptr, ptr %3, align 8, !tbaa !178
  %302 = getelementptr inbounds ptr, ptr %301, i64 60
  %303 = load ptr, ptr %302, align 8
  %304 = invoke noundef double %303(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %264) #21
          to label %333 unwind label %290

305:                                              ; preds = %276, %294
  %306 = phi i32 [ 0, %276 ], [ %295, %294 ]
  %307 = load ptr, ptr %24, align 8, !tbaa !184
  %308 = load i32, ptr %277, align 8, !tbaa !202
  %309 = load ptr, ptr %3, align 8, !tbaa !178
  %310 = getelementptr inbounds ptr, ptr %309, i64 60
  %311 = load ptr, ptr %310, align 8
  %312 = invoke noundef double %311(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %306) #21
          to label %313 unwind label %327

313:                                              ; preds = %305
  %314 = load i32, ptr %277, align 8, !tbaa !202
  %315 = load ptr, ptr %3, align 8, !tbaa !178
  %316 = getelementptr inbounds ptr, ptr %315, i64 61
  %317 = load ptr, ptr %316, align 8
  %318 = invoke noundef double %317(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %306) #21
          to label %319 unwind label %327

319:                                              ; preds = %313
  %320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef nonnull @.str.25, i32 noundef %308, double noundef %312, i32 noundef %314, double noundef %318) #21
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %294

322:                                              ; preds = %319
  %323 = call ptr @__cxa_allocate_exception(i64 128) #22
  %324 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %325 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %324) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %323, ptr noundef nonnull @.str.9, ptr noundef %325) #21
          to label %326 unwind label %331

326:                                              ; preds = %322
  invoke void @__cxa_throw(ptr nonnull %323, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
          to label %356 unwind label %329

327:                                              ; preds = %305, %313
  %328 = landingpad { ptr, i32 }
          cleanup
  br label %352

329:                                              ; preds = %326
  %330 = landingpad { ptr, i32 }
          cleanup
  br label %352

331:                                              ; preds = %322
  %332 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %323) #22
  br label %352

333:                                              ; preds = %297
  %334 = load ptr, ptr %3, align 8, !tbaa !178
  %335 = getelementptr inbounds ptr, ptr %334, i64 64
  %336 = load ptr, ptr %335, align 8
  %337 = invoke noundef i64 %336(ptr noundef nonnull align 8 dereferenceable(168) %3) #21
          to label %338 unwind label %290

338:                                              ; preds = %333
  %339 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef nonnull @.str.26, i32 noundef %300, double noundef %304, i64 noundef %337) #21
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %350

341:                                              ; preds = %338
  %342 = call ptr @__cxa_allocate_exception(i64 128) #22
  %343 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %344 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %343) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %342, ptr noundef nonnull @.str.9, ptr noundef %344) #21
          to label %345 unwind label %348

345:                                              ; preds = %278, %341
  %346 = phi ptr [ %342, %341 ], [ %279, %278 ]
  invoke void @__cxa_throw(ptr nonnull %346, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
          to label %347 unwind label %290

347:                                              ; preds = %345
  unreachable

348:                                              ; preds = %341
  %349 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %342) #22
  br label %352

350:                                              ; preds = %242, %265, %338, %259, %59
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  br label %351

351:                                              ; preds = %23, %350
  ret void

352:                                              ; preds = %327, %329, %282, %288, %331, %348, %292, %290, %240, %137, %135, %66
  %353 = phi { ptr, i32 } [ %67, %66 ], [ %138, %137 ], [ %241, %240 ], [ %136, %135 ], [ %289, %288 ], [ %283, %282 ], [ %291, %290 ], [ %293, %292 ], [ %349, %348 ], [ %332, %331 ], [ %328, %327 ], [ %330, %329 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  br label %354

354:                                              ; preds = %352, %64
  %355 = phi { ptr, i32 } [ %353, %352 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  resume { ptr, i32 } %355

356:                                              ; preds = %326, %218, %108
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %1) #21
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !202
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef %1, i32 noundef %10, double noundef %2) #21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %26

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %1) #21
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  %15 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !202
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef %14, i32 noundef %16, double noundef %2) #21
  %18 = icmp slt i32 %17, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br i1 %18, label %19, label %26

19:                                               ; preds = %8, %13
  %20 = call ptr @__cxa_allocate_exception(i64 128) #22
  %21 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %22 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.9, ptr noundef %22) #21
          to label %23 unwind label %24

23:                                               ; preds = %19
  call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #22
  resume { ptr, i32 } %25

26:                                               ; preds = %8, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !244 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #21
          to label %7 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  resume { ptr, i32 } %6

7:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK24cFileOutputScalarManager11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #5 align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN24cFileOutputScalarManager5flushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(140) %0) unnamed_addr #6 align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fflush(ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  ret ptr @.str.39
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !178
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !246 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_48v() #4 personality ptr @__gxx_personality_v0 !prof !172 !PGOFuncName !247 {
  %1 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN24cFileOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %1) #21
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #24
  resume { ptr, i32 } %4
}

; Function Attrs: optsize
declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !248 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTV7cObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !178
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20cOutputScalarManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #26
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14opp_string_mapC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessI10opp_stringEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessI10opp_stringEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !250 {
  store i32 0, ptr %0, align 8, !tbaa !251
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !252 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !253
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !254
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !255
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !249 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  invoke void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #21
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #26
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !257 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !258

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #25
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #21
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #25
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !259, !llvm.loop !260

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !261 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !262 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !241 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !265 {
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #25
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !265 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #21
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE7destroyIS4_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !265 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #21
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE7destroyIS4_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !265 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !266 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !267 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !265 {
  tail call void @_ZNSt4pairIK10opp_stringS0_ED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIK10opp_stringS0_ED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !267 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !267 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !265 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !172 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !178
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #23
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #21
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !268
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !229 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #21
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.40) #21
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #21
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !273, !range !217, !noundef !218
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !274
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !203 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #21
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #29
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #21
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #21
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !275 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !276 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #21
  store i64 %6, ptr %4, align 8, !tbaa !277
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !278

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #21
  %10 = load i64, ptr %4, align 8, !tbaa !277
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #21
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #21
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #25
  store ptr null, ptr %5, align 8, !tbaa !279
  %15 = load i64, ptr %4, align 8, !tbaa !277
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #21
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !276 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !174
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #21
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !276 {
  store ptr %1, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !279
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !281

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !276 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !276 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !282 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !283

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !230
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !284

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #23
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #25
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !285 {
  tail call void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !286 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !287
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #21
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #26
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !285 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !285 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !289

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #21
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !231 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !290 {
  tail call void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !209 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #25
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !291 {
  store ptr %1, ptr %0, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !241 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #25
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_fileoutscalarmgr.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }
attributes #25 = { nounwind optsize }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!171}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_44Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_44Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_44Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!45 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Znwm, i64 1}
!46 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!47 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_48Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!48 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_48Ev, ptr @_Znwm, i64 1}
!49 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_48Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!50 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_48Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!51 = !{ptr @_ZN24cFileOutputScalarManagerC2Ev, ptr @_ZN20cOutputScalarManagerC2Ev, i64 1}
!52 = !{ptr @_ZN24cFileOutputScalarManagerC2Ev, ptr @_ZN8sRunDataC2Ev, i64 1}
!53 = !{ptr @_ZN24cFileOutputScalarManagerC2Ev, ptr @_ZN10opp_stringC2Ev, i64 1}
!54 = !{ptr @_ZN24cFileOutputScalarManagerC2Ev, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 1}
!55 = !{ptr @_ZN20cOutputScalarManagerC2Ev, ptr @_ZN7cObjectC2Ev, i64 1}
!56 = !{ptr @_ZN8sRunDataC2Ev, ptr @_ZN10opp_stringC2Ev, i64 2}
!57 = !{ptr @_ZN8sRunDataC2Ev, ptr @_ZN14opp_string_mapC2Ev, i64 4}
!58 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!59 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN24cFileOutputScalarManager9closeFileEv, i64 1}
!60 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN10opp_stringD2Ev, i64 1}
!61 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN8sRunDataD2Ev, i64 1}
!62 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN7cObjectD2Ev, i64 1}
!63 = !{ptr @_ZN24cFileOutputScalarManager9closeFileEv, ptr @fclose, i64 1}
!64 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_ZNK10opp_string5c_strEv, i64 2}
!65 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_Z11directoryOfB5cxx11PKc, i64 1}
!66 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!67 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_Z6mkPathPKc, i64 1}
!68 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!69 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @fopen, i64 1}
!70 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN24cFileOutputScalarManager9closeFileEv, i64 1}
!71 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 3}
!72 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!73 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN10opp_stringaSEPKc, i64 1}
!74 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!75 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @__dynamic_cast, i64 1}
!76 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZNK10opp_string5c_strEv, i64 1}
!77 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_Z10removeFilePKcS0_, i64 1}
!78 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN8sRunData5resetEv, i64 1}
!79 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 203513}
!80 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Z10opp_strdupPKc, i64 325620}
!81 = !{ptr @_ZN24cFileOutputScalarManager6endRunEv, ptr @_ZN24cFileOutputScalarManager9closeFileEv, i64 1}
!82 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZN24cFileOutputScalarManager8openFileEv, i64 1}
!83 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @_Z10opp_strdupPKc, i64 40}
!84 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv, i64 70440}
!85 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, i64 70440}
!86 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, i64 70440}
!87 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN24cFileOutputScalarManager4initEv, i64 2}
!88 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 272153}
!89 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, i64 544306}
!90 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1071137}
!91 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1751516}
!92 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_Z15opp_needsquotesPKc, i64 544334}
!93 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_Z12opp_quotestrB5cxx11PKc, i64 254683}
!94 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @fprintf, i64 272167}
!95 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @__cxa_allocate_exception, i64 1}
!96 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNK10opp_string5c_strEv, i64 65}
!97 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!98 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @__cxa_throw, i64 1}
!99 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @__cxa_free_exception, i64 1}
!100 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv, i64 1}
!101 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv, i64 17}
!102 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZStneRKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EES6_, i64 17}
!103 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEptEv, i64 64}
!104 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEppEi, i64 16}
!105 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!106 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!107 = !{ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE5beginEv, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE5beginEv, i64 2}
!108 = !{ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE3endEv, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE3endEv, i64 30}
!109 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 31236}
!110 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 31236}
!111 = !{ptr @_ZL15__uniquename_48v, ptr @_Znwm, i64 1}
!112 = !{ptr @_ZL15__uniquename_48v, ptr @_ZN24cFileOutputScalarManagerC2Ev, i64 1}
!113 = !{ptr @_ZN14opp_string_mapC2Ev, ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEEC2Ev, i64 112698}
!114 = !{ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEED2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev, i64 112698}
!115 = !{ptr @_ZNSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEEC2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EEC2Ev, i64 112698}
!116 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EEC2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, i64 112698}
!117 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EEEC2Ev, i64 112698}
!118 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareISt4lessI10opp_stringEEC2Ev, i64 112698}
!119 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 112698}
!120 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEC2Ev, i64 112698}
!121 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 192152}
!122 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_beginEv, i64 112698}
!123 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, i64 112698}
!124 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEED2Ev, i64 112698}
!125 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base, i64 15}
!126 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, i64 15}
!127 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base, i64 15}
!128 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, i64 15}
!129 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE9_M_mbeginEv, i64 112717}
!130 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, i64 14}
!131 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, i64 14}
!132 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv, i64 14}
!133 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv, i64 14}
!134 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE7destroyIS4_EEvRS6_PT_, i64 14}
!135 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE21_M_get_Node_allocatorEv, i64 14}
!136 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE10deallocateERS6_PS5_m, i64 14}
!137 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE7destroyIS4_EEvRS6_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE7destroyIS4_EEvPT_, i64 14}
!138 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIK10opp_stringS1_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE6_M_ptrEv, i64 53}
!139 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE7destroyIS4_EEvPT_, ptr @_ZNSt4pairIK10opp_stringS0_ED2Ev, i64 14}
!140 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIK10opp_stringS2_EE7_M_addrEv, i64 53}
!141 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIK10opp_stringS2_EEE10deallocateEPS5_m, i64 14}
!142 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!143 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!144 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!145 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!146 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!147 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!148 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!149 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!150 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!151 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!152 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!153 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!154 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!155 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!156 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!157 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!158 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!159 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!160 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!161 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!162 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!163 = !{ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPPKcEvT_S3_, i64 70451}
!164 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, i64 70440}
!165 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIPKcED2Ev, i64 70440}
!166 = !{ptr @_ZSt8_DestroyIPPKcEvT_S3_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_, i64 70451}
!167 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, i64 28}
!168 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m, i64 27}
!169 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base, i64 3}
!170 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EEC2EPSt18_Rb_tree_node_base, i64 30}
!171 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!172 = !{!"function_entry_count", i64 1}
!173 = !{!"fileoutscalarmgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_42Ev"}
!174 = !{!175, !175, i64 0}
!175 = !{!"any pointer", !176, i64 0}
!176 = !{!"omnipotent char", !177, i64 0}
!177 = !{!"Simple C++ TBAA"}
!178 = !{!179, !179, i64 0}
!179 = !{!"vtable pointer", !177, i64 0}
!180 = !{!"fileoutscalarmgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_43Ev"}
!181 = !{!"fileoutscalarmgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_44Ev"}
!182 = !{!"fileoutscalarmgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!183 = !{!"fileoutscalarmgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_48Ev"}
!184 = !{!185, !175, i64 128}
!185 = !{!"_ZTS24cFileOutputScalarManager", !186, i64 0, !188, i64 8, !190, i64 120, !175, i64 128, !201, i64 136}
!186 = !{!"_ZTS20cOutputScalarManager", !187, i64 0}
!187 = !{!"_ZTS7cObject"}
!188 = !{!"_ZTS8sRunData", !189, i64 0, !190, i64 8, !191, i64 16, !191, i64 64}
!189 = !{!"bool", !176, i64 0}
!190 = !{!"_ZTS10opp_string", !175, i64 0}
!191 = !{!"_ZTS14opp_string_map", !192, i64 0}
!192 = !{!"_ZTSSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE", !193, i64 0}
!193 = !{!"_ZTSSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE", !194, i64 0}
!194 = !{!"_ZTSNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !195, i64 0, !197, i64 8}
!195 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI10opp_stringEE", !196, i64 0}
!196 = !{!"_ZTSSt4lessI10opp_stringE"}
!197 = !{!"_ZTSSt15_Rb_tree_header", !198, i64 0, !200, i64 32}
!198 = !{!"_ZTSSt18_Rb_tree_node_base", !199, i64 0, !175, i64 8, !175, i64 16, !175, i64 24}
!199 = !{!"_ZTSSt14_Rb_tree_color", !176, i64 0}
!200 = !{!"long", !176, i64 0}
!201 = !{!"int", !176, i64 0}
!202 = !{!185, !201, i64 136}
!203 = !{!"function_entry_count", i64 2}
!204 = !{!188, !189, i64 0}
!205 = !{!"function_entry_count", i64 439586}
!206 = !{!190, !175, i64 0}
!207 = !{!"function_entry_count", i64 21674314260}
!208 = !{!"function_entry_count", i64 444560}
!209 = !{!"function_entry_count", i64 3}
!210 = !{!"branch_weights", i32 3, i32 2}
!211 = !{!"branch_weights", i32 1, i32 2}
!212 = !{!"function_entry_count", i64 397759682}
!213 = !{!"branch_weights", i32 51305, i32 397708379}
!214 = !{!"function_entry_count", i64 325620}
!215 = !{!"branch_weights", i32 2, i32 1}
!216 = !{!185, !189, i64 8}
!217 = !{i8 0, i8 2}
!218 = !{}
!219 = !{!"branch_weights", i32 1, i32 1}
!220 = !{!"branch_weights", i32 0, i32 1}
!221 = distinct !{!221, !222}
!222 = !{!"llvm.loop.mustprogress"}
!223 = !{!"function_entry_count", i64 40}
!224 = !{!"function_entry_count", i64 109858}
!225 = !{!226, !175, i64 8}
!226 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!227 = !{!226, !175, i64 0}
!228 = !{!"function_entry_count", i64 98}
!229 = !{!"function_entry_count", i64 0}
!230 = !{!176, !176, i64 0}
!231 = !{!"function_entry_count", i64 70440}
!232 = !{!"function_entry_count", i64 272154}
!233 = !{!"branch_weights", i32 2, i32 272154}
!234 = !{!"branch_weights", i32 1, i32 272155}
!235 = !{!"branch_weights", i32 272155, i32 1}
!236 = !{!"branch_weights", i32 254671, i32 17485}
!237 = distinct !{!237, !222}
!238 = !{!"function_entry_count", i64 2107073}
!239 = !{!240, !175, i64 0}
!240 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIK10opp_stringS1_EE", !175, i64 0}
!241 = !{!"function_entry_count", i64 30}
!242 = distinct !{!242, !222}
!243 = distinct !{!243, !222}
!244 = !{!"function_entry_count", i64 31236}
!245 = !{!"function_entry_count", i64 235321}
!246 = !{!"function_entry_count", i64 26398}
!247 = !{!"fileoutscalarmgr.cc:_ZL15__uniquename_48v"}
!248 = !{!"function_entry_count", i64 189116523}
!249 = !{!"function_entry_count", i64 112698}
!250 = !{!"function_entry_count", i64 192152}
!251 = !{!197, !199, i64 0}
!252 = !{!"function_entry_count", i64 197751}
!253 = !{!197, !175, i64 8}
!254 = !{!197, !175, i64 16}
!255 = !{!197, !175, i64 24}
!256 = !{!197, !200, i64 32}
!257 = !{!"function_entry_count", i64 112716}
!258 = !{!"branch_weights", i32 112702, i32 15}
!259 = !{!"branch_weights", i32 15, i32 0}
!260 = distinct !{!260, !222}
!261 = !{!"function_entry_count", i64 112717}
!262 = !{!"function_entry_count", i64 44}
!263 = !{!198, !175, i64 24}
!264 = !{!198, !175, i64 16}
!265 = !{!"function_entry_count", i64 14}
!266 = !{!"function_entry_count", i64 56}
!267 = !{!"function_entry_count", i64 53}
!268 = !{!269, !201, i64 8}
!269 = !{!"_ZTS10cException", !270, i64 0, !201, i64 8, !271, i64 16, !189, i64 48, !271, i64 56, !271, i64 88, !201, i64 120}
!270 = !{!"_ZTSSt9exception"}
!271 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !272, i64 0, !200, i64 8, !176, i64 16}
!272 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !175, i64 0}
!273 = !{!269, !189, i64 48}
!274 = !{!269, !201, i64 120}
!275 = !{!"function_entry_count", i64 1891507}
!276 = !{!"function_entry_count", i64 1889443}
!277 = !{!200, !200, i64 0}
!278 = !{!"branch_weights", i32 1257663, i32 631782}
!279 = !{!280, !175, i64 0}
!280 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !175, i64 0}
!281 = !{!"branch_weights", i32 1889444, i32 1}
!282 = !{!"function_entry_count", i64 188204319}
!283 = !{!"branch_weights", i32 13, i32 188204308}
!284 = !{!"branch_weights", i32 7, i32 188204302}
!285 = !{!"function_entry_count", i64 70451}
!286 = !{!"function_entry_count", i64 70505}
!287 = !{!226, !175, i64 16}
!288 = !{!"function_entry_count", i64 70467}
!289 = !{!"branch_weights", i32 70441, i32 28}
!290 = !{!"function_entry_count", i64 27}
!291 = !{!"function_entry_count", i64 76}
