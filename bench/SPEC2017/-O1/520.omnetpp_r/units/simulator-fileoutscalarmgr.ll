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
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.0" = type { i8 }

$__clang_call_terminate = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZN10opp_stringC2ERKS_ = comdat any

$_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTS20cOutputScalarManager = comdat any

$_ZTI20cOutputScalarManager = comdat any

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
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"field %s %.*g\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_fileoutscalarmgr.cc, ptr null }]

@_ZN24cFileOutputScalarManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24cFileOutputScalarManagerC2Ev
@_ZN24cFileOutputScalarManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24cFileOutputScalarManagerD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_42Ev() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !100 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.27, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29)
          to label %3 unwind label %7, !prof !101

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_FILE, align 8, !tbaa !102
  %4 = load ptr, ptr %1, align 8, !tbaa !106
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !108
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %8
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_43Ev() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !109 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.30, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32)
          to label %3 unwind label %7, !prof !101

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_PRECISION, align 8, !tbaa !102
  %4 = load ptr, ptr %1, align 8, !tbaa !106
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !108
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_44Ev() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !110 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.33, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35)
          to label %3 unwind label %7, !prof !101

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUT_SCALAR_FILE_APPEND, align 8, !tbaa !102
  %4 = load ptr, ptr %1, align 8, !tbaa !106
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !108
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !111 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.36, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %3 unwind label %7, !prof !101

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !102
  %4 = load ptr, ptr %1, align 8, !tbaa !106
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !108
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_48Ev() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !112 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI24cFileOutputScalarManager)
          to label %4 unwind label %9, !prof !101

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_48v, ptr noundef null)
          to label %5 unwind label %9, !prof !101

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !106
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !108
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV24cFileOutputScalarManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !106
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !113
  %3 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 1
  store ptr null, ptr %3, align 8, !tbaa !127
  %4 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2
  store ptr %4, ptr %6, align 8, !tbaa !130
  %7 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %4, ptr %7, align 8, !tbaa !131
  %8 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %8, align 8, !tbaa !132
  %9 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !129
  %11 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %9, ptr %12, align 8, !tbaa !131
  %13 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds ptr, ptr %16, i64 31
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(288) %15)
          to label %20 unwind label %29, !prof !133

20:                                               ; preds = %1
  %21 = load ptr, ptr @CFGID_OUTPUT_SCALAR_PRECISION, align 8, !tbaa !102
  %22 = load ptr, ptr %19, align 8, !tbaa !106
  %23 = getelementptr inbounds ptr, ptr %22, i64 26
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef i64 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21, i64 noundef 0)
          to label %26 unwind label %29, !prof !134

26:                                               ; preds = %20
  %27 = trunc i64 %25 to i32
  %28 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !135
  ret void

29:                                               ; preds = %20, %1
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %14, align 8, !tbaa !127
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZdaPv(ptr noundef %31) #28
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3
  %36 = load ptr, ptr %10, align 8, !tbaa !129
  invoke void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %36)
          to label %40 unwind label %37

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #29
  unreachable

40:                                               ; preds = %34
  %41 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2
  %42 = load ptr, ptr %5, align 8, !tbaa !129
  invoke void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef %42)
          to label %46 unwind label %43

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #29
  unreachable

46:                                               ; preds = %40
  %47 = load ptr, ptr %3, align 8, !tbaa !127
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdaPv(ptr noundef %47) #28
  br label %50

50:                                               ; preds = %49, %46
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  resume { ptr, i32 } %30
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN24cFileOutputScalarManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV24cFileOutputScalarManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !106
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !101

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !140
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !141

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %9) #28
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3
  %14 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 3, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  invoke void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %15)
          to label %19 unwind label %16, !prof !101

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #29
  unreachable

19:                                               ; preds = %12
  %20 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2
  %21 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !129
  invoke void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %22)
          to label %26 unwind label %23, !prof !101

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #29
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !141

30:                                               ; preds = %26
  tail call void @_ZdaPv(ptr noundef %28) #28
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN24cFileOutputScalarManager9closeFileEv(ptr nocapture noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #5 align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !140
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !142 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #30
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN24cFileOutputScalarManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #4 align 2 !prof !99 {
  tail call void @_ZN24cFileOutputScalarManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) #30
  tail call void @_ZdlPv(ptr noundef %0) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager8openFileEv(ptr nocapture noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #30
  %3 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.39, ptr %4, !prof !141
  call void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !143
  invoke void @_Z6mkPathPKc(ptr noundef %7)
          to label %8 unwind label %30, !prof !101

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !143
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !141

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !146
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %8
  call void @_ZdlPv(ptr noundef %9) #28
  br label %17

17:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #30
  %18 = load ptr, ptr %3, align 8, !tbaa !127
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.39, ptr %18, !prof !141
  %21 = call noalias ptr @fopen(ptr noundef nonnull %20, ptr noundef nonnull @.str)
  %22 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !140
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %43, !prof !141

24:                                               ; preds = %17
  %25 = call ptr @__cxa_allocate_exception(i64 128) #30
  %26 = load ptr, ptr %3, align 8, !tbaa !127
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.39, ptr %26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.6, ptr noundef nonnull %28)
          to label %29 unwind label %41

29:                                               ; preds = %24
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

30:                                               ; preds = %1
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %2, align 8, !tbaa !143
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !146
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  br label %40

39:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %32) #28
  br label %40

40:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #30
  br label %44

41:                                               ; preds = %24
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #30
  br label %44

43:                                               ; preds = %17
  ret void

44:                                               ; preds = %41, %40
  %45 = phi { ptr, i32 } [ %42, %41 ], [ %31, %40 ]
  resume { ptr, i32 } %45
}

declare void @_Z6mkPathPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager8startRunEv(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !101

6:                                                ; preds = %1
  %7 = tail call i32 @fclose(ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8, !tbaa !140
  br label %8

8:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #30
  %9 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds ptr, ptr %10, i64 31
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(288) %9), !prof !133
  %14 = load ptr, ptr @CFGID_OUTPUT_SCALAR_FILE, align 8, !tbaa !102
  %15 = load ptr, ptr %13, align 8, !tbaa !106
  %16 = getelementptr inbounds ptr, ptr %15, i64 29
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14), !prof !147
  %18 = load ptr, ptr %2, align 8, !tbaa !143
  %19 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %20 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %21 unwind label %46, !prof !101

21:                                               ; preds = %8
  %22 = load ptr, ptr %2, align 8, !tbaa !143
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29, !prof !141

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !146
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %22) #28
  br label %30

30:                                               ; preds = %25, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #30
  %31 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102, !nonnull !148, !noundef !148
  %32 = call ptr @__dynamic_cast(ptr nonnull %31, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #30
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = getelementptr inbounds ptr, ptr %33, i64 68
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr noundef nonnull align 8 dereferenceable(600) %32, ptr noundef nonnull align 8 dereferenceable(8) %19), !prof !149
  %36 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds ptr, ptr %37, i64 31
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(288) %36), !prof !133
  %41 = load ptr, ptr @CFGID_OUTPUT_SCALAR_FILE_APPEND, align 8, !tbaa !102
  %42 = load ptr, ptr %40, align 8, !tbaa !106
  %43 = getelementptr inbounds ptr, ptr %42, i64 25
  %44 = load ptr, ptr %43, align 8
  %45 = call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %41, i1 noundef zeroext false), !prof !150
  br i1 %45, label %61, label %57, !prof !141

46:                                               ; preds = %8
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %2, align 8, !tbaa !143
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !146
  %54 = icmp ult i64 %53, 16
  call void @llvm.assume(i1 %54)
  br label %56

55:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %48) #28
  br label %56

56:                                               ; preds = %51, %55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #30
  resume { ptr, i32 } %47

57:                                               ; preds = %30
  %58 = load ptr, ptr %19, align 8, !tbaa !127
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @.str.39, ptr %58, !prof !141
  call void @_Z10removeFilePKcS0_(ptr noundef nonnull %60, ptr noundef nonnull @.str.7)
  br label %61

61:                                               ; preds = %57, %30
  %62 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  call void @_ZN8sRunData5resetEv(ptr noundef nonnull align 8 dereferenceable(112) %62)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !152

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef %3) #28
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %16, label %8, !prof !153

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1, !tbaa !154
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !155

11:                                               ; preds = %8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %13 = add i64 %12, 1
  %14 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %13) #27
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #30
  br label %16

16:                                               ; preds = %6, %8, %11
  %17 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  store ptr %17, ptr %0, align 8, !tbaa !127
  ret ptr %17
}

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

declare void @_Z10removeFilePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN8sRunData5resetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN24cFileOutputScalarManager6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #5 align 2 !prof !99 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !141

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 8, !tbaa !140
  br label %7

7:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = alloca %class.opp_string, align 8
  %3 = alloca %"class.std::vector", align 8
  %4 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22, !prof !101

7:                                                ; preds = %1
  tail call void @_ZN24cFileOutputScalarManager8openFileEv(ptr noundef nonnull align 8 dereferenceable(140) %0)
  %8 = load ptr, ptr %4, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10, !prof !141

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.8, i32 noundef 2)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %22, !prof !141

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #30
  %15 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.39, ptr %16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.9, ptr noundef nonnull %18)
          to label %19 unwind label %20

19:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #30
  br label %97

22:                                               ; preds = %10, %1
  %23 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !156, !range !157, !noundef !148
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %96, !prof !101

26:                                               ; preds = %22
  tail call void @_ZN8sRunData7initRunEv(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %27 = load ptr, ptr %4, align 8, !tbaa !140
  %28 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  call void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %28)
  invoke void @_ZN8sRunData12writeRunDataEP8_IO_FILE10opp_string(ptr noundef nonnull align 8 dereferenceable(112) %23, ptr noundef %27, ptr noundef nonnull %2)
          to label %29 unwind label %56, !prof !101

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8, !tbaa !127
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !141

32:                                               ; preds = %29
  call void @_ZdaPv(ptr noundef %30) #28
  br label %33

33:                                               ; preds = %29, %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %34 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = getelementptr inbounds ptr, ptr %35, i64 32
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(288) %34), !prof !158
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = getelementptr inbounds ptr, ptr %39, i64 52
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %38), !prof !159
  %42 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = load ptr, ptr %3, align 8, !tbaa !162
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = lshr exact i64 %47, 3
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %61, label %51, !prof !141

51:                                               ; preds = %80, %33
  %52 = phi ptr [ %44, %33 ], [ %83, %80 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54, !prof !101

54:                                               ; preds = %51
  call void @_ZdlPv(ptr noundef %52) #28
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  br label %96

56:                                               ; preds = %26
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = load ptr, ptr %2, align 8, !tbaa !127
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %56
  call void @_ZdaPv(ptr noundef %58) #28
  br label %97

61:                                               ; preds = %33, %80
  %62 = phi i64 [ %81, %80 ], [ 0, %33 ]
  %63 = phi ptr [ %83, %80 ], [ %44, %33 ]
  %64 = getelementptr inbounds ptr, ptr %63, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %67 = load ptr, ptr %66, align 8, !tbaa !106
  %68 = getelementptr inbounds ptr, ptr %67, i64 32
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(288) %66)
          to label %71 unwind label %90

71:                                               ; preds = %61
  %72 = load ptr, ptr %3, align 8, !tbaa !162
  %73 = getelementptr inbounds ptr, ptr %72, i64 %62
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = load ptr, ptr %70, align 8, !tbaa !106
  %76 = getelementptr inbounds ptr, ptr %75, i64 51
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %74)
          to label %79 unwind label %90

79:                                               ; preds = %71
  invoke void @_ZN24cFileOutputScalarManager30recordNumericIterationVariableEPKcS1_(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %65, ptr noundef %78)
          to label %80 unwind label %90

80:                                               ; preds = %79
  %81 = add nuw nsw i64 %62, 1
  %82 = load ptr, ptr %42, align 8, !tbaa !160
  %83 = load ptr, ptr %3, align 8, !tbaa !162
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = shl i64 %86, 29
  %88 = ashr i64 %87, 32
  %89 = icmp slt i64 %81, %88
  br i1 %89, label %61, label %51, !prof !141, !llvm.loop !163

90:                                               ; preds = %79, %71, %61
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %3, align 8, !tbaa !162
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %92) #28
  br label %95

95:                                               ; preds = %90, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  br label %97

96:                                               ; preds = %7, %55, %22
  ret void

97:                                               ; preds = %60, %56, %95, %20
  %98 = phi { ptr, i32 } [ %91, %95 ], [ %21, %20 ], [ %57, %56 ], [ %57, %60 ]
  resume { ptr, i32 } %98
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @_ZN8sRunData7initRunEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0

declare void @_ZN8sRunData12writeRunDataEP8_IO_FILE10opp_string(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !166 {
  %3 = load ptr, ptr %1, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !167

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !154
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !168

8:                                                ; preds = %5
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %10 = add i64 %9, 1
  %11 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #27
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %3) #30
  br label %13

13:                                               ; preds = %2, %5, %8
  %14 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %2 ]
  store ptr %14, ptr %0, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager30recordNumericIterationVariableEPKcS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  %7 = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.10) #30
  %8 = call double @strtod(ptr noundef %2, ptr noundef nonnull %4) #30
  %9 = load ptr, ptr %4, align 8, !tbaa !102
  %10 = load i8, ptr %9, align 1, !tbaa !154
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %2)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %12
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #30
  %19 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.39, ptr %20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.9, ptr noundef nonnull %22)
          to label %23 unwind label %24

23:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = extractvalue { ptr, i32 } %25, 1
  tail call void @__cxa_free_exception(ptr %18) #30
  br label %132

28:                                               ; preds = %3
  %29 = icmp eq ptr %9, %2
  br i1 %29, label %131, label %30

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #30
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %31, ptr %5, align 8, !tbaa !169
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 0, ptr %32, align 8, !tbaa !146
  store i8 0, ptr %31, align 8, !tbaa !154
  %33 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %42 unwind label %34

34:                                               ; preds = %30
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %36 = extractvalue { ptr, i32 } %35, 0
  %37 = extractvalue { ptr, i32 } %35, 1
  %38 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #30
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  %41 = call ptr @__cxa_begin_catch(ptr %36) #30
  invoke void @__cxa_end_catch()
          to label %42 unwind label %58

42:                                               ; preds = %40, %30
  %43 = phi double [ %33, %30 ], [ undef, %40 ]
  %44 = phi i1 [ true, %30 ], [ false, %40 ]
  br i1 %44, label %45, label %113

45:                                               ; preds = %42
  %46 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !140
  %48 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !135
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef %49, double noundef %43)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = call ptr @__cxa_allocate_exception(i64 128) #30
  %54 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !127
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.39, ptr %55
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %53, ptr noundef nonnull @.str.9, ptr noundef nonnull %57)
          to label %102 unwind label %66

58:                                               ; preds = %40
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = extractvalue { ptr, i32 } %59, 0
  %61 = extractvalue { ptr, i32 } %59, 1
  br label %121

62:                                               ; preds = %102, %73
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = extractvalue { ptr, i32 } %63, 0
  %65 = extractvalue { ptr, i32 } %63, 1
  br label %121

66:                                               ; preds = %52
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = extractvalue { ptr, i32 } %67, 0
  %69 = extractvalue { ptr, i32 } %67, 1
  call void @__cxa_free_exception(ptr %53) #30
  br label %121

70:                                               ; preds = %45
  %71 = load i64, ptr %32, align 8, !tbaa !146
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %46, align 8, !tbaa !140
  %75 = load ptr, ptr %5, align 8, !tbaa !143
  %76 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %75)
          to label %77 unwind label %62

77:                                               ; preds = %73
  br i1 %76, label %78, label %80

78:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #30
  %79 = load ptr, ptr %5, align 8, !tbaa !143
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %79)
          to label %80 unwind label %105

80:                                               ; preds = %77, %78
  %81 = phi ptr [ %6, %78 ], [ %5, %77 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !143
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.13, ptr noundef %82)
  %84 = icmp slt i32 %83, 0
  br i1 %76, label %85, label %95

85:                                               ; preds = %80
  %86 = load ptr, ptr %6, align 8, !tbaa !143
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !146
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %94

93:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %86) #28
  br label %94

94:                                               ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  br label %95

95:                                               ; preds = %80, %94
  br i1 %84, label %96, label %113

96:                                               ; preds = %95
  %97 = call ptr @__cxa_allocate_exception(i64 128) #30
  %98 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !127
  %100 = icmp eq ptr %99, null
  %101 = select i1 %100, ptr @.str.39, ptr %99
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %97, ptr noundef nonnull @.str.9, ptr noundef nonnull %101)
          to label %102 unwind label %109

102:                                              ; preds = %52, %96
  %103 = phi ptr [ %97, %96 ], [ %53, %52 ]
  invoke void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
          to label %104 unwind label %62

104:                                              ; preds = %102
  unreachable

105:                                              ; preds = %78
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = extractvalue { ptr, i32 } %106, 1
  %108 = extractvalue { ptr, i32 } %106, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  br label %121

109:                                              ; preds = %96
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = extractvalue { ptr, i32 } %110, 0
  %112 = extractvalue { ptr, i32 } %110, 1
  call void @__cxa_free_exception(ptr %97) #30
  br label %121

113:                                              ; preds = %70, %95, %42
  %114 = load ptr, ptr %5, align 8, !tbaa !143
  %115 = icmp eq ptr %114, %31
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i64, ptr %32, align 8, !tbaa !146
  %118 = icmp ult i64 %117, 16
  call void @llvm.assume(i1 %118)
  br label %120

119:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %114) #28
  br label %120

120:                                              ; preds = %116, %119
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #30
  br label %131

121:                                              ; preds = %105, %109, %66, %62, %58, %34
  %122 = phi i32 [ %65, %62 ], [ %69, %66 ], [ %112, %109 ], [ %107, %105 ], [ %61, %58 ], [ %37, %34 ]
  %123 = phi ptr [ %64, %62 ], [ %68, %66 ], [ %111, %109 ], [ %108, %105 ], [ %60, %58 ], [ %36, %34 ]
  %124 = load ptr, ptr %5, align 8, !tbaa !143
  %125 = icmp eq ptr %124, %31
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i64, ptr %32, align 8, !tbaa !146
  %128 = icmp ult i64 %127, 16
  call void @llvm.assume(i1 %128)
  br label %130

129:                                              ; preds = %121
  call void @_ZdlPv(ptr noundef %124) #28
  br label %130

130:                                              ; preds = %126, %129
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #30
  br label %132

131:                                              ; preds = %28, %120, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  ret void

132:                                              ; preds = %130, %24
  %133 = phi i32 [ %27, %24 ], [ %122, %130 ]
  %134 = phi ptr [ %26, %24 ], [ %123, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  %135 = insertvalue { ptr, i32 } poison, ptr %134, 0
  %136 = insertvalue { ptr, i32 } %135, i32 %133, 1
  resume { ptr, i32 } %136
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

declare noundef double @_ZN14UnitConversion13parseQuantityEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #0

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef readonly %4) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !156, !range !157, !noundef !148
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !171

19:                                               ; preds = %5
  tail call void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0)
  br label %20

20:                                               ; preds = %19, %5
  %21 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %400, label %24, !prof !172

24:                                               ; preds = %20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26, !prof !172

26:                                               ; preds = %24
  %27 = load i8, ptr %2, align 1, !tbaa !154
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30, !prof !172

29:                                               ; preds = %26, %24
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi ptr [ %2, %26 ], [ @.str.14, %29 ]
  %32 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = getelementptr inbounds ptr, ptr %33, i64 31
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(288) %32), !prof !173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #30
  %37 = load ptr, ptr %1, align 8, !tbaa !106
  %38 = getelementptr inbounds ptr, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !174
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !146
  %42 = icmp eq i64 %41, 4611686018427387903
  br i1 %42, label %43, label %45, !prof !175

43:                                               ; preds = %30
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #31
          to label %44 unwind label %206

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %30
  %46 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %47 unwind label %206

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %48, ptr %7, align 8, !tbaa !169, !alias.scope !176
  %49 = load ptr, ptr %46, align 8, !tbaa !143
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 2
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %57, !prof !172

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !146
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  %56 = add nuw nsw i64 %54, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %48, ptr noundef nonnull align 8 dereferenceable(1) %50, i64 %56, i1 false)
  br label %59

57:                                               ; preds = %47
  store ptr %49, ptr %7, align 8, !tbaa !143, !alias.scope !176
  %58 = load i64, ptr %50, align 8, !tbaa !154
  store i64 %58, ptr %48, align 8, !tbaa !154, !alias.scope !176
  br label %59

59:                                               ; preds = %52, %57
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !146
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %61, ptr %62, align 8, !tbaa !146, !alias.scope !176
  store ptr %50, ptr %46, align 8, !tbaa !143
  store i64 0, ptr %60, align 8, !tbaa !146
  store i8 0, ptr %50, align 8, !tbaa !154
  %63 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #30
  %64 = load i64, ptr %62, align 8, !tbaa !146
  %65 = sub i64 4611686018427387903, %64
  %66 = icmp ult i64 %65, %63
  br i1 %66, label %67, label %69, !prof !175

67:                                               ; preds = %59
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #31
          to label %68 unwind label %208

68:                                               ; preds = %67
  unreachable

69:                                               ; preds = %59
  %70 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %31, i64 noundef %63)
          to label %71 unwind label %208

71:                                               ; preds = %69
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %72, ptr %6, align 8, !tbaa !169, !alias.scope !179
  %73 = load ptr, ptr %70, align 8, !tbaa !143
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 0, i32 2
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %81, !prof !172

76:                                               ; preds = %71
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !146
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  %80 = add nuw nsw i64 %78, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %72, ptr noundef nonnull align 8 dereferenceable(1) %74, i64 %80, i1 false)
  br label %83

81:                                               ; preds = %71
  store ptr %73, ptr %6, align 8, !tbaa !143, !alias.scope !179
  %82 = load i64, ptr %74, align 8, !tbaa !154
  store i64 %82, ptr %72, align 8, !tbaa !154, !alias.scope !179
  br label %83

83:                                               ; preds = %76, %81
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %70, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !146
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !146, !alias.scope !179
  store ptr %74, ptr %70, align 8, !tbaa !143
  store i64 0, ptr %84, align 8, !tbaa !146
  store i8 0, ptr %74, align 8, !tbaa !154
  %87 = load ptr, ptr %6, align 8, !tbaa !143
  %88 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !102
  %89 = load ptr, ptr %36, align 8, !tbaa !106
  %90 = getelementptr inbounds ptr, ptr %89, i64 33
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef zeroext i1 %91(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %87, ptr noundef %88, i1 noundef zeroext false)
          to label %93 unwind label %210, !prof !182

93:                                               ; preds = %83
  %94 = load ptr, ptr %6, align 8, !tbaa !143
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %99, !prof !172

96:                                               ; preds = %93
  %97 = load i64, ptr %86, align 8, !tbaa !146
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %100

99:                                               ; preds = %93
  call void @_ZdlPv(ptr noundef %94) #28
  br label %100

100:                                              ; preds = %96, %99
  %101 = load ptr, ptr %7, align 8, !tbaa !143
  %102 = icmp eq ptr %101, %48
  br i1 %102, label %103, label %106, !prof !183

103:                                              ; preds = %100
  %104 = load i64, ptr %62, align 8, !tbaa !146
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %107

106:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %101) #28
  br label %107

107:                                              ; preds = %103, %106
  %108 = load ptr, ptr %8, align 8, !tbaa !143
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %114, !prof !183

111:                                              ; preds = %107
  %112 = load i64, ptr %40, align 8, !tbaa !146
  %113 = icmp ult i64 %112, 16
  call void @llvm.assume(i1 %113)
  br label %115

114:                                              ; preds = %107
  call void @_ZdlPv(ptr noundef %108) #28
  br label %115

115:                                              ; preds = %111, %114
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  br i1 %92, label %116, label %400, !prof !183

116:                                              ; preds = %115
  %117 = load ptr, ptr %21, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #30
  %118 = load ptr, ptr %1, align 8, !tbaa !106
  %119 = getelementptr inbounds ptr, ptr %118, i64 8
  %120 = load ptr, ptr %119, align 8
  call void %120(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !174
  %121 = load ptr, ptr %9, align 8, !tbaa !143
  %122 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %121)
          to label %123 unwind label %236, !prof !183

123:                                              ; preds = %116
  br i1 %122, label %124, label %130, !prof !172

124:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #30
  %125 = load ptr, ptr %1, align 8, !tbaa !106
  %126 = getelementptr inbounds ptr, ptr %125, i64 8
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %128 unwind label %238

128:                                              ; preds = %124
  %129 = load ptr, ptr %11, align 8, !tbaa !143
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %129)
          to label %134 unwind label %240

130:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #30
  %131 = load ptr, ptr %1, align 8, !tbaa !106
  %132 = getelementptr inbounds ptr, ptr %131, i64 8
  %133 = load ptr, ptr %132, align 8
  invoke void %133(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %134 unwind label %242, !prof !174

134:                                              ; preds = %130, %128
  %135 = phi ptr [ %10, %128 ], [ %12, %130 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !143
  %137 = xor i1 %122, true
  %138 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %31)
          to label %139 unwind label %244, !prof !183

139:                                              ; preds = %134
  br i1 %138, label %140, label %143, !prof !184

140:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #30
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %31)
          to label %141 unwind label %246, !prof !185

141:                                              ; preds = %140
  %142 = load ptr, ptr %13, align 8, !tbaa !143
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi ptr [ %142, %141 ], [ %31, %139 ]
  %145 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %146 = load i32, ptr %145, align 8, !tbaa !135
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.16, ptr noundef %136, ptr noundef %144, i32 noundef %146, double noundef %3)
  %148 = icmp slt i32 %147, 0
  br i1 %138, label %149, label %159, !prof !184

149:                                              ; preds = %143
  %150 = load ptr, ptr %13, align 8, !tbaa !143
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %157, !prof !186

153:                                              ; preds = %149
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !146
  %156 = icmp ult i64 %155, 16
  call void @llvm.assume(i1 %156)
  br label %158

157:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %150) #28
  br label %158

158:                                              ; preds = %153, %157
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #30
  br label %159

159:                                              ; preds = %143, %158
  br i1 %122, label %170, label %160, !prof !172

160:                                              ; preds = %159
  %161 = load ptr, ptr %12, align 8, !tbaa !143
  %162 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %164, label %168, !prof !172

164:                                              ; preds = %160
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !146
  %167 = icmp ult i64 %166, 16
  call void @llvm.assume(i1 %167)
  br label %169

168:                                              ; preds = %160
  call void @_ZdlPv(ptr noundef %161) #28
  br label %169

169:                                              ; preds = %164, %168
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #30
  br label %189

170:                                              ; preds = %159
  %171 = load ptr, ptr %10, align 8, !tbaa !143
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %173 = icmp eq ptr %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !146
  %177 = icmp ult i64 %176, 16
  call void @llvm.assume(i1 %177)
  br label %179

178:                                              ; preds = %170
  call void @_ZdlPv(ptr noundef %171) #28
  br label %179

179:                                              ; preds = %174, %178
  %180 = load ptr, ptr %11, align 8, !tbaa !143
  %181 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %182 = icmp eq ptr %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !146
  %186 = icmp ult i64 %185, 16
  call void @llvm.assume(i1 %186)
  br label %188

187:                                              ; preds = %179
  call void @_ZdlPv(ptr noundef %180) #28
  br label %188

188:                                              ; preds = %183, %187
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #30
  br label %189

189:                                              ; preds = %169, %188
  %190 = load ptr, ptr %9, align 8, !tbaa !143
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %193, label %197, !prof !172

193:                                              ; preds = %189
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !146
  %196 = icmp ult i64 %195, 16
  call void @llvm.assume(i1 %196)
  br label %198

197:                                              ; preds = %189
  call void @_ZdlPv(ptr noundef %190) #28
  br label %198

198:                                              ; preds = %193, %197
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #30
  br i1 %148, label %199, label %303, !prof !172

199:                                              ; preds = %198
  %200 = call ptr @__cxa_allocate_exception(i64 128) #30
  %201 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !127
  %203 = icmp eq ptr %202, null
  %204 = select i1 %203, ptr @.str.39, ptr %202
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %200, ptr noundef nonnull @.str.9, ptr noundef nonnull %204)
          to label %205 unwind label %301

205:                                              ; preds = %199
  call void @__cxa_throw(ptr nonnull %200, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

206:                                              ; preds = %45, %43
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %226

208:                                              ; preds = %69, %67
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %218

210:                                              ; preds = %83
  %211 = landingpad { ptr, i32 }
          cleanup
  %212 = load ptr, ptr %6, align 8, !tbaa !143
  %213 = icmp eq ptr %212, %72
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i64, ptr %86, align 8, !tbaa !146
  %216 = icmp ult i64 %215, 16
  call void @llvm.assume(i1 %216)
  br label %218

217:                                              ; preds = %210
  call void @_ZdlPv(ptr noundef %212) #28
  br label %218

218:                                              ; preds = %217, %214, %208
  %219 = phi { ptr, i32 } [ %209, %208 ], [ %211, %214 ], [ %211, %217 ]
  %220 = load ptr, ptr %7, align 8, !tbaa !143
  %221 = icmp eq ptr %220, %48
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i64, ptr %62, align 8, !tbaa !146
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %226

225:                                              ; preds = %218
  call void @_ZdlPv(ptr noundef %220) #28
  br label %226

226:                                              ; preds = %225, %222, %206
  %227 = phi { ptr, i32 } [ %207, %206 ], [ %219, %222 ], [ %219, %225 ]
  %228 = load ptr, ptr %8, align 8, !tbaa !143
  %229 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i64, ptr %40, align 8, !tbaa !146
  %233 = icmp ult i64 %232, 16
  call void @llvm.assume(i1 %233)
  br label %235

234:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %228) #28
  br label %235

235:                                              ; preds = %231, %234
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  br label %401

236:                                              ; preds = %116
  %237 = landingpad { ptr, i32 }
          cleanup
  br label %290

238:                                              ; preds = %124
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %286

240:                                              ; preds = %128
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %274

242:                                              ; preds = %130
  %243 = landingpad { ptr, i32 }
          cleanup
  br label %259

244:                                              ; preds = %134
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %248

246:                                              ; preds = %140
  %247 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #30
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi { ptr, i32 } [ %247, %246 ], [ %245, %244 ]
  br i1 %122, label %259, label %250

250:                                              ; preds = %248
  %251 = load ptr, ptr %12, align 8, !tbaa !143
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %256 = load i64, ptr %255, align 8, !tbaa !146
  %257 = icmp ult i64 %256, 16
  call void @llvm.assume(i1 %257)
  br label %259

258:                                              ; preds = %250
  call void @_ZdlPv(ptr noundef %251) #28
  br label %259

259:                                              ; preds = %258, %254, %248, %242
  %260 = phi { ptr, i32 } [ %249, %248 ], [ %243, %242 ], [ %249, %254 ], [ %249, %258 ]
  %261 = phi i1 [ %122, %248 ], [ false, %242 ], [ %122, %254 ], [ %122, %258 ]
  %262 = phi i1 [ %137, %248 ], [ true, %242 ], [ %137, %254 ], [ %137, %258 ]
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #30
  br label %264

264:                                              ; preds = %263, %259
  br i1 %261, label %265, label %274

265:                                              ; preds = %264
  %266 = load ptr, ptr %10, align 8, !tbaa !143
  %267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !146
  %272 = icmp ult i64 %271, 16
  call void @llvm.assume(i1 %272)
  br label %274

273:                                              ; preds = %265
  call void @_ZdlPv(ptr noundef %266) #28
  br label %274

274:                                              ; preds = %273, %269, %264, %240
  %275 = phi { ptr, i32 } [ %260, %264 ], [ %241, %240 ], [ %260, %269 ], [ %260, %273 ]
  %276 = phi i1 [ %261, %264 ], [ true, %240 ], [ %261, %269 ], [ %261, %273 ]
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load ptr, ptr %11, align 8, !tbaa !143
  %279 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %280 = icmp eq ptr %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %283 = load i64, ptr %282, align 8, !tbaa !146
  %284 = icmp ult i64 %283, 16
  call void @llvm.assume(i1 %284)
  br label %286

285:                                              ; preds = %277
  call void @_ZdlPv(ptr noundef %278) #28
  br label %286

286:                                              ; preds = %285, %281, %274, %238
  %287 = phi { ptr, i32 } [ %275, %274 ], [ %239, %238 ], [ %275, %281 ], [ %275, %285 ]
  %288 = phi i1 [ %276, %274 ], [ true, %238 ], [ %276, %281 ], [ %276, %285 ]
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #30
  br label %290

290:                                              ; preds = %286, %289, %236
  %291 = phi { ptr, i32 } [ %287, %289 ], [ %237, %236 ], [ %287, %286 ]
  %292 = load ptr, ptr %9, align 8, !tbaa !143
  %293 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %294 = icmp eq ptr %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %297 = load i64, ptr %296, align 8, !tbaa !146
  %298 = icmp ult i64 %297, 16
  call void @llvm.assume(i1 %298)
  br label %300

299:                                              ; preds = %290
  call void @_ZdlPv(ptr noundef %292) #28
  br label %300

300:                                              ; preds = %295, %299
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #30
  br label %401

301:                                              ; preds = %199
  %302 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %200) #30
  br label %401

303:                                              ; preds = %198
  %304 = icmp eq ptr %4, null
  br i1 %304, label %400, label %305, !prof !183

305:                                              ; preds = %303
  %306 = getelementptr inbounds i8, ptr %4, i64 24
  %307 = load ptr, ptr %306, align 8, !tbaa !130
  %308 = getelementptr inbounds i8, ptr %4, i64 8
  %309 = icmp eq ptr %307, %308
  br i1 %309, label %400, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %313 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %314 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  br label %315

315:                                              ; preds = %310, %397
  %316 = phi ptr [ %307, %310 ], [ %398, %397 ]
  %317 = load ptr, ptr %21, align 8, !tbaa !140
  %318 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %316, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !127
  %320 = icmp eq ptr %319, null
  %321 = select i1 %320, ptr @.str.39, ptr %319
  %322 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %321)
  br i1 %322, label %323, label %328

323:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #30
  %324 = load ptr, ptr %318, align 8, !tbaa !127
  %325 = icmp eq ptr %324, null
  %326 = select i1 %325, ptr @.str.39, ptr %324
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull %326)
  %327 = load ptr, ptr %14, align 8, !tbaa !143
  br label %332

328:                                              ; preds = %315
  %329 = load ptr, ptr %318, align 8, !tbaa !127
  %330 = icmp eq ptr %329, null
  %331 = select i1 %330, ptr @.str.39, ptr %329
  br label %332

332:                                              ; preds = %328, %323
  %333 = phi ptr [ %327, %323 ], [ %331, %328 ]
  %334 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %316, i64 0, i32 1, i32 0, i64 8
  %335 = load ptr, ptr %334, align 8, !tbaa !127
  %336 = icmp eq ptr %335, null
  %337 = select i1 %336, ptr @.str.39, ptr %335
  %338 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %337)
          to label %339 unwind label %379

339:                                              ; preds = %332
  br i1 %338, label %340, label %346

340:                                              ; preds = %339
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #30
  %341 = load ptr, ptr %334, align 8, !tbaa !127
  %342 = icmp eq ptr %341, null
  %343 = select i1 %342, ptr @.str.39, ptr %341
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull %343)
          to label %344 unwind label %381

344:                                              ; preds = %340
  %345 = load ptr, ptr %15, align 8, !tbaa !143
  br label %350

346:                                              ; preds = %339
  %347 = load ptr, ptr %334, align 8, !tbaa !127
  %348 = icmp eq ptr %347, null
  %349 = select i1 %348, ptr @.str.39, ptr %347
  br label %350

350:                                              ; preds = %346, %344
  %351 = phi ptr [ %345, %344 ], [ %349, %346 ]
  %352 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef nonnull @.str.17, ptr noundef %333, ptr noundef %351)
  %353 = icmp slt i32 %352, 0
  br i1 %338, label %354, label %362

354:                                              ; preds = %350
  %355 = load ptr, ptr %15, align 8, !tbaa !143
  %356 = icmp eq ptr %355, %311
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i64, ptr %312, align 8, !tbaa !146
  %359 = icmp ult i64 %358, 16
  call void @llvm.assume(i1 %359)
  br label %361

360:                                              ; preds = %354
  call void @_ZdlPv(ptr noundef %355) #28
  br label %361

361:                                              ; preds = %357, %360
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #30
  br label %362

362:                                              ; preds = %350, %361
  br i1 %322, label %363, label %371

363:                                              ; preds = %362
  %364 = load ptr, ptr %14, align 8, !tbaa !143
  %365 = icmp eq ptr %364, %313
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load i64, ptr %314, align 8, !tbaa !146
  %368 = icmp ult i64 %367, 16
  call void @llvm.assume(i1 %368)
  br label %370

369:                                              ; preds = %363
  call void @_ZdlPv(ptr noundef %364) #28
  br label %370

370:                                              ; preds = %366, %369
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #30
  br label %371

371:                                              ; preds = %362, %370
  br i1 %353, label %372, label %397

372:                                              ; preds = %371
  %373 = call ptr @__cxa_allocate_exception(i64 128) #30
  %374 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !127
  %376 = icmp eq ptr %375, null
  %377 = select i1 %376, ptr @.str.39, ptr %375
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %373, ptr noundef nonnull @.str.9, ptr noundef nonnull %377)
          to label %378 unwind label %395

378:                                              ; preds = %372
  call void @__cxa_throw(ptr nonnull %373, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

379:                                              ; preds = %332
  %380 = landingpad { ptr, i32 }
          cleanup
  br label %383

381:                                              ; preds = %340
  %382 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #30
  br label %383

383:                                              ; preds = %381, %379
  %384 = phi { ptr, i32 } [ %382, %381 ], [ %380, %379 ]
  br i1 %322, label %385, label %401

385:                                              ; preds = %383
  %386 = load ptr, ptr %14, align 8, !tbaa !143
  %387 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %388 = icmp eq ptr %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %391 = load i64, ptr %390, align 8, !tbaa !146
  %392 = icmp ult i64 %391, 16
  call void @llvm.assume(i1 %392)
  br label %394

393:                                              ; preds = %385
  call void @_ZdlPv(ptr noundef %386) #28
  br label %394

394:                                              ; preds = %389, %393
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #30
  br label %401

395:                                              ; preds = %372
  %396 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %373) #30
  br label %401

397:                                              ; preds = %371
  %398 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %316) #32
  %399 = icmp eq ptr %398, %308
  br i1 %399, label %400, label %315, !llvm.loop !187

400:                                              ; preds = %397, %305, %115, %303, %20
  ret void

401:                                              ; preds = %395, %394, %383, %301, %300, %235
  %402 = phi { ptr, i32 } [ %302, %301 ], [ %291, %300 ], [ %227, %235 ], [ %396, %395 ], [ %384, %394 ], [ %384, %383 ]
  resume { ptr, i32 } %402
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN24cFileOutputScalarManager15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !156, !range !157, !noundef !148
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  tail call void @_ZN24cFileOutputScalarManager4initEv(ptr noundef nonnull align 8 dereferenceable(140) %0)
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  %24 = icmp eq ptr %23, null
  br i1 %24, label %582, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load ptr, ptr %3, align 8, !tbaa !106
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi ptr [ %2, %25 ], [ %31, %27 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %33, align 1, !tbaa !154
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi ptr [ %33, %35 ], [ @.str.14, %38 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #30
  %41 = load ptr, ptr %1, align 8, !tbaa !106
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %44 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.15)
          to label %45 unwind label %107

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %46, ptr %7, align 8, !tbaa !169, !alias.scope !188
  %47 = load ptr, ptr %44, align 8, !tbaa !143
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 0, i32 2
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !146
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  %54 = add nuw nsw i64 %52, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %46, ptr noundef nonnull align 8 dereferenceable(1) %48, i64 %54, i1 false)
  br label %57

55:                                               ; preds = %45
  store ptr %47, ptr %7, align 8, !tbaa !143, !alias.scope !188
  %56 = load i64, ptr %48, align 8, !tbaa !154
  store i64 %56, ptr %46, align 8, !tbaa !154, !alias.scope !188
  br label %57

57:                                               ; preds = %50, %55
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !146
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %59, ptr %60, align 8, !tbaa !146, !alias.scope !188
  store ptr %48, ptr %44, align 8, !tbaa !143
  store i64 0, ptr %58, align 8, !tbaa !146
  store i8 0, ptr %48, align 8, !tbaa !154
  %61 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %40)
          to label %62 unwind label %109

62:                                               ; preds = %57
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %63, ptr %6, align 8, !tbaa !169, !alias.scope !191
  %64 = load ptr, ptr %61, align 8, !tbaa !143
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 2
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !146
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  %71 = add nuw nsw i64 %69, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %63, ptr noundef nonnull align 8 dereferenceable(1) %65, i64 %71, i1 false)
  br label %74

72:                                               ; preds = %62
  store ptr %64, ptr %6, align 8, !tbaa !143, !alias.scope !191
  %73 = load i64, ptr %65, align 8, !tbaa !154
  store i64 %73, ptr %63, align 8, !tbaa !154, !alias.scope !191
  br label %74

74:                                               ; preds = %67, %72
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !146
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %76, ptr %77, align 8, !tbaa !146, !alias.scope !191
  store ptr %65, ptr %61, align 8, !tbaa !143
  store i64 0, ptr %75, align 8, !tbaa !146
  store i8 0, ptr %65, align 8, !tbaa !154
  %78 = load ptr, ptr %7, align 8, !tbaa !143
  %79 = icmp eq ptr %78, %46
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64, ptr %60, align 8, !tbaa !146
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %74
  call void @_ZdlPv(ptr noundef %78) #28
  br label %84

84:                                               ; preds = %80, %83
  %85 = load ptr, ptr %8, align 8, !tbaa !143
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !146
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  br label %93

92:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %85) #28
  br label %93

93:                                               ; preds = %88, %92
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #30
  %94 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %95 = load ptr, ptr %94, align 8, !tbaa !106
  %96 = getelementptr inbounds ptr, ptr %95, i64 31
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(288) %94)
          to label %99 unwind label %128

99:                                               ; preds = %93
  %100 = load ptr, ptr %6, align 8, !tbaa !143
  %101 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !102
  %102 = load ptr, ptr %98, align 8, !tbaa !106
  %103 = getelementptr inbounds ptr, ptr %102, i64 33
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef %100, ptr noundef %101, i1 noundef zeroext false)
          to label %106 unwind label %128

106:                                              ; preds = %99
  br i1 %105, label %130, label %574

107:                                              ; preds = %39
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %117

109:                                              ; preds = %57
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = load ptr, ptr %7, align 8, !tbaa !143
  %112 = icmp eq ptr %111, %46
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64, ptr %60, align 8, !tbaa !146
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  br label %117

116:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %111) #28
  br label %117

117:                                              ; preds = %116, %113, %107
  %118 = phi { ptr, i32 } [ %108, %107 ], [ %110, %113 ], [ %110, %116 ]
  %119 = load ptr, ptr %8, align 8, !tbaa !143
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %124 = load i64, ptr %123, align 8, !tbaa !146
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %127

126:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %119) #28
  br label %127

127:                                              ; preds = %122, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #30
  br label %591

128:                                              ; preds = %319, %314, %313, %308, %307, %302, %301, %296, %290, %218, %99, %93
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %583

130:                                              ; preds = %106
  %131 = load ptr, ptr %22, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #30
  %132 = load ptr, ptr %1, align 8, !tbaa !106
  %133 = getelementptr inbounds ptr, ptr %132, i64 8
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %135 unwind label %220

135:                                              ; preds = %130
  %136 = load ptr, ptr %9, align 8, !tbaa !143
  %137 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %136)
          to label %138 unwind label %222

138:                                              ; preds = %135
  br i1 %137, label %139, label %145

139:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #30
  %140 = load ptr, ptr %1, align 8, !tbaa !106
  %141 = getelementptr inbounds ptr, ptr %140, i64 8
  %142 = load ptr, ptr %141, align 8
  invoke void %142(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %143 unwind label %224

143:                                              ; preds = %139
  %144 = load ptr, ptr %11, align 8, !tbaa !143
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %144)
          to label %149 unwind label %226

145:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #30
  %146 = load ptr, ptr %1, align 8, !tbaa !106
  %147 = getelementptr inbounds ptr, ptr %146, i64 8
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %149 unwind label %228

149:                                              ; preds = %145, %143
  %150 = phi ptr [ %10, %143 ], [ %12, %145 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !143
  %152 = xor i1 %137, true
  %153 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %40)
          to label %154 unwind label %230

154:                                              ; preds = %149
  br i1 %153, label %155, label %158

155:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #30
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull %40)
          to label %156 unwind label %232

156:                                              ; preds = %155
  %157 = load ptr, ptr %13, align 8, !tbaa !143
  br label %158

158:                                              ; preds = %154, %156
  %159 = phi ptr [ %157, %156 ], [ %40, %154 ]
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.18, ptr noundef %151, ptr noundef %159)
  %161 = icmp slt i32 %160, 0
  br i1 %153, label %162, label %172

162:                                              ; preds = %158
  %163 = load ptr, ptr %13, align 8, !tbaa !143
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !146
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %162
  call void @_ZdlPv(ptr noundef %163) #28
  br label %171

171:                                              ; preds = %166, %170
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #30
  br label %172

172:                                              ; preds = %158, %171
  br i1 %137, label %183, label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %12, align 8, !tbaa !143
  %175 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !146
  %180 = icmp ult i64 %179, 16
  call void @llvm.assume(i1 %180)
  br label %182

181:                                              ; preds = %173
  call void @_ZdlPv(ptr noundef %174) #28
  br label %182

182:                                              ; preds = %177, %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #30
  br label %202

183:                                              ; preds = %172
  %184 = load ptr, ptr %10, align 8, !tbaa !143
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %186 = icmp eq ptr %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !146
  %190 = icmp ult i64 %189, 16
  call void @llvm.assume(i1 %190)
  br label %192

191:                                              ; preds = %183
  call void @_ZdlPv(ptr noundef %184) #28
  br label %192

192:                                              ; preds = %187, %191
  %193 = load ptr, ptr %11, align 8, !tbaa !143
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %195 = icmp eq ptr %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !146
  %199 = icmp ult i64 %198, 16
  call void @llvm.assume(i1 %199)
  br label %201

200:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %193) #28
  br label %201

201:                                              ; preds = %196, %200
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #30
  br label %202

202:                                              ; preds = %182, %201
  %203 = load ptr, ptr %9, align 8, !tbaa !143
  %204 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %205 = icmp eq ptr %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !146
  %209 = icmp ult i64 %208, 16
  call void @llvm.assume(i1 %209)
  br label %211

210:                                              ; preds = %202
  call void @_ZdlPv(ptr noundef %203) #28
  br label %211

211:                                              ; preds = %206, %210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #30
  br i1 %161, label %212, label %290

212:                                              ; preds = %211
  %213 = call ptr @__cxa_allocate_exception(i64 128) #30
  %214 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !127
  %216 = icmp eq ptr %215, null
  %217 = select i1 %216, ptr @.str.39, ptr %215
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %213, ptr noundef nonnull @.str.9, ptr noundef nonnull %217)
          to label %218 unwind label %288

218:                                              ; preds = %212
  invoke void @__cxa_throw(ptr nonnull %213, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
          to label %219 unwind label %128

219:                                              ; preds = %218
  unreachable

220:                                              ; preds = %130
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %286

222:                                              ; preds = %135
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %276

224:                                              ; preds = %139
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %272

226:                                              ; preds = %143
  %227 = landingpad { ptr, i32 }
          cleanup
  br label %260

228:                                              ; preds = %145
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %245

230:                                              ; preds = %149
  %231 = landingpad { ptr, i32 }
          cleanup
  br label %234

232:                                              ; preds = %155
  %233 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #30
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %231, %230 ]
  br i1 %137, label %245, label %236

236:                                              ; preds = %234
  %237 = load ptr, ptr %12, align 8, !tbaa !143
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %239 = icmp eq ptr %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !146
  %243 = icmp ult i64 %242, 16
  call void @llvm.assume(i1 %243)
  br label %245

244:                                              ; preds = %236
  call void @_ZdlPv(ptr noundef %237) #28
  br label %245

245:                                              ; preds = %244, %240, %234, %228
  %246 = phi i1 [ %137, %234 ], [ false, %228 ], [ %137, %240 ], [ %137, %244 ]
  %247 = phi i1 [ %152, %234 ], [ true, %228 ], [ %152, %240 ], [ %152, %244 ]
  %248 = phi { ptr, i32 } [ %235, %234 ], [ %229, %228 ], [ %235, %240 ], [ %235, %244 ]
  br i1 %247, label %249, label %250

249:                                              ; preds = %245
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #30
  br label %250

250:                                              ; preds = %249, %245
  br i1 %246, label %251, label %260

251:                                              ; preds = %250
  %252 = load ptr, ptr %10, align 8, !tbaa !143
  %253 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %254 = icmp eq ptr %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !146
  %258 = icmp ult i64 %257, 16
  call void @llvm.assume(i1 %258)
  br label %260

259:                                              ; preds = %251
  call void @_ZdlPv(ptr noundef %252) #28
  br label %260

260:                                              ; preds = %259, %255, %250, %226
  %261 = phi i1 [ %246, %250 ], [ true, %226 ], [ %246, %255 ], [ %246, %259 ]
  %262 = phi { ptr, i32 } [ %248, %250 ], [ %227, %226 ], [ %248, %255 ], [ %248, %259 ]
  br i1 %261, label %263, label %272

263:                                              ; preds = %260
  %264 = load ptr, ptr %11, align 8, !tbaa !143
  %265 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %266 = icmp eq ptr %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %269 = load i64, ptr %268, align 8, !tbaa !146
  %270 = icmp ult i64 %269, 16
  call void @llvm.assume(i1 %270)
  br label %272

271:                                              ; preds = %263
  call void @_ZdlPv(ptr noundef %264) #28
  br label %272

272:                                              ; preds = %271, %267, %260, %224
  %273 = phi i1 [ %261, %260 ], [ true, %224 ], [ %261, %267 ], [ %261, %271 ]
  %274 = phi { ptr, i32 } [ %262, %260 ], [ %225, %224 ], [ %262, %267 ], [ %262, %271 ]
  br i1 %273, label %275, label %276

275:                                              ; preds = %272
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #30
  br label %276

276:                                              ; preds = %272, %275, %222
  %277 = phi { ptr, i32 } [ %274, %275 ], [ %223, %222 ], [ %274, %272 ]
  %278 = load ptr, ptr %9, align 8, !tbaa !143
  %279 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %280 = icmp eq ptr %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %276
  %282 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %283 = load i64, ptr %282, align 8, !tbaa !146
  %284 = icmp ult i64 %283, 16
  call void @llvm.assume(i1 %284)
  br label %286

285:                                              ; preds = %276
  call void @_ZdlPv(ptr noundef %278) #28
  br label %286

286:                                              ; preds = %285, %281, %220
  %287 = phi { ptr, i32 } [ %221, %220 ], [ %277, %281 ], [ %277, %285 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #30
  br label %583

288:                                              ; preds = %212
  %289 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %213) #30
  br label %583

290:                                              ; preds = %211
  %291 = load ptr, ptr %3, align 8, !tbaa !106
  %292 = getelementptr inbounds ptr, ptr %291, i64 27
  %293 = load ptr, ptr %292, align 8
  %294 = invoke noundef zeroext i1 %293(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %295 unwind label %128

295:                                              ; preds = %290
  br i1 %294, label %296, label %320

296:                                              ; preds = %295
  %297 = load ptr, ptr %3, align 8, !tbaa !106
  %298 = getelementptr inbounds ptr, ptr %297, i64 39
  %299 = load ptr, ptr %298, align 8
  %300 = invoke noundef double %299(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %301 unwind label %128

301:                                              ; preds = %296
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.19, double noundef %300)
          to label %302 unwind label %128

302:                                              ; preds = %301
  %303 = load ptr, ptr %3, align 8, !tbaa !106
  %304 = getelementptr inbounds ptr, ptr %303, i64 40
  %305 = load ptr, ptr %304, align 8
  %306 = invoke noundef double %305(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %307 unwind label %128

307:                                              ; preds = %302
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.20, double noundef %306)
          to label %308 unwind label %128

308:                                              ; preds = %307
  %309 = load ptr, ptr %3, align 8, !tbaa !106
  %310 = getelementptr inbounds ptr, ptr %309, i64 41
  %311 = load ptr, ptr %310, align 8
  %312 = invoke noundef double %311(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %313 unwind label %128

313:                                              ; preds = %308
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.21, double noundef %312)
          to label %314 unwind label %128

314:                                              ; preds = %313
  %315 = load ptr, ptr %3, align 8, !tbaa !106
  %316 = getelementptr inbounds ptr, ptr %315, i64 42
  %317 = load ptr, ptr %316, align 8
  %318 = invoke noundef double %317(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %319 unwind label %128

319:                                              ; preds = %314
  invoke void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull @.str.22, double noundef %318)
          to label %320 unwind label %128

320:                                              ; preds = %319, %295
  %321 = icmp eq ptr %4, null
  br i1 %321, label %429, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds i8, ptr %4, i64 24
  %324 = load ptr, ptr %323, align 8, !tbaa !130
  %325 = getelementptr inbounds i8, ptr %4, i64 8
  %326 = icmp eq ptr %324, %325
  br i1 %326, label %429, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %329 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %330 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %331 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  br label %332

332:                                              ; preds = %327, %426
  %333 = phi ptr [ %324, %327 ], [ %427, %426 ]
  %334 = load ptr, ptr %22, align 8, !tbaa !140
  %335 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %333, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !127
  %337 = icmp eq ptr %336, null
  %338 = select i1 %337, ptr @.str.39, ptr %336
  %339 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %338)
          to label %340 unwind label %399

340:                                              ; preds = %332
  br i1 %339, label %341, label %347

341:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #30
  %342 = load ptr, ptr %335, align 8, !tbaa !127
  %343 = icmp eq ptr %342, null
  %344 = select i1 %343, ptr @.str.39, ptr %342
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull %344)
          to label %345 unwind label %403

345:                                              ; preds = %341
  %346 = load ptr, ptr %14, align 8, !tbaa !143
  br label %351

347:                                              ; preds = %340
  %348 = load ptr, ptr %335, align 8, !tbaa !127
  %349 = icmp eq ptr %348, null
  %350 = select i1 %349, ptr @.str.39, ptr %348
  br label %351

351:                                              ; preds = %347, %345
  %352 = phi ptr [ %346, %345 ], [ %350, %347 ]
  %353 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %333, i64 0, i32 1, i32 0, i64 8
  %354 = load ptr, ptr %353, align 8, !tbaa !127
  %355 = icmp eq ptr %354, null
  %356 = select i1 %355, ptr @.str.39, ptr %354
  %357 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %356)
          to label %358 unwind label %405

358:                                              ; preds = %351
  br i1 %357, label %359, label %365

359:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #30
  %360 = load ptr, ptr %353, align 8, !tbaa !127
  %361 = icmp eq ptr %360, null
  %362 = select i1 %361, ptr @.str.39, ptr %360
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull %362)
          to label %363 unwind label %407

363:                                              ; preds = %359
  %364 = load ptr, ptr %15, align 8, !tbaa !143
  br label %369

365:                                              ; preds = %358
  %366 = load ptr, ptr %353, align 8, !tbaa !127
  %367 = icmp eq ptr %366, null
  %368 = select i1 %367, ptr @.str.39, ptr %366
  br label %369

369:                                              ; preds = %365, %363
  %370 = phi ptr [ %364, %363 ], [ %368, %365 ]
  %371 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %334, ptr noundef nonnull @.str.17, ptr noundef %352, ptr noundef %370)
  %372 = icmp slt i32 %371, 0
  br i1 %357, label %373, label %381

373:                                              ; preds = %369
  %374 = load ptr, ptr %15, align 8, !tbaa !143
  %375 = icmp eq ptr %374, %328
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i64, ptr %329, align 8, !tbaa !146
  %378 = icmp ult i64 %377, 16
  call void @llvm.assume(i1 %378)
  br label %380

379:                                              ; preds = %373
  call void @_ZdlPv(ptr noundef %374) #28
  br label %380

380:                                              ; preds = %376, %379
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #30
  br label %381

381:                                              ; preds = %369, %380
  br i1 %339, label %382, label %390

382:                                              ; preds = %381
  %383 = load ptr, ptr %14, align 8, !tbaa !143
  %384 = icmp eq ptr %383, %330
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i64, ptr %331, align 8, !tbaa !146
  %387 = icmp ult i64 %386, 16
  call void @llvm.assume(i1 %387)
  br label %389

388:                                              ; preds = %382
  call void @_ZdlPv(ptr noundef %383) #28
  br label %389

389:                                              ; preds = %385, %388
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #30
  br label %390

390:                                              ; preds = %381, %389
  br i1 %372, label %391, label %426

391:                                              ; preds = %390
  %392 = call ptr @__cxa_allocate_exception(i64 128) #30
  %393 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !127
  %395 = icmp eq ptr %394, null
  %396 = select i1 %395, ptr @.str.39, ptr %394
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %392, ptr noundef nonnull @.str.9, ptr noundef nonnull %396)
          to label %397 unwind label %424

397:                                              ; preds = %391
  invoke void @__cxa_throw(ptr nonnull %392, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
          to label %398 unwind label %401

398:                                              ; preds = %397
  unreachable

399:                                              ; preds = %332
  %400 = landingpad { ptr, i32 }
          cleanup
  br label %583

401:                                              ; preds = %397
  %402 = landingpad { ptr, i32 }
          cleanup
  br label %583

403:                                              ; preds = %341
  %404 = landingpad { ptr, i32 }
          cleanup
  br label %420

405:                                              ; preds = %351
  %406 = landingpad { ptr, i32 }
          cleanup
  br label %409

407:                                              ; preds = %359
  %408 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #30
  br label %409

409:                                              ; preds = %407, %405
  %410 = phi { ptr, i32 } [ %408, %407 ], [ %406, %405 ]
  br i1 %339, label %411, label %420

411:                                              ; preds = %409
  %412 = load ptr, ptr %14, align 8, !tbaa !143
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %414 = icmp eq ptr %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !146
  %418 = icmp ult i64 %417, 16
  call void @llvm.assume(i1 %418)
  br label %420

419:                                              ; preds = %411
  call void @_ZdlPv(ptr noundef %412) #28
  br label %420

420:                                              ; preds = %419, %415, %409, %403
  %421 = phi i1 [ %339, %409 ], [ true, %403 ], [ %339, %415 ], [ %339, %419 ]
  %422 = phi { ptr, i32 } [ %410, %409 ], [ %404, %403 ], [ %410, %415 ], [ %410, %419 ]
  br i1 %421, label %423, label %583

423:                                              ; preds = %420
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #30
  br label %583

424:                                              ; preds = %391
  %425 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %392) #30
  br label %583

426:                                              ; preds = %390
  %427 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %333) #32
  %428 = icmp eq ptr %427, %325
  br i1 %428, label %429, label %332, !llvm.loop !194

429:                                              ; preds = %426, %322, %320
  %430 = call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI10cStatistic, ptr nonnull @_ZTI15cDensityEstBase, i64 0) #30
  %431 = icmp eq ptr %430, null
  br i1 %431, label %574, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !102
  %434 = load ptr, ptr %433, align 8, !tbaa !106
  %435 = getelementptr inbounds ptr, ptr %434, i64 31
  %436 = load ptr, ptr %435, align 8
  %437 = invoke noundef ptr %436(ptr noundef nonnull align 8 dereferenceable(288) %433)
          to label %438 unwind label %494

438:                                              ; preds = %432
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %439 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %439, ptr %16, align 8, !tbaa !169, !alias.scope !195
  %440 = load ptr, ptr %6, align 8, !tbaa !143, !noalias !195
  %441 = load i64, ptr %77, align 8, !tbaa !146, !noalias !195
  %442 = getelementptr inbounds i8, ptr %440, i64 %441
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %440, ptr noundef %442)
          to label %443 unwind label %496

443:                                              ; preds = %438
  %444 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.23)
          to label %454 unwind label %445

445:                                              ; preds = %443
  %446 = landingpad { ptr, i32 }
          cleanup
  %447 = load ptr, ptr %16, align 8, !tbaa !143, !alias.scope !195
  %448 = icmp eq ptr %447, %439
  br i1 %448, label %449, label %453

449:                                              ; preds = %445
  %450 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %451 = load i64, ptr %450, align 8, !tbaa !146, !alias.scope !195
  %452 = icmp ult i64 %451, 16
  call void @llvm.assume(i1 %452)
  br label %507

453:                                              ; preds = %445
  call void @_ZdlPv(ptr noundef %447) #28
  br label %507

454:                                              ; preds = %443
  %455 = load ptr, ptr %16, align 8, !tbaa !143
  %456 = load ptr, ptr @CFGID_SCALAR_RECORDING, align 8, !tbaa !102
  %457 = load ptr, ptr %437, align 8, !tbaa !106
  %458 = getelementptr inbounds ptr, ptr %457, i64 33
  %459 = load ptr, ptr %458, align 8
  %460 = invoke noundef zeroext i1 %459(ptr noundef nonnull align 8 dereferenceable(8) %437, ptr noundef %455, ptr noundef %456, i1 noundef zeroext false)
          to label %461 unwind label %498

461:                                              ; preds = %454
  %462 = load ptr, ptr %16, align 8, !tbaa !143
  %463 = icmp eq ptr %462, %439
  br i1 %463, label %464, label %468

464:                                              ; preds = %461
  %465 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %466 = load i64, ptr %465, align 8, !tbaa !146
  %467 = icmp ult i64 %466, 16
  call void @llvm.assume(i1 %467)
  br label %469

468:                                              ; preds = %461
  call void @_ZdlPv(ptr noundef %462) #28
  br label %469

469:                                              ; preds = %464, %468
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #30
  br i1 %460, label %470, label %574

470:                                              ; preds = %469
  %471 = load ptr, ptr %3, align 8, !tbaa !106
  %472 = getelementptr inbounds ptr, ptr %471, i64 59
  %473 = load ptr, ptr %472, align 8
  %474 = invoke noundef i32 %473(ptr noundef nonnull align 8 dereferenceable(168) %3)
          to label %475 unwind label %509

475:                                              ; preds = %470
  %476 = icmp sgt i32 %474, 0
  br i1 %476, label %477, label %574

477:                                              ; preds = %475
  %478 = load ptr, ptr %22, align 8, !tbaa !140
  %479 = load ptr, ptr %3, align 8, !tbaa !106
  %480 = getelementptr inbounds ptr, ptr %479, i64 63
  %481 = load ptr, ptr %480, align 8
  %482 = invoke noundef i64 %481(ptr noundef nonnull align 8 dereferenceable(168) %3)
          to label %483 unwind label %509

483:                                              ; preds = %477
  %484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull @.str.24, i64 noundef %482)
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %483
  %487 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  br label %524

488:                                              ; preds = %483
  %489 = call ptr @__cxa_allocate_exception(i64 128) #30
  %490 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !127
  %492 = icmp eq ptr %491, null
  %493 = select i1 %492, ptr @.str.39, ptr %491
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %489, ptr noundef nonnull @.str.9, ptr noundef nonnull %493)
          to label %569 unwind label %511

494:                                              ; preds = %432
  %495 = landingpad { ptr, i32 }
          cleanup
  br label %583

496:                                              ; preds = %438
  %497 = landingpad { ptr, i32 }
          cleanup
  br label %507

498:                                              ; preds = %454
  %499 = landingpad { ptr, i32 }
          cleanup
  %500 = load ptr, ptr %16, align 8, !tbaa !143
  %501 = icmp eq ptr %500, %439
  br i1 %501, label %502, label %506

502:                                              ; preds = %498
  %503 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %504 = load i64, ptr %503, align 8, !tbaa !146
  %505 = icmp ult i64 %504, 16
  call void @llvm.assume(i1 %505)
  br label %507

506:                                              ; preds = %498
  call void @_ZdlPv(ptr noundef %500) #28
  br label %507

507:                                              ; preds = %506, %502, %496, %453, %449
  %508 = phi { ptr, i32 } [ %497, %496 ], [ %446, %453 ], [ %446, %449 ], [ %499, %502 ], [ %499, %506 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #30
  br label %583

509:                                              ; preds = %569, %555, %516, %477, %470
  %510 = landingpad { ptr, i32 }
          cleanup
  br label %583

511:                                              ; preds = %488
  %512 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %489) #30
  br label %583

513:                                              ; preds = %538
  %514 = add nuw nsw i32 %525, 1
  %515 = icmp eq i32 %514, %474
  br i1 %515, label %516, label %524, !llvm.loop !198

516:                                              ; preds = %513
  %517 = load ptr, ptr %22, align 8, !tbaa !140
  %518 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %519 = load i32, ptr %518, align 8, !tbaa !135
  %520 = load ptr, ptr %3, align 8, !tbaa !106
  %521 = getelementptr inbounds ptr, ptr %520, i64 60
  %522 = load ptr, ptr %521, align 8
  %523 = invoke noundef double %522(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %474)
          to label %555 unwind label %509

524:                                              ; preds = %486, %513
  %525 = phi i32 [ 0, %486 ], [ %514, %513 ]
  %526 = load ptr, ptr %22, align 8, !tbaa !140
  %527 = load i32, ptr %487, align 8, !tbaa !135
  %528 = load ptr, ptr %3, align 8, !tbaa !106
  %529 = getelementptr inbounds ptr, ptr %528, i64 60
  %530 = load ptr, ptr %529, align 8
  %531 = invoke noundef double %530(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %525)
          to label %532 unwind label %549

532:                                              ; preds = %524
  %533 = load i32, ptr %487, align 8, !tbaa !135
  %534 = load ptr, ptr %3, align 8, !tbaa !106
  %535 = getelementptr inbounds ptr, ptr %534, i64 61
  %536 = load ptr, ptr %535, align 8
  %537 = invoke noundef double %536(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %525)
          to label %538 unwind label %549

538:                                              ; preds = %532
  %539 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.25, i32 noundef %527, double noundef %531, i32 noundef %533, double noundef %537)
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %513

541:                                              ; preds = %538
  %542 = call ptr @__cxa_allocate_exception(i64 128) #30
  %543 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !127
  %545 = icmp eq ptr %544, null
  %546 = select i1 %545, ptr @.str.39, ptr %544
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %542, ptr noundef nonnull @.str.9, ptr noundef nonnull %546)
          to label %547 unwind label %553

547:                                              ; preds = %541
  invoke void @__cxa_throw(ptr nonnull %542, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
          to label %548 unwind label %551

548:                                              ; preds = %547
  unreachable

549:                                              ; preds = %524, %532
  %550 = landingpad { ptr, i32 }
          cleanup
  br label %583

551:                                              ; preds = %547
  %552 = landingpad { ptr, i32 }
          cleanup
  br label %583

553:                                              ; preds = %541
  %554 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %542) #30
  br label %583

555:                                              ; preds = %516
  %556 = load ptr, ptr %3, align 8, !tbaa !106
  %557 = getelementptr inbounds ptr, ptr %556, i64 64
  %558 = load ptr, ptr %557, align 8
  %559 = invoke noundef i64 %558(ptr noundef nonnull align 8 dereferenceable(168) %3)
          to label %560 unwind label %509

560:                                              ; preds = %555
  %561 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %517, ptr noundef nonnull @.str.26, i32 noundef %519, double noundef %523, i64 noundef %559)
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %574

563:                                              ; preds = %560
  %564 = call ptr @__cxa_allocate_exception(i64 128) #30
  %565 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %566 = load ptr, ptr %565, align 8, !tbaa !127
  %567 = icmp eq ptr %566, null
  %568 = select i1 %567, ptr @.str.39, ptr %566
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %564, ptr noundef nonnull @.str.9, ptr noundef nonnull %568)
          to label %569 unwind label %572

569:                                              ; preds = %488, %563
  %570 = phi ptr [ %564, %563 ], [ %489, %488 ]
  invoke void @__cxa_throw(ptr nonnull %570, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
          to label %571 unwind label %509

571:                                              ; preds = %569
  unreachable

572:                                              ; preds = %563
  %573 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %564) #30
  br label %583

574:                                              ; preds = %429, %475, %560, %469, %106
  %575 = load ptr, ptr %6, align 8, !tbaa !143
  %576 = icmp eq ptr %575, %63
  br i1 %576, label %577, label %580

577:                                              ; preds = %574
  %578 = load i64, ptr %77, align 8, !tbaa !146
  %579 = icmp ult i64 %578, 16
  call void @llvm.assume(i1 %579)
  br label %581

580:                                              ; preds = %574
  call void @_ZdlPv(ptr noundef %575) #28
  br label %581

581:                                              ; preds = %577, %580
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  br label %582

582:                                              ; preds = %21, %581
  ret void

583:                                              ; preds = %549, %551, %399, %401, %424, %423, %420, %494, %507, %553, %572, %511, %509, %288, %286, %128
  %584 = phi { ptr, i32 } [ %129, %128 ], [ %289, %288 ], [ %287, %286 ], [ %508, %507 ], [ %495, %494 ], [ %510, %509 ], [ %512, %511 ], [ %573, %572 ], [ %554, %553 ], [ %425, %424 ], [ %422, %423 ], [ %422, %420 ], [ %400, %399 ], [ %402, %401 ], [ %550, %549 ], [ %552, %551 ]
  %585 = load ptr, ptr %6, align 8, !tbaa !143
  %586 = icmp eq ptr %585, %63
  br i1 %586, label %587, label %590

587:                                              ; preds = %583
  %588 = load i64, ptr %77, align 8, !tbaa !146
  %589 = icmp ult i64 %588, 16
  call void @llvm.assume(i1 %589)
  br label %591

590:                                              ; preds = %583
  call void @_ZdlPv(ptr noundef %585) #28
  br label %591

591:                                              ; preds = %590, %587, %127
  %592 = phi { ptr, i32 } [ %118, %127 ], [ %584, %587 ], [ %584, %590 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #30
  resume { ptr, i32 } %592
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN24cFileOutputScalarManager19writeStatisticFieldEPKcd(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %1)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #30
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %1)
  %9 = load ptr, ptr %4, align 8, !tbaa !143
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %12 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !135
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.43, ptr noundef %11, i32 noundef %13, double noundef %2)
  %15 = icmp slt i32 %14, 0
  br i1 %7, label %16, label %26

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !143
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !146
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  call void @_ZdlPv(ptr noundef %17) #28
  br label %25

25:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #30
  br label %26

26:                                               ; preds = %10, %25
  br i1 %15, label %27, label %36

27:                                               ; preds = %26
  %28 = call ptr @__cxa_allocate_exception(i64 128) #30
  %29 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.39, ptr %30
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef nonnull @.str.9, ptr noundef nonnull %32)
          to label %33 unwind label %34

33:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #31
  unreachable

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #30
  resume { ptr, i32 } %35

36:                                               ; preds = %26
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZNK24cFileOutputScalarManager11getFileNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(140) %0) unnamed_addr #15 align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.39, ptr %3
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN24cFileOutputScalarManager5flushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(140) %0) unnamed_addr #5 align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cFileOutputScalarManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fflush(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #9

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  ret ptr @.str.39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 !prof !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !200
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #16 comdat align 2 !prof !201 {
  ret i1 false
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_48v() #3 personality ptr @__gxx_personality_v0 !prof !99 !PGOFuncName !202 {
  %1 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #27
  invoke void @_ZN24cFileOutputScalarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(140) %1)
          to label %2 unwind label %3, !prof !101

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %1) #28
  resume { ptr, i32 } %4
}

declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !203 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !204

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  tail call void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !207, !llvm.loop !208

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !210

7:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef %5) #28
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !211

11:                                               ; preds = %8
  tail call void @_ZdaPv(ptr noundef %9) #28
  br label %12

12:                                               ; preds = %8, %11
  tail call void @_ZdlPv(ptr noundef %1) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !106
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !101

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !146
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #28
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !101

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !146
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #28
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !143
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !141

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !146
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #28
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #30
  tail call void @_ZdlPv(ptr noundef %0) #28
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #28
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !212
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !142 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !146
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.40)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !169, !alias.scope !215
  %10 = load ptr, ptr %7, align 8, !tbaa !143
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !146
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !143, !alias.scope !215
  %19 = load i64, ptr %11, align 8, !tbaa !154
  store i64 %19, ptr %9, align 8, !tbaa !154, !alias.scope !215
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !146
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !146, !alias.scope !215
  store ptr %11, ptr %7, align 8, !tbaa !143
  store i64 0, ptr %21, align 8, !tbaa !146
  store i8 0, ptr %11, align 8, !tbaa !154
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !146, !noalias !218
  %27 = load i64, ptr %23, align 8, !tbaa !146, !noalias !218
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #31
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !143, !noalias !218
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !169, !alias.scope !218
  %37 = load ptr, ptr %34, align 8, !tbaa !143
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !146
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !143, !alias.scope !218
  %46 = load i64, ptr %38, align 8, !tbaa !154
  store i64 %46, ptr %36, align 8, !tbaa !154, !alias.scope !218
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !146
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !146, !alias.scope !218
  store ptr %38, ptr %34, align 8, !tbaa !143
  store i64 0, ptr %48, align 8, !tbaa !146
  store i8 0, ptr %38, align 8, !tbaa !154
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #30
  %52 = load ptr, ptr %3, align 8, !tbaa !143
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !146
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #28
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !143
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !146
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #28
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !143
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !146
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #28
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #30
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !143
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !146
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #28
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !143
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !146
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #28
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #30
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !221, !range !157, !noundef !148
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !222
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !169
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #31
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  store i64 %9, ptr %4, align 8, !tbaa !223
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !224

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !143
  %13 = load i64, ptr %4, align 8, !tbaa !223
  store i64 %13, ptr %5, align 8, !tbaa !154
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !143
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !225

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !154
  store i8 %17, ptr %15, align 1, !tbaa !154
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !226
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !223
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !146
  %22 = load ptr, ptr %0, align 8, !tbaa !143
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !227 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !223
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !228

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !143
  %11 = load i64, ptr %4, align 8, !tbaa !223
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !154
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !143
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !229

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !154
  store i8 %16, ptr %14, align 1, !tbaa !154
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !230
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !223
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !146
  %21 = load ptr, ptr %0, align 8, !tbaa !143
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_fileoutscalarmgr.cc() #23 section ".text.startup" !prof !99 !PGOFuncName !231 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #30
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_42Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr nonnull @__dso_handle) #30
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_43Ev)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr nonnull @__dso_handle) #30
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_44E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_44Ev)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_44E, ptr nonnull @__dso_handle) #30
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #30
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_48E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_48Ev)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_48E, ptr nonnull @__dso_handle) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!98}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
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
!51 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZdaPv, i64 2}
!52 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, i64 2}
!53 = !{ptr @_ZN24cFileOutputScalarManagerD2Ev, ptr @_ZN7cObjectD2Ev, i64 1}
!54 = !{ptr @_ZN24cFileOutputScalarManagerD0Ev, ptr @_ZN24cFileOutputScalarManagerD2Ev, i64 1}
!55 = !{ptr @_ZN24cFileOutputScalarManagerD0Ev, ptr @_ZdlPv, i64 1}
!56 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_Z11directoryOfB5cxx11PKc, i64 1}
!57 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_Z6mkPathPKc, i64 1}
!58 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @_ZdlPv, i64 1}
!59 = !{ptr @_ZN24cFileOutputScalarManager8openFileEv, ptr @fopen, i64 1}
!60 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN10opp_stringaSEPKc, i64 1}
!61 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZdlPv, i64 1}
!62 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @__dynamic_cast, i64 1}
!63 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_Z10removeFilePKcS0_, i64 1}
!64 = !{ptr @_ZN24cFileOutputScalarManager8startRunEv, ptr @_ZN8sRunData5resetEv, i64 1}
!65 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 4}
!66 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strlen, i64 325614}
!67 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Znam, i64 325614}
!68 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strcpy, i64 325614}
!69 = !{ptr @_ZN24cFileOutputScalarManager6endRunEv, ptr @fclose, i64 1}
!70 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZN24cFileOutputScalarManager8openFileEv, i64 1}
!71 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @fprintf, i64 1}
!72 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZN8sRunData7initRunEv, i64 1}
!73 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZN10opp_stringC2ERKS_, i64 1}
!74 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZN8sRunData12writeRunDataEP8_IO_FILE10opp_string, i64 1}
!75 = !{ptr @_ZN24cFileOutputScalarManager4initEv, ptr @_ZdaPv, i64 1}
!76 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @strlen, i64 28}
!77 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @_Znam, i64 28}
!78 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @strcpy, i64 28}
!79 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN24cFileOutputScalarManager4initEv, i64 1}
!80 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 544308}
!81 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @strlen, i64 272154}
!82 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZdlPv, i64 983032}
!83 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_Z15opp_needsquotesPKc, i64 544306}
!84 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_Z12opp_quotestrB5cxx11PKc, i64 254669}
!85 = !{ptr @_ZN24cFileOutputScalarManager12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @fprintf, i64 272153}
!86 = !{ptr @_ZL15__uniquename_48v, ptr @_Znwm, i64 1}
!87 = !{ptr @_ZL15__uniquename_48v, ptr @_ZN24cFileOutputScalarManagerC2Ev, i64 1}
!88 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, i64 14}
!89 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, i64 14}
!90 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZdaPv, i64 26}
!91 = !{ptr @_ZNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZdlPv, i64 14}
!92 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!93 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!94 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!95 = !{ptr @_GLOBAL__sub_I_fileoutscalarmgr.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!96 = !{ptr @_GLOBAL__sub_I_fileoutscalarmgr.cc, ptr @__cxa_atexit, i64 6}
!97 = !{ptr @_GLOBAL__sub_I_fileoutscalarmgr.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 5}
!98 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!99 = !{!"function_entry_count", i64 1}
!100 = !{!"simulator/fileoutscalarmgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_42Ev"}
!101 = !{!"branch_weights", i32 1, i32 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"any pointer", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C++ TBAA"}
!106 = !{!107, !107, i64 0}
!107 = !{!"vtable pointer", !105, i64 0}
!108 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!109 = !{!"simulator/fileoutscalarmgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_43Ev"}
!110 = !{!"simulator/fileoutscalarmgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_44Ev"}
!111 = !{!"simulator/fileoutscalarmgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!112 = !{!"simulator/fileoutscalarmgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_48Ev"}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTS8sRunData", !115, i64 0, !116, i64 8, !117, i64 16, !117, i64 64}
!115 = !{!"bool", !104, i64 0}
!116 = !{!"_ZTS10opp_string", !103, i64 0}
!117 = !{!"_ZTS14opp_string_map", !118, i64 0}
!118 = !{!"_ZTSSt3mapI10opp_stringS0_St4lessIS0_ESaISt4pairIKS0_S0_EEE", !119, i64 0}
!119 = !{!"_ZTSSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE", !120, i64 0}
!120 = !{!"_ZTSNSt8_Rb_treeI10opp_stringSt4pairIKS0_S0_ESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !121, i64 0, !123, i64 8}
!121 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI10opp_stringEE", !122, i64 0}
!122 = !{!"_ZTSSt4lessI10opp_stringE"}
!123 = !{!"_ZTSSt15_Rb_tree_header", !124, i64 0, !126, i64 32}
!124 = !{!"_ZTSSt18_Rb_tree_node_base", !125, i64 0, !103, i64 8, !103, i64 16, !103, i64 24}
!125 = !{!"_ZTSSt14_Rb_tree_color", !104, i64 0}
!126 = !{!"long", !104, i64 0}
!127 = !{!116, !103, i64 0}
!128 = !{!123, !125, i64 0}
!129 = !{!123, !103, i64 8}
!130 = !{!123, !103, i64 16}
!131 = !{!123, !103, i64 24}
!132 = !{!123, !126, i64 32}
!133 = !{!"VP", i32 0, i64 1, i64 5711233572888515993, i64 1}
!134 = !{!"VP", i32 0, i64 1, i64 8183421150609379983, i64 1}
!135 = !{!136, !139, i64 136}
!136 = !{!"_ZTS24cFileOutputScalarManager", !137, i64 0, !114, i64 8, !116, i64 120, !103, i64 128, !139, i64 136}
!137 = !{!"_ZTS20cOutputScalarManager", !138, i64 0}
!138 = !{!"_ZTS7cObject"}
!139 = !{!"int", !104, i64 0}
!140 = !{!136, !103, i64 128}
!141 = !{!"branch_weights", i32 0, i32 1}
!142 = !{!"function_entry_count", i64 0}
!143 = !{!144, !103, i64 0}
!144 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !145, i64 0, !126, i64 8, !104, i64 16}
!145 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !103, i64 0}
!146 = !{!144, !126, i64 8}
!147 = !{!"VP", i32 0, i64 1, i64 6480404096287375148, i64 1}
!148 = !{}
!149 = !{!"VP", i32 0, i64 1, i64 5593542245258054046, i64 1}
!150 = !{!"VP", i32 0, i64 1, i64 -3673875820843190650, i64 1}
!151 = !{!"function_entry_count", i64 325620}
!152 = !{!"branch_weights", i32 325616, i32 4}
!153 = !{!"branch_weights", i32 0, i32 325620}
!154 = !{!104, !104, i64 0}
!155 = !{!"branch_weights", i32 6, i32 325614}
!156 = !{!136, !115, i64 8}
!157 = !{i8 0, i8 2}
!158 = !{!"VP", i32 0, i64 1, i64 5977083319438428675, i64 1}
!159 = !{!"VP", i32 0, i64 1, i64 -4673734213955557461, i64 1}
!160 = !{!161, !103, i64 8}
!161 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!162 = !{!161, !103, i64 0}
!163 = distinct !{!163, !164, !165}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{!"llvm.loop.unroll.disable"}
!166 = !{!"function_entry_count", i64 40}
!167 = !{!"branch_weights", i32 12, i32 28}
!168 = !{!"branch_weights", i32 0, i32 28}
!169 = !{!145, !103, i64 0}
!170 = !{!"function_entry_count", i64 272154}
!171 = !{!"branch_weights", i32 1, i32 272153}
!172 = !{!"branch_weights", i32 0, i32 272154}
!173 = !{!"VP", i32 0, i64 272154, i64 5711233572888515993, i64 272154}
!174 = !{!"VP", i32 0, i64 272154, i64 712553159999434609, i64 272154}
!175 = !{!"branch_weights", i32 0, i32 2138389}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!178 = distinct !{!178, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!181 = distinct !{!181, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!182 = !{!"VP", i32 0, i64 272154, i64 -3071762857410005461, i64 272154}
!183 = !{!"branch_weights", i32 272154, i32 0}
!184 = !{!"branch_weights", i32 254670, i32 17484}
!185 = !{!"branch_weights", i32 254670, i32 0}
!186 = !{!"branch_weights", i32 88096, i32 166574}
!187 = distinct !{!187, !164, !165}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!190 = distinct !{!190, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!193 = distinct !{!193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!194 = distinct !{!194, !164, !165}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!197 = distinct !{!197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!198 = distinct !{!198, !164, !165}
!199 = !{!"function_entry_count", i64 235321}
!200 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!201 = !{!"function_entry_count", i64 26398}
!202 = !{!"simulator/fileoutscalarmgr.cc;_ZL15__uniquename_48v"}
!203 = !{!"function_entry_count", i64 112716}
!204 = !{!"branch_weights", i32 112702, i32 14}
!205 = !{!124, !103, i64 24}
!206 = !{!124, !103, i64 16}
!207 = !{!"branch_weights", i32 14, i32 0}
!208 = distinct !{!208, !164, !165}
!209 = !{!"function_entry_count", i64 14}
!210 = !{!"branch_weights", i32 2, i32 12}
!211 = !{!"branch_weights", i32 0, i32 14}
!212 = !{!213, !139, i64 8}
!213 = !{!"_ZTS10cException", !214, i64 0, !139, i64 8, !144, i64 16, !115, i64 48, !144, i64 56, !144, i64 88, !139, i64 120}
!214 = !{!"_ZTSSt9exception"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!217 = distinct !{!217, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!220 = distinct !{!220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!221 = !{!213, !115, i64 48}
!222 = !{!213, !139, i64 120}
!223 = !{!126, !126, i64 0}
!224 = !{!"branch_weights", i32 1257662, i32 631781}
!225 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!226 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!227 = !{!"function_entry_count", i64 1974042}
!228 = !{!"branch_weights", i32 1399683, i32 574359}
!229 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!230 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!231 = !{!"simulator/fileoutscalarmgr.cc;_GLOBAL__sub_I_fileoutscalarmgr.cc"}
