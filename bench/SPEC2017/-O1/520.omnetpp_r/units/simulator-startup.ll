; ModuleID = 'simulator/startup.cc'
source_filename = "simulator/startup.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.8" = type { %"struct.std::less.9" }
%"struct.std::less.9" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cOmnetAppRegistration = type <{ %class.cOwnedObject.base, [4 x i8], ptr, %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.ArgList = type { i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::map", %"class.std::map.3", %"class.std::vector" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%class.Speedometer = type { i8, i64, %class.SimTime, %class.SimTime, %struct.timeval, double, double, double }
%class.SimTime = type { i64 }
%struct.timeval = type { i64, i64 }
%class.cFileOutputVectorManager = type <{ %class.cOutputVectorManager, %struct.sRunData, i32, [4 x i8], %class.opp_string, ptr, i32, [4 x i8] }>
%class.cOutputVectorManager = type { %class.cObject }
%struct.sRunData = type { i8, %class.opp_string, %class.opp_string_map, %class.opp_string_map }
%class.opp_string_map = type { %"class.std::map.59" }
%"class.std::map.59" = type { %"class.std::_Rb_tree.60" }
%"class.std::_Rb_tree.60" = type { %"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.64", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.64" = type { %"struct.std::less.65" }
%"struct.std::less.65" = type { i8 }
%class.opp_string = type { ptr }
%class.cFileOutputScalarManager = type <{ %class.cOutputScalarManager, %struct.sRunData, %class.opp_string, ptr, i32, [4 x i8] }>
%class.cOutputScalarManager = type { %class.cObject }
%class.cFileSnapshotManager = type { %class.cSnapshotManager, %class.opp_string }
%class.cSnapshotManager = type { %class.cObject }
%class.cIndexedFileOutputVectorManager = type { %class.cFileOutputVectorManager.base, %class.opp_string, ptr, i64, i64, %"class.std::vector.67" }
%class.cFileOutputVectorManager.base = type <{ %class.cOutputVectorManager, %struct.sRunData, i32, [4 x i8], %class.opp_string, ptr, i32 }>
%"class.std::vector.67" = type { %"struct.std::_Vector_base.68" }
%"struct.std::_Vector_base.68" = type { %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl" }
%"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MatchableObjectAdapter = type { %"class.MatchExpression::Matchable", i32, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.MatchExpression::Matchable" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%"struct.std::_Rb_tree_node.72" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.73" }
%"struct.__gnu_cxx::__aligned_membuf.73" = type { [32 x i8] }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

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

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_LOAD_LIBS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_41E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_CONFIGURATION_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_42E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_USER_INTERFACE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_43E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTISt9exception = external constant ptr
@.str = private unnamed_addr constant [23 x i8] c"h?f:u:l:c:r:p:n:x:agGv\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"omnetpp.ini\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Class \22%s\22 is not subclassed from cConfigurationEx\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@omnetapps = external global %class.cGlobalRegistrationList, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"Cmdenv\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" cmdenv-*\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Tkenv\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" tkenv-*\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"\0AUser interface '%s' not found (not linked in or loaded dynamically).\0AAvailable ones are:\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  %s : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Could not start user interface '%s'\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"No user interface (Cmdenv, Tkenv, etc.) found\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Setting up %s...\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"\0A<!> Error during startup: %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"simulation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"\0A<!> %s.\0A\00", align 1
@componentTypes = external global %class.cGlobalRegistrationList, align 8
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@enums = external global %class.cGlobalRegistrationList, align 8
@classDescriptors = external global %class.cGlobalRegistrationList, align 8
@configOptions = external global %class.cGlobalRegistrationList, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"load-libs\00", align 1
@.str.21 = private unnamed_addr constant [174 x i8] c"A space-separated list of dynamic libraries to be loaded on startup. The libraries should be given without the `.dll' or `.so' suffix -- that will be automatically appended.\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"configuration-class\00", align 1
@.str.23 = private unnamed_addr constant [382 x i8] c"Part of the Envir plugin mechanism: selects the class from which all configuration information will be obtained. This option lets you replace omnetpp.ini with some other implementation, e.g. database input. The simulation program still has to bootstrap from an omnetpp.ini (which contains the configuration-class setting). The class should implement the cConfigurationEx interface.\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"user-interface\00", align 1
@.str.25 = private unnamed_addr constant [299 x i8] c"Selects the user interface to be started. Possible values are Cmdenv and Tkenv. This option is normally left empty, as it is more convenient to specify the user interface via a command-line option or the IDE's Run and Debug dialogs. New user interfaces can be defined by subclassing cRunnableEnvir.\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTV22MatchableObjectAdapter = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTV31cIndexedFileOutputVectorManager = external unnamed_addr constant { [36 x ptr] }, align 8
@.str.31 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_startup.cc, ptr null }]
@str = private unnamed_addr constant [104 x i8] c"INTERNAL ERROR: INT64_PRINTF_FORMAT incorrectly defined in include/inttypes.h, please report this bug!\0A\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_41Ev() #3 personality ptr @__gxx_personality_v0 !prof !81 !PGOFuncName !82 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.20, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 5, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21)
          to label %3 unwind label %7, !prof !83

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !84
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !90
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #20
  resume { ptr, i32 } %8
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_42Ev() #3 personality ptr @__gxx_personality_v0 !prof !81 !PGOFuncName !91 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.22, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23)
          to label %3 unwind label %7, !prof !83

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_CONFIGURATION_CLASS, align 8, !tbaa !84
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !90
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #20
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_43Ev() #3 personality ptr @__gxx_personality_v0 !prof !81 !PGOFuncName !92 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.24, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.25)
          to label %3 unwind label %7, !prof !83

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_USER_INTERFACE, align 8, !tbaa !84
  %4 = load ptr, ptr %1, align 8, !tbaa !88
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !90
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #20
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z18setupUserInterfaceiPPcP14cConfiguration(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !81 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca %"class.std::map.3", align 8
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::vector", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  invoke void @_ZN16ExecuteOnStartup10executeAllEv()
          to label %13 unwind label %29, !prof !83

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef 1, i64 noundef 2) #21
  %15 = load i32, ptr %4, align 16
  %16 = icmp eq i32 %15, 3285041
  br i1 %16, label %19, label %17, !prof !83

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @abort() #22
  unreachable

19:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %20 = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #19
          to label %21 unwind label %29, !prof !83

21:                                               ; preds = %19
  invoke void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %20)
          to label %22 unwind label %32, !prof !83

22:                                               ; preds = %21
  invoke void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168) %20, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str)
          to label %23 unwind label %29, !prof !83

23:                                               ; preds = %22
  %24 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 102, i32 noundef 0)
          to label %25 unwind label %34, !prof !83

25:                                               ; preds = %23
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %36, !prof !83

27:                                               ; preds = %25
  %28 = invoke noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168) %20, i32 noundef 0)
          to label %36 unwind label %34, !prof !83

29:                                               ; preds = %22, %19, %3
  %30 = phi ptr [ %20, %22 ], [ null, %19 ], [ null, %3 ]
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

32:                                               ; preds = %21
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef %20) #20
  br label %554

34:                                               ; preds = %27, %23
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

36:                                               ; preds = %27, %25
  %37 = phi ptr [ %24, %25 ], [ %28, %27 ]
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str.4, ptr %37, !prof !83
  %40 = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #19
          to label %41 unwind label %56, !prof !83

41:                                               ; preds = %36
  invoke void @_ZN13InifileReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(192) %40)
          to label %42 unwind label %59, !prof !83

42:                                               ; preds = %41
  %43 = invoke noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 118)
          to label %44 unwind label %56, !prof !83

44:                                               ; preds = %42
  br i1 %43, label %48, label %45, !prof !93

45:                                               ; preds = %44
  %46 = invoke noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 104)
          to label %47 unwind label %56, !prof !83

47:                                               ; preds = %45
  br i1 %46, label %48, label %51, !prof !93

48:                                               ; preds = %47, %44
  %49 = invoke noundef zeroext i1 @_Z10fileExistsPKc(ptr noundef nonnull %39)
          to label %50 unwind label %56

50:                                               ; preds = %48
  br i1 %49, label %51, label %55

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr %40, align 8, !tbaa !88
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(192) %40, ptr noundef nonnull %39)
          to label %55 unwind label %56, !prof !94

55:                                               ; preds = %50, %51
  br label %61

56:                                               ; preds = %112, %97, %84, %51, %48, %45, %42, %36
  %57 = phi ptr [ %85, %112 ], [ %85, %97 ], [ null, %84 ], [ null, %51 ], [ null, %48 ], [ null, %45 ], [ null, %42 ], [ null, %36 ]
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

59:                                               ; preds = %41
  %60 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef %40) #20
  br label %554

61:                                               ; preds = %55, %74
  %62 = phi i32 [ %75, %74 ], [ 1, %55 ]
  %63 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 102, i32 noundef %62)
          to label %64 unwind label %68, !prof !83

64:                                               ; preds = %61
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %70, !prof !83

66:                                               ; preds = %64
  %67 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 102, i32 noundef 0)
          to label %76 unwind label %88, !prof !83

68:                                               ; preds = %70, %61
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

70:                                               ; preds = %64
  %71 = load ptr, ptr %40, align 8, !tbaa !88
  %72 = getelementptr inbounds ptr, ptr %71, i64 10
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(192) %40, ptr noundef nonnull %63)
          to label %74 unwind label %68

74:                                               ; preds = %70
  %75 = add nuw nsw i32 %62, 1
  br label %61, !llvm.loop !95

76:                                               ; preds = %66
  %77 = icmp eq ptr %67, null
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %94, %76
  %80 = phi i32 [ %78, %76 ], [ %95, %94 ]
  %81 = invoke noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168) %20, i32 noundef %80)
          to label %82 unwind label %86, !prof !83

82:                                               ; preds = %79
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %90, !prof !83

84:                                               ; preds = %82
  %85 = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #19
          to label %96 unwind label %56, !prof !83

86:                                               ; preds = %79, %90
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

88:                                               ; preds = %66
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

90:                                               ; preds = %82
  %91 = load ptr, ptr %40, align 8, !tbaa !88
  %92 = getelementptr inbounds ptr, ptr %91, i64 10
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(192) %40, ptr noundef nonnull %81)
          to label %94 unwind label %86

94:                                               ; preds = %90
  %95 = add nuw nsw i32 %80, 1
  br label %79, !llvm.loop !98

96:                                               ; preds = %84
  invoke void @_ZN25SectionBasedConfigurationC1Ev(ptr noundef nonnull align 8 dereferenceable(416) %85)
          to label %97 unwind label %136, !prof !83

97:                                               ; preds = %96
  %98 = load ptr, ptr %85, align 8, !tbaa !88
  %99 = getelementptr inbounds ptr, ptr %98, i64 62
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(416) %85, ptr noundef nonnull %40)
          to label %101 unwind label %56, !prof !99

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #21
  invoke void @_ZNK7ArgList14getLongOptionsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(168) %20)
          to label %102 unwind label %138, !prof !83

102:                                              ; preds = %101
  %103 = load ptr, ptr %85, align 8, !tbaa !88
  %104 = getelementptr inbounds ptr, ptr %103, i64 63
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(416) %85, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %106 unwind label %140, !prof !100

106:                                              ; preds = %102
  %107 = getelementptr inbounds i8, ptr %5, i64 16
  %108 = load ptr, ptr %107, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %108)
          to label %112 unwind label %109, !prof !83

109:                                              ; preds = %106
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #22
  unreachable

112:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #21
  %113 = load ptr, ptr %85, align 8, !tbaa !88
  %114 = getelementptr inbounds ptr, ptr %113, i64 44
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr noundef nonnull align 8 dereferenceable(416) %85, ptr noundef nonnull @.str.5, i32 noundef 0)
          to label %116 unwind label %56, !prof !106

116:                                              ; preds = %112, %152
  %117 = phi i32 [ %153, %152 ], [ 0, %112 ]
  %118 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 108, i32 noundef %117)
          to label %119 unwind label %149, !prof !83

119:                                              ; preds = %116
  %120 = icmp eq ptr %118, null
  br i1 %120, label %121, label %151, !prof !83

121:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %122 = load ptr, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !84
  %123 = load ptr, ptr %85, align 8, !tbaa !88
  %124 = getelementptr inbounds ptr, ptr %123, i64 30
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %122)
          to label %126 unwind label %160, !prof !107

126:                                              ; preds = %121
  %127 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !108
  %129 = load ptr, ptr %6, align 8, !tbaa !110
  %130 = ptrtoint ptr %128 to i64
  %131 = ptrtoint ptr %129 to i64
  %132 = sub i64 %130, %131
  %133 = lshr exact i64 %132, 5
  %134 = trunc i64 %133 to i32
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %162, label %154, !prof !93

136:                                              ; preds = %96
  %137 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef %85) #20
  br label %554

138:                                              ; preds = %101
  %139 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %147

140:                                              ; preds = %102
  %141 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %142 = getelementptr inbounds i8, ptr %5, i64 16
  %143 = load ptr, ptr %142, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %143)
          to label %147 unwind label %144

144:                                              ; preds = %140
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @__clang_call_terminate(ptr %146) #22
  unreachable

147:                                              ; preds = %140, %138
  %148 = phi { ptr, i32 } [ %139, %138 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #21
  br label %554

149:                                              ; preds = %151, %116
  %150 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %554

151:                                              ; preds = %119
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef nonnull %118)
          to label %152 unwind label %149

152:                                              ; preds = %151
  %153 = add nuw nsw i32 %117, 1
  br label %116, !llvm.loop !111

154:                                              ; preds = %167, %126
  %155 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %156 = load ptr, ptr @CFGID_CONFIGURATION_CLASS, align 8, !tbaa !84
  %157 = load ptr, ptr %85, align 8, !tbaa !88
  %158 = getelementptr inbounds ptr, ptr %157, i64 28
  %159 = load ptr, ptr %158, align 8
  invoke void %159(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %156, ptr noundef nonnull @.str.6)
          to label %180 unwind label %184, !prof !112

160:                                              ; preds = %121
  %161 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %550

162:                                              ; preds = %126, %167
  %163 = phi i64 [ %168, %167 ], [ 0, %126 ]
  %164 = phi ptr [ %170, %167 ], [ %129, %126 ]
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %164, i64 %163
  %166 = load ptr, ptr %165, align 8, !tbaa !113
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef %166)
          to label %167 unwind label %177

167:                                              ; preds = %162
  %168 = add nuw nsw i64 %163, 1
  %169 = load ptr, ptr %127, align 8, !tbaa !108
  %170 = load ptr, ptr %6, align 8, !tbaa !110
  %171 = ptrtoint ptr %169 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = shl i64 %173, 27
  %175 = ashr i64 %174, 32
  %176 = icmp slt i64 %168, %175
  br i1 %176, label %162, label %154, !prof !93, !llvm.loop !116

177:                                              ; preds = %162
  %178 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %179 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %6, i64 0, i32 1
  br label %525

180:                                              ; preds = %154
  %181 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !117
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %286, label %186, !prof !83

184:                                              ; preds = %154
  %185 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %521

186:                                              ; preds = %180
  %187 = load ptr, ptr %7, align 8, !tbaa !113
  %188 = invoke noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef %187)
          to label %189 unwind label %195

189:                                              ; preds = %186
  %190 = icmp eq ptr %188, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %189
  %192 = call ptr @__cxa_allocate_exception(i64 128) #21
  %193 = load ptr, ptr %7, align 8, !tbaa !113
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %192, ptr noundef nonnull @.str.7, ptr noundef %193)
          to label %194 unwind label %198

194:                                              ; preds = %191
  invoke void @__cxa_throw(ptr nonnull %192, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %649 unwind label %195

195:                                              ; preds = %186, %200, %194
  %196 = phi ptr [ %188, %200 ], [ null, %194 ], [ null, %186 ]
  %197 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %510

198:                                              ; preds = %191
  %199 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %192) #21
  br label %510

200:                                              ; preds = %189
  %201 = load ptr, ptr %188, align 8, !tbaa !88
  %202 = getelementptr inbounds ptr, ptr %201, i64 40
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef nonnull %85)
          to label %204 unwind label %195

204:                                              ; preds = %200
  %205 = load ptr, ptr %85, align 8, !tbaa !88
  %206 = getelementptr inbounds ptr, ptr %205, i64 4
  %207 = load ptr, ptr %206, align 8
  call void %207(ptr noundef nonnull align 8 dereferenceable(416) %85) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  %208 = load ptr, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !84
  %209 = load ptr, ptr %188, align 8, !tbaa !88
  %210 = getelementptr inbounds ptr, ptr %209, i64 30
  %211 = load ptr, ptr %210, align 8
  invoke void %211(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef %208)
          to label %212 unwind label %244

212:                                              ; preds = %204
  %213 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %8, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !108
  %215 = load ptr, ptr %8, align 8, !tbaa !110
  %216 = ptrtoint ptr %214 to i64
  %217 = ptrtoint ptr %215 to i64
  %218 = sub i64 %216, %217
  %219 = lshr exact i64 %218, 5
  %220 = trunc i64 %219 to i32
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %246, label %222

222:                                              ; preds = %251, %212
  %223 = phi ptr [ %214, %212 ], [ %253, %251 ]
  %224 = phi ptr [ %215, %212 ], [ %254, %251 ]
  %225 = icmp eq ptr %224, %223
  br i1 %225, label %239, label %226

226:                                              ; preds = %222, %236
  %227 = phi ptr [ %237, %236 ], [ %224, %222 ]
  %228 = load ptr, ptr %227, align 8, !tbaa !113
  %229 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 0, i32 2
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 0, i32 1
  %233 = load i64, ptr %232, align 8, !tbaa !117
  %234 = icmp ult i64 %233, 16
  call void @llvm.assume(i1 %234)
  br label %236

235:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %228) #20
  br label %236

236:                                              ; preds = %235, %231
  %237 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 1
  %238 = icmp eq ptr %237, %223
  br i1 %238, label %239, label %226, !llvm.loop !118

239:                                              ; preds = %236, %222
  %240 = load ptr, ptr %8, align 8, !tbaa !110
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  call void @_ZdlPv(ptr noundef %240) #20
  br label %243

243:                                              ; preds = %239, %242
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  br label %286

244:                                              ; preds = %204
  %245 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %284

246:                                              ; preds = %212, %251
  %247 = phi i64 [ %252, %251 ], [ 0, %212 ]
  %248 = phi ptr [ %254, %251 ], [ %215, %212 ]
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %248, i64 %247
  %250 = load ptr, ptr %249, align 8, !tbaa !113
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef %250)
          to label %251 unwind label %261

251:                                              ; preds = %246
  %252 = add nuw nsw i64 %247, 1
  %253 = load ptr, ptr %213, align 8, !tbaa !108
  %254 = load ptr, ptr %8, align 8, !tbaa !110
  %255 = ptrtoint ptr %253 to i64
  %256 = ptrtoint ptr %254 to i64
  %257 = sub i64 %255, %256
  %258 = shl i64 %257, 27
  %259 = ashr i64 %258, 32
  %260 = icmp slt i64 %252, %259
  br i1 %260, label %246, label %222, !llvm.loop !119

261:                                              ; preds = %246
  %262 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %263 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %8, i64 0, i32 1
  %264 = load ptr, ptr %8, align 8, !tbaa !110
  %265 = load ptr, ptr %263, align 8, !tbaa !108
  %266 = icmp eq ptr %264, %265
  br i1 %266, label %280, label %267

267:                                              ; preds = %261, %277
  %268 = phi ptr [ %278, %277 ], [ %264, %261 ]
  %269 = load ptr, ptr %268, align 8, !tbaa !113
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %268, i64 0, i32 2
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %268, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !117
  %275 = icmp ult i64 %274, 16
  call void @llvm.assume(i1 %275)
  br label %277

276:                                              ; preds = %267
  call void @_ZdlPv(ptr noundef %269) #20
  br label %277

277:                                              ; preds = %276, %272
  %278 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %268, i64 1
  %279 = icmp eq ptr %278, %265
  br i1 %279, label %280, label %267, !llvm.loop !118

280:                                              ; preds = %277, %261
  %281 = load ptr, ptr %8, align 8, !tbaa !110
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  call void @_ZdlPv(ptr noundef %281) #20
  br label %284

284:                                              ; preds = %283, %280, %244
  %285 = phi { ptr, i32 } [ %245, %244 ], [ %262, %280 ], [ %262, %283 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  br label %510

286:                                              ; preds = %180, %243
  %287 = phi ptr [ %188, %243 ], [ %85, %180 ]
  %288 = phi ptr [ null, %243 ], [ %85, %180 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %289 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %289, ptr %9, align 8, !tbaa !120
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 0, ptr %290, align 8, !tbaa !117
  store i8 0, ptr %289, align 8, !tbaa !121
  %291 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
          to label %292 unwind label %301, !prof !83

292:                                              ; preds = %286
  %293 = load ptr, ptr %291, align 8, !tbaa !88
  %294 = getelementptr inbounds ptr, ptr %293, i64 26
  %295 = load ptr, ptr %294, align 8
  %296 = invoke noundef ptr %295(ptr noundef nonnull align 8 dereferenceable(144) %291, ptr noundef nonnull @.str.8)
          to label %297 unwind label %301, !prof !122

297:                                              ; preds = %292
  %298 = icmp eq ptr %296, null
  br i1 %298, label %299, label %303, !prof !93

299:                                              ; preds = %297
  %300 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.9)
          to label %303 unwind label %301

301:                                              ; preds = %312, %299, %314, %305, %303, %292, %286
  %302 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %501

303:                                              ; preds = %299, %297
  %304 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
          to label %305 unwind label %301, !prof !83

305:                                              ; preds = %303
  %306 = load ptr, ptr %304, align 8, !tbaa !88
  %307 = getelementptr inbounds ptr, ptr %306, i64 26
  %308 = load ptr, ptr %307, align 8
  %309 = invoke noundef ptr %308(ptr noundef nonnull align 8 dereferenceable(144) %304, ptr noundef nonnull @.str.10)
          to label %310 unwind label %301, !prof !122

310:                                              ; preds = %305
  %311 = icmp eq ptr %309, null
  br i1 %311, label %312, label %314, !prof !83

312:                                              ; preds = %310
  %313 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11)
          to label %314 unwind label %301, !prof !83

314:                                              ; preds = %312, %310
  %315 = load ptr, ptr %9, align 8, !tbaa !113
  %316 = load ptr, ptr %287, align 8, !tbaa !88
  %317 = getelementptr inbounds ptr, ptr %316, i64 42
  %318 = load ptr, ptr %317, align 8
  invoke void %318(ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef %315)
          to label %319 unwind label %301, !prof !123

319:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  %320 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %20, i8 noundef signext 117, i32 noundef 0)
          to label %321 unwind label %347, !prof !83

321:                                              ; preds = %319
  %322 = icmp eq ptr %320, null
  %323 = select i1 %322, ptr @.str.6, ptr %320, !prof !83
  %324 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %324, ptr %10, align 8, !tbaa !120
  %325 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %323) #21
  %326 = getelementptr inbounds i8, ptr %323, i64 %325
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %323, ptr noundef nonnull %326)
          to label %327 unwind label %349

327:                                              ; preds = %321
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !117
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %353, !prof !83

331:                                              ; preds = %327
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  %332 = load ptr, ptr @CFGID_USER_INTERFACE, align 8, !tbaa !84
  %333 = load ptr, ptr %287, align 8, !tbaa !88
  %334 = getelementptr inbounds ptr, ptr %333, i64 28
  %335 = load ptr, ptr %334, align 8
  invoke void %335(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef %332, ptr noundef nonnull @.str.6)
          to label %336 unwind label %351, !prof !112

336:                                              ; preds = %331
  %337 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11) #21
  %338 = load ptr, ptr %11, align 8, !tbaa !113
  %339 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %340 = icmp eq ptr %338, %339
  br i1 %340, label %341, label %345, !prof !83

341:                                              ; preds = %336
  %342 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %343 = load i64, ptr %342, align 8, !tbaa !117
  %344 = icmp ult i64 %343, 16
  call void @llvm.assume(i1 %344)
  br label %346

345:                                              ; preds = %336
  call void @_ZdlPv(ptr noundef %338) #20
  br label %346

346:                                              ; preds = %341, %345
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  br label %353

347:                                              ; preds = %319
  %348 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %499

349:                                              ; preds = %321
  %350 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %499

351:                                              ; preds = %331
  %352 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  br label %491

353:                                              ; preds = %346, %327
  %354 = load i64, ptr %328, align 8, !tbaa !117
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %426, label %356, !prof !83

356:                                              ; preds = %353
  %357 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
          to label %358 unwind label %384

358:                                              ; preds = %356
  %359 = load ptr, ptr %10, align 8, !tbaa !113
  %360 = load ptr, ptr %357, align 8, !tbaa !88
  %361 = getelementptr inbounds ptr, ptr %360, i64 26
  %362 = load ptr, ptr %361, align 8
  %363 = invoke noundef ptr %362(ptr noundef nonnull align 8 dereferenceable(144) %357, ptr noundef %359)
          to label %364 unwind label %384

364:                                              ; preds = %358
  %365 = icmp eq ptr %363, null
  br i1 %365, label %366, label %436

366:                                              ; preds = %364
  %367 = load ptr, ptr %10, align 8, !tbaa !113
  %368 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %367)
  %369 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
          to label %370 unwind label %386

370:                                              ; preds = %366
  %371 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %372 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  br label %373

373:                                              ; preds = %370, %418
  %374 = phi i32 [ %419, %418 ], [ 0, %370 ]
  %375 = load ptr, ptr %369, align 8, !tbaa !88
  %376 = getelementptr inbounds ptr, ptr %375, i64 23
  %377 = load ptr, ptr %376, align 8
  %378 = invoke noundef i32 %377(ptr noundef nonnull align 8 dereferenceable(144) %369)
          to label %379 unwind label %388

379:                                              ; preds = %373
  %380 = icmp slt i32 %374, %378
  br i1 %380, label %390, label %381

381:                                              ; preds = %379
  %382 = call ptr @__cxa_allocate_exception(i64 128) #21
  %383 = load ptr, ptr %10, align 8, !tbaa !113
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %382, ptr noundef nonnull @.str.14, ptr noundef %383)
          to label %422 unwind label %424

384:                                              ; preds = %442, %436, %432, %426, %358, %356
  %385 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %491

386:                                              ; preds = %422, %366
  %387 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %491

388:                                              ; preds = %395, %390, %373
  %389 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %491

390:                                              ; preds = %379
  %391 = load ptr, ptr %369, align 8, !tbaa !88
  %392 = getelementptr inbounds ptr, ptr %391, i64 24
  %393 = load ptr, ptr %392, align 8
  %394 = invoke noundef ptr %393(ptr noundef nonnull align 8 dereferenceable(144) %369, i32 noundef %374)
          to label %395 unwind label %388

395:                                              ; preds = %390
  %396 = load ptr, ptr %394, align 8, !tbaa !88
  %397 = getelementptr inbounds ptr, ptr %396, i64 6
  %398 = load ptr, ptr %397, align 8
  %399 = invoke noundef ptr %398(ptr noundef nonnull align 8 dereferenceable(20) %394)
          to label %400 unwind label %388

400:                                              ; preds = %395
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #21
  %401 = load ptr, ptr %369, align 8, !tbaa !88
  %402 = getelementptr inbounds ptr, ptr %401, i64 24
  %403 = load ptr, ptr %402, align 8
  %404 = invoke noundef ptr %403(ptr noundef nonnull align 8 dereferenceable(144) %369, i32 noundef %374)
          to label %405 unwind label %420

405:                                              ; preds = %400
  %406 = load ptr, ptr %404, align 8, !tbaa !88
  %407 = getelementptr inbounds ptr, ptr %406, i64 9
  %408 = load ptr, ptr %407, align 8
  invoke void %408(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %404)
          to label %409 unwind label %420

409:                                              ; preds = %405
  %410 = load ptr, ptr %12, align 8, !tbaa !113
  %411 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %399, ptr noundef %410)
  %412 = load ptr, ptr %12, align 8, !tbaa !113
  %413 = icmp eq ptr %412, %371
  br i1 %413, label %414, label %417

414:                                              ; preds = %409
  %415 = load i64, ptr %372, align 8, !tbaa !117
  %416 = icmp ult i64 %415, 16
  call void @llvm.assume(i1 %416)
  br label %418

417:                                              ; preds = %409
  call void @_ZdlPv(ptr noundef %412) #20
  br label %418

418:                                              ; preds = %414, %417
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  %419 = add nuw nsw i32 %374, 1
  br label %373, !llvm.loop !124

420:                                              ; preds = %405, %400
  %421 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  br label %491

422:                                              ; preds = %381
  invoke void @__cxa_throw(ptr nonnull %382, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %423 unwind label %386

423:                                              ; preds = %422
  unreachable

424:                                              ; preds = %381
  %425 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %382) #21
  br label %491

426:                                              ; preds = %353
  %427 = invoke noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv()
          to label %428 unwind label %384, !prof !83

428:                                              ; preds = %426
  %429 = icmp eq ptr %427, null
  br i1 %429, label %430, label %436, !prof !93

430:                                              ; preds = %428
  %431 = call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %431, ptr noundef nonnull @.str.15)
          to label %432 unwind label %434

432:                                              ; preds = %430
  invoke void @__cxa_throw(ptr nonnull %431, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %433 unwind label %384

433:                                              ; preds = %432
  unreachable

434:                                              ; preds = %430
  %435 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %431) #21
  br label %491

436:                                              ; preds = %428, %364
  %437 = phi ptr [ %427, %428 ], [ %363, %364 ]
  %438 = load ptr, ptr %437, align 8, !tbaa !88
  %439 = getelementptr inbounds ptr, ptr %438, i64 6
  %440 = load ptr, ptr %439, align 8
  %441 = invoke noundef ptr %440(ptr noundef nonnull align 8 dereferenceable(20) %437)
          to label %442 unwind label %384, !prof !125

442:                                              ; preds = %436
  %443 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %441)
  %444 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %437, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !126
  %446 = invoke noundef ptr %445()
          to label %447 unwind label %384, !prof !133

447:                                              ; preds = %442
  %448 = load ptr, ptr %10, align 8, !tbaa !113
  %449 = icmp eq ptr %448, %324
  br i1 %449, label %450, label %453, !prof !83

450:                                              ; preds = %447
  %451 = load i64, ptr %328, align 8, !tbaa !117
  %452 = icmp ult i64 %451, 16
  call void @llvm.assume(i1 %452)
  br label %454

453:                                              ; preds = %447
  call void @_ZdlPv(ptr noundef %448) #20
  br label %454

454:                                              ; preds = %450, %453
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  %455 = load ptr, ptr %9, align 8, !tbaa !113
  %456 = icmp eq ptr %455, %289
  br i1 %456, label %457, label %460, !prof !83

457:                                              ; preds = %454
  %458 = load i64, ptr %290, align 8, !tbaa !117
  %459 = icmp ult i64 %458, 16
  call void @llvm.assume(i1 %459)
  br label %461

460:                                              ; preds = %454
  call void @_ZdlPv(ptr noundef %455) #20
  br label %461

461:                                              ; preds = %457, %460
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  %462 = load ptr, ptr %7, align 8, !tbaa !113
  %463 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %464 = icmp eq ptr %462, %463
  br i1 %464, label %465, label %468, !prof !83

465:                                              ; preds = %461
  %466 = load i64, ptr %181, align 8, !tbaa !117
  %467 = icmp ult i64 %466, 16
  call void @llvm.assume(i1 %467)
  br label %469

468:                                              ; preds = %461
  call void @_ZdlPv(ptr noundef %462) #20
  br label %469

469:                                              ; preds = %465, %468
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %470 = load ptr, ptr %6, align 8, !tbaa !110
  %471 = load ptr, ptr %155, align 8, !tbaa !108
  %472 = icmp eq ptr %470, %471
  br i1 %472, label %486, label %473, !prof !83

473:                                              ; preds = %469, %483
  %474 = phi ptr [ %484, %483 ], [ %470, %469 ]
  %475 = load ptr, ptr %474, align 8, !tbaa !113
  %476 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %474, i64 0, i32 2
  %477 = icmp eq ptr %475, %476
  br i1 %477, label %478, label %482

478:                                              ; preds = %473
  %479 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %474, i64 0, i32 1
  %480 = load i64, ptr %479, align 8, !tbaa !117
  %481 = icmp ult i64 %480, 16
  call void @llvm.assume(i1 %481)
  br label %483

482:                                              ; preds = %473
  call void @_ZdlPv(ptr noundef %475) #20
  br label %483

483:                                              ; preds = %482, %478
  %484 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %474, i64 1
  %485 = icmp eq ptr %484, %471
  br i1 %485, label %486, label %473, !prof !83, !llvm.loop !118

486:                                              ; preds = %483, %469
  %487 = load ptr, ptr %6, align 8, !tbaa !110
  %488 = icmp eq ptr %487, null
  br i1 %488, label %490, label %489, !prof !83

489:                                              ; preds = %486
  call void @_ZdlPv(ptr noundef %487) #20
  br label %490

490:                                              ; preds = %486, %489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  br label %605

491:                                              ; preds = %384, %434, %388, %420, %424, %386, %351
  %492 = phi { ptr, i32 } [ %352, %351 ], [ %385, %384 ], [ %435, %434 ], [ %387, %386 ], [ %425, %424 ], [ %421, %420 ], [ %389, %388 ]
  %493 = load ptr, ptr %10, align 8, !tbaa !113
  %494 = icmp eq ptr %493, %324
  br i1 %494, label %495, label %498

495:                                              ; preds = %491
  %496 = load i64, ptr %328, align 8, !tbaa !117
  %497 = icmp ult i64 %496, 16
  call void @llvm.assume(i1 %497)
  br label %499

498:                                              ; preds = %491
  call void @_ZdlPv(ptr noundef %493) #20
  br label %499

499:                                              ; preds = %498, %495, %349, %347
  %500 = phi { ptr, i32 } [ %350, %349 ], [ %348, %347 ], [ %492, %495 ], [ %492, %498 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  br label %501

501:                                              ; preds = %499, %301
  %502 = phi { ptr, i32 } [ %500, %499 ], [ %302, %301 ]
  %503 = load ptr, ptr %9, align 8, !tbaa !113
  %504 = icmp eq ptr %503, %289
  br i1 %504, label %505, label %508

505:                                              ; preds = %501
  %506 = load i64, ptr %290, align 8, !tbaa !117
  %507 = icmp ult i64 %506, 16
  call void @llvm.assume(i1 %507)
  br label %509

508:                                              ; preds = %501
  call void @_ZdlPv(ptr noundef %503) #20
  br label %509

509:                                              ; preds = %505, %508
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  br label %510

510:                                              ; preds = %195, %198, %284, %509
  %511 = phi { ptr, i32 } [ %502, %509 ], [ %285, %284 ], [ %197, %195 ], [ %199, %198 ]
  %512 = phi ptr [ %287, %509 ], [ %188, %284 ], [ %196, %195 ], [ null, %198 ]
  %513 = phi ptr [ %288, %509 ], [ null, %284 ], [ %85, %195 ], [ %85, %198 ]
  %514 = load ptr, ptr %7, align 8, !tbaa !113
  %515 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %516 = icmp eq ptr %514, %515
  br i1 %516, label %517, label %520

517:                                              ; preds = %510
  %518 = load i64, ptr %181, align 8, !tbaa !117
  %519 = icmp ult i64 %518, 16
  call void @llvm.assume(i1 %519)
  br label %521

520:                                              ; preds = %510
  call void @_ZdlPv(ptr noundef %514) #20
  br label %521

521:                                              ; preds = %520, %517, %184
  %522 = phi { ptr, i32 } [ %185, %184 ], [ %511, %517 ], [ %511, %520 ]
  %523 = phi ptr [ null, %184 ], [ %512, %517 ], [ %512, %520 ]
  %524 = phi ptr [ %85, %184 ], [ %513, %517 ], [ %513, %520 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %525

525:                                              ; preds = %521, %177
  %526 = phi ptr [ %179, %177 ], [ %155, %521 ]
  %527 = phi { ptr, i32 } [ %178, %177 ], [ %522, %521 ]
  %528 = phi ptr [ null, %177 ], [ %523, %521 ]
  %529 = phi ptr [ %85, %177 ], [ %524, %521 ]
  %530 = load ptr, ptr %6, align 8, !tbaa !110
  %531 = load ptr, ptr %526, align 8, !tbaa !108
  %532 = icmp eq ptr %530, %531
  br i1 %532, label %546, label %533

533:                                              ; preds = %525, %543
  %534 = phi ptr [ %544, %543 ], [ %530, %525 ]
  %535 = load ptr, ptr %534, align 8, !tbaa !113
  %536 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %534, i64 0, i32 2
  %537 = icmp eq ptr %535, %536
  br i1 %537, label %538, label %542

538:                                              ; preds = %533
  %539 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %534, i64 0, i32 1
  %540 = load i64, ptr %539, align 8, !tbaa !117
  %541 = icmp ult i64 %540, 16
  call void @llvm.assume(i1 %541)
  br label %543

542:                                              ; preds = %533
  call void @_ZdlPv(ptr noundef %535) #20
  br label %543

543:                                              ; preds = %542, %538
  %544 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %534, i64 1
  %545 = icmp eq ptr %544, %531
  br i1 %545, label %546, label %533, !llvm.loop !118

546:                                              ; preds = %543, %525
  %547 = load ptr, ptr %6, align 8, !tbaa !110
  %548 = icmp eq ptr %547, null
  br i1 %548, label %550, label %549

549:                                              ; preds = %546
  call void @_ZdlPv(ptr noundef %547) #20
  br label %550

550:                                              ; preds = %549, %546, %160
  %551 = phi { ptr, i32 } [ %161, %160 ], [ %527, %546 ], [ %527, %549 ]
  %552 = phi ptr [ null, %160 ], [ %528, %546 ], [ %528, %549 ]
  %553 = phi ptr [ %85, %160 ], [ %529, %546 ], [ %529, %549 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  br label %554

554:                                              ; preds = %86, %88, %34, %149, %550, %147, %136, %68, %59, %56, %32, %29
  %555 = phi { ptr, i32 } [ %31, %29 ], [ %33, %32 ], [ %35, %34 ], [ %69, %68 ], [ %58, %56 ], [ %148, %147 ], [ %137, %136 ], [ %60, %59 ], [ %150, %149 ], [ %551, %550 ], [ %87, %86 ], [ %89, %88 ]
  %556 = phi ptr [ null, %29 ], [ null, %32 ], [ null, %34 ], [ null, %68 ], [ null, %56 ], [ null, %147 ], [ null, %136 ], [ null, %59 ], [ null, %149 ], [ %552, %550 ], [ null, %86 ], [ null, %88 ]
  %557 = phi ptr [ null, %29 ], [ null, %32 ], [ null, %34 ], [ null, %68 ], [ %57, %56 ], [ %85, %147 ], [ null, %136 ], [ null, %59 ], [ %85, %149 ], [ %553, %550 ], [ null, %86 ], [ null, %88 ]
  %558 = phi ptr [ %30, %29 ], [ null, %32 ], [ %20, %34 ], [ %20, %68 ], [ %20, %56 ], [ %20, %147 ], [ %20, %136 ], [ %20, %59 ], [ %20, %149 ], [ %20, %550 ], [ %20, %86 ], [ %20, %88 ]
  %559 = extractvalue { ptr, i32 } %555, 1
  %560 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %561 = icmp eq i32 %559, %560
  br i1 %561, label %562, label %647

562:                                              ; preds = %554
  %563 = extractvalue { ptr, i32 } %555, 0
  %564 = call ptr @__cxa_begin_catch(ptr %563) #21
  %565 = load ptr, ptr @stderr, align 8, !tbaa !84
  %566 = load ptr, ptr %564, align 8, !tbaa !88
  %567 = getelementptr inbounds ptr, ptr %566, i64 2
  %568 = load ptr, ptr %567, align 8
  %569 = call noundef ptr %568(ptr noundef nonnull align 8 dereferenceable(8) %564) #21
  %570 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %565, ptr noundef nonnull @.str.17, ptr noundef %569) #24
  %571 = icmp eq ptr %558, null
  br i1 %571, label %598, label %572

572:                                              ; preds = %562
  %573 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 5
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %573) #21
  %574 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 4
  %575 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %574, ptr noundef %576)
          to label %580 unwind label %577

577:                                              ; preds = %572
  %578 = landingpad { ptr, i32 }
          catch ptr null
  %579 = extractvalue { ptr, i32 } %578, 0
  call void @__clang_call_terminate(ptr %579) #22
  unreachable

580:                                              ; preds = %572
  %581 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 3
  %582 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %581, ptr noundef %583)
          to label %587 unwind label %584

584:                                              ; preds = %580
  %585 = landingpad { ptr, i32 }
          catch ptr null
  %586 = extractvalue { ptr, i32 } %585, 0
  call void @__clang_call_terminate(ptr %586) #22
  unreachable

587:                                              ; preds = %580
  %588 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 2
  %589 = load ptr, ptr %588, align 8, !tbaa !113
  %590 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 2, i32 2
  %591 = icmp eq ptr %589, %590
  br i1 %591, label %592, label %596

592:                                              ; preds = %587
  %593 = getelementptr inbounds %class.ArgList, ptr %558, i64 0, i32 2, i32 1
  %594 = load i64, ptr %593, align 8, !tbaa !117
  %595 = icmp ult i64 %594, 16
  call void @llvm.assume(i1 %595)
  br label %597

596:                                              ; preds = %587
  call void @_ZdlPv(ptr noundef %589) #20
  br label %597

597:                                              ; preds = %592, %596
  call void @_ZdlPv(ptr noundef %558) #20
  br label %598

598:                                              ; preds = %597, %562
  %599 = icmp eq ptr %557, null
  br i1 %599, label %604, label %600

600:                                              ; preds = %598
  %601 = load ptr, ptr %557, align 8, !tbaa !88
  %602 = getelementptr inbounds ptr, ptr %601, i64 4
  %603 = load ptr, ptr %602, align 8
  call void %603(ptr noundef nonnull align 8 dereferenceable(416) %557) #21
  br label %604

604:                                              ; preds = %598, %600
  call void @__cxa_end_catch()
  br label %605

605:                                              ; preds = %604, %490
  %606 = phi ptr [ %556, %604 ], [ %287, %490 ]
  %607 = phi ptr [ null, %604 ], [ %446, %490 ]
  %608 = icmp eq ptr %607, null
  br i1 %608, label %638, label %609, !prof !93

609:                                              ; preds = %605
  %610 = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #19
          to label %611 unwind label %618, !prof !83

611:                                              ; preds = %609
  invoke void @_ZN11cSimulationC1EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224) %610, ptr noundef nonnull @.str.18, ptr noundef nonnull %607)
          to label %612 unwind label %621, !prof !83

612:                                              ; preds = %611
  invoke void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef nonnull %610)
          to label %613 unwind label %618, !prof !83

613:                                              ; preds = %612
  %614 = load ptr, ptr %607, align 8, !tbaa !88
  %615 = getelementptr inbounds ptr, ptr %614, i64 57
  %616 = load ptr, ptr %615, align 8
  %617 = invoke noundef i32 %616(ptr noundef nonnull align 8 dereferenceable(288) %607, i32 noundef %0, ptr noundef %1, ptr noundef %606)
          to label %638 unwind label %618, !prof !134

618:                                              ; preds = %613, %612, %609
  %619 = phi ptr [ %610, %613 ], [ %610, %612 ], [ null, %609 ]
  %620 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %623

621:                                              ; preds = %611
  %622 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef %610) #20
  br label %623

623:                                              ; preds = %621, %618
  %624 = phi { ptr, i32 } [ %620, %618 ], [ %622, %621 ]
  %625 = phi ptr [ %619, %618 ], [ null, %621 ]
  %626 = extractvalue { ptr, i32 } %624, 1
  %627 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %647

629:                                              ; preds = %623
  %630 = extractvalue { ptr, i32 } %624, 0
  %631 = call ptr @__cxa_begin_catch(ptr %630) #21
  %632 = load ptr, ptr @stderr, align 8, !tbaa !84
  %633 = load ptr, ptr %631, align 8, !tbaa !88
  %634 = getelementptr inbounds ptr, ptr %633, i64 2
  %635 = load ptr, ptr %634, align 8
  %636 = call noundef ptr %635(ptr noundef nonnull align 8 dereferenceable(8) %631) #21
  %637 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %632, ptr noundef nonnull @.str.19, ptr noundef %636) #24
  call void @__cxa_end_catch()
  br label %638

638:                                              ; preds = %605, %613, %629
  %639 = phi i32 [ 1, %629 ], [ %617, %613 ], [ 1, %605 ]
  %640 = phi ptr [ %625, %629 ], [ %610, %613 ], [ null, %605 ]
  call void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef null)
  %641 = icmp eq ptr %640, null
  br i1 %641, label %646, label %642, !prof !93

642:                                              ; preds = %638
  %643 = load ptr, ptr %640, align 8, !tbaa !88
  %644 = getelementptr inbounds ptr, ptr %643, i64 4
  %645 = load ptr, ptr %644, align 8
  call void %645(ptr noundef nonnull align 8 dereferenceable(224) %640) #21, !prof !135
  br label %646

646:                                              ; preds = %642, %638
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @componentTypes)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @enums)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
  call void @_ZN11cSimulation19clearLoadedNedFilesEv()
  ret i32 %639

647:                                              ; preds = %623, %554
  %648 = phi { ptr, i32 } [ %624, %623 ], [ %555, %554 ]
  resume { ptr, i32 } %648

649:                                              ; preds = %194
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN16ExecuteOnStartup10executeAllEv() local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) local_unnamed_addr #0

declare void @_ZN13InifileReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #0

declare noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext) local_unnamed_addr #0

declare noundef zeroext i1 @_Z10fileExistsPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN25SectionBasedConfigurationC1Ev(ptr noundef nonnull align 8 dereferenceable(416)) unnamed_addr #0

declare void @_ZNK7ArgList14getLongOptionsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map.3") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #0

declare void @_Z20loadExtensionLibraryPKc(ptr noundef) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !136 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !137

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !138

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !117
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #20
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !139, !llvm.loop !118

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !110
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !140

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #20
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !120
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #23
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %9)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv() local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !141 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11cSimulationC1EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef) local_unnamed_addr #0

declare void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN11cSimulation19clearLoadedNedFilesEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z18env_dummy_functionv() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !141 {
  %1 = alloca %class.Speedometer, align 8
  %2 = alloca %class.cFileOutputVectorManager, align 8
  %3 = alloca %class.cFileOutputScalarManager, align 8
  %4 = alloca %class.cFileSnapshotManager, align 8
  %5 = alloca %class.cIndexedFileOutputVectorManager, align 8
  %6 = alloca %class.MatchableObjectAdapter, align 8
  %7 = tail call noundef double @_Z11exponentialdi(double noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #21
  call void @_ZN11SpeedometerC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #21
  call void @_ZN24cFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #21
  invoke void @_ZN24cFileOutputScalarManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3)
          to label %8 unwind label %32

8:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  invoke void @_ZN20cFileSnapshotManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %9 unwind label %34

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %5) #21
  invoke void @_ZN31cIndexedFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %10 unwind label %36

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  invoke void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 1, ptr noundef null)
          to label %11 unwind label %38

11:                                               ; preds = %10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !88
  %12 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %6, i64 0, i32 4, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %6, i64 0, i32 4, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !117
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTV31cIndexedFileOutputVectorManager, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !88
  %22 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %5, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !142
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %23) #20
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !144
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @_ZdaPv(ptr noundef %28) #20
  br label %31

31:                                               ; preds = %26, %30
  call void @_ZN24cFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(148) %5) #21
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %5) #21
  call void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #21
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #21
  call void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #21
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #21
  ret void

32:                                               ; preds = %0
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %54

34:                                               ; preds = %8
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %52

36:                                               ; preds = %9
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %50

38:                                               ; preds = %10
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTV31cIndexedFileOutputVectorManager, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !88
  %40 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %5, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @_ZdlPv(ptr noundef %41) #20
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %5, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !144
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @_ZdaPv(ptr noundef %46) #20
  br label %49

49:                                               ; preds = %44, %48
  call void @_ZN24cFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(148) %5) #21
  br label %50

50:                                               ; preds = %49, %36
  %51 = phi { ptr, i32 } [ %39, %49 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %5) #21
  call void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  br label %52

52:                                               ; preds = %50, %34
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #21
  br label %54

54:                                               ; preds = %52, %32
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #21
  call void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #21
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #21
  resume { ptr, i32 } %55
}

declare noundef double @_Z11exponentialdi(double noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11SpeedometerC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare void @_ZN24cFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #0

declare void @_ZN24cFileOutputScalarManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #0

declare void @_ZN20cFileSnapshotManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN31cIndexedFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #0

declare void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #1

declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !147

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !150, !llvm.loop !151

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !153

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !117
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #20
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !113
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !154

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !117
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %14) #20
  br label %22

22:                                               ; preds = %17, %21
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

declare noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !83

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !117
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #20
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !83

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !117
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !93

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !117
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #20
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #21
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #19
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #20
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !155
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !141 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !117
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !120, !alias.scope !159
  %10 = load ptr, ptr %7, align 8, !tbaa !113
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !117
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !113, !alias.scope !159
  %19 = load i64, ptr %11, align 8, !tbaa !121
  store i64 %19, ptr %9, align 8, !tbaa !121, !alias.scope !159
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !117
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !117, !alias.scope !159
  store ptr %11, ptr %7, align 8, !tbaa !113
  store i64 0, ptr %21, align 8, !tbaa !117
  store i8 0, ptr %11, align 8, !tbaa !121
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !117, !noalias !162
  %27 = load i64, ptr %23, align 8, !tbaa !117, !noalias !162
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !113, !noalias !162
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !120, !alias.scope !162
  %37 = load ptr, ptr %34, align 8, !tbaa !113
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !117
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !113, !alias.scope !162
  %46 = load i64, ptr %38, align 8, !tbaa !121
  store i64 %46, ptr %36, align 8, !tbaa !121, !alias.scope !162
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !117
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !117, !alias.scope !162
  store ptr %38, ptr %34, align 8, !tbaa !113
  store i64 0, ptr %48, align 8, !tbaa !117
  store i8 0, ptr %38, align 8, !tbaa !121
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  %52 = load ptr, ptr %3, align 8, !tbaa !113
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !117
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #20
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !113
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !117
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #20
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !113
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !117
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #20
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !113
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !117
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #20
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !113
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !117
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #20
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !165, !range !166, !noundef !167
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !168
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !169 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !170

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node.72", ptr %5, i64 0, i32 1, i32 0, i64 8
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #21
  tail call void @_ZdlPv(ptr noundef %5) #20
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %4, !prof !171, !llvm.loop !172

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZN24cFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !174
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !175

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !113
  %11 = load i64, ptr %4, align 8, !tbaa !174
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !121
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !113
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !176

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !121
  store i8 %16, ptr %14, align 1, !tbaa !121
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !177
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !174
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !117
  %21 = load ptr, ptr %0, align 8, !tbaa !113
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_startup.cc() #16 section ".text.startup" !prof !81 !PGOFuncName !178 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_41E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_41Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_41E, ptr nonnull @__dso_handle) #21
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_42Ev)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr nonnull @__dso_handle) #21
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_43Ev)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN16ExecuteOnStartup10executeAllEv, i64 1}
!45 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @sprintf, i64 1}
!46 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_Znwm, i64 4}
!47 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN7ArgListC1Ev, i64 1}
!48 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN7ArgList5parseEiPPcPKc, i64 1}
!49 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList11optionValueEci, i64 5}
!50 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList8argumentEi, i64 2}
!51 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN13InifileReaderC1Ev, i64 1}
!52 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList11optionGivenEc, i64 2}
!53 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN25SectionBasedConfigurationC1Ev, i64 1}
!54 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList14getLongOptionsB5cxx11Ev, i64 1}
!55 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 1}
!56 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 2}
!57 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 1}
!58 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @strlen, i64 1}
!59 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 1}
!60 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 1}
!61 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN21cOmnetAppRegistration10chooseBestEv, i64 1}
!62 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @printf, i64 1}
!63 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulationC1EPKcP6cEnvir, i64 1}
!64 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulation19setActiveSimulationEPS_, i64 2}
!65 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN23cGlobalRegistrationList5clearEv, i64 7}
!66 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulation19clearLoadedNedFilesEv, i64 1}
!67 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!68 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 33}
!69 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!70 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 38}
!71 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!72 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!73 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 2}
!74 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 2}
!75 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZdlPv, i64 2}
!76 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!77 = !{ptr @_GLOBAL__sub_I_startup.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!78 = !{ptr @_GLOBAL__sub_I_startup.cc, ptr @__cxa_atexit, i64 4}
!79 = !{ptr @_GLOBAL__sub_I_startup.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 3}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!"simulator/startup.cc;_ZN12_GLOBAL__N_119__onstartup_func_41Ev"}
!83 = !{!"branch_weights", i32 1, i32 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"any pointer", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C++ TBAA"}
!88 = !{!89, !89, i64 0}
!89 = !{!"vtable pointer", !87, i64 0}
!90 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!91 = !{!"simulator/startup.cc;_ZN12_GLOBAL__N_119__onstartup_func_42Ev"}
!92 = !{!"simulator/startup.cc;_ZN12_GLOBAL__N_119__onstartup_func_43Ev"}
!93 = !{!"branch_weights", i32 0, i32 1}
!94 = !{!"VP", i32 0, i64 1, i64 -4870332931810639872, i64 1}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !96, !97}
!99 = !{!"VP", i32 0, i64 1, i64 -4683308913275467597, i64 1}
!100 = !{!"VP", i32 0, i64 1, i64 -221775929546551133, i64 1}
!101 = !{!102, !85, i64 8}
!102 = !{!"_ZTSSt15_Rb_tree_header", !103, i64 0, !105, i64 32}
!103 = !{!"_ZTSSt18_Rb_tree_node_base", !104, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!104 = !{!"_ZTSSt14_Rb_tree_color", !86, i64 0}
!105 = !{!"long", !86, i64 0}
!106 = !{!"VP", i32 0, i64 1, i64 1492228357406939975, i64 1}
!107 = !{!"VP", i32 0, i64 1, i64 -8705442532934589274, i64 1}
!108 = !{!109, !85, i64 8}
!109 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!110 = !{!109, !85, i64 0}
!111 = distinct !{!111, !96, !97}
!112 = !{!"VP", i32 0, i64 1, i64 1490196442286634196, i64 1}
!113 = !{!114, !85, i64 0}
!114 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !115, i64 0, !105, i64 8, !86, i64 16}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!116 = distinct !{!116, !96, !97}
!117 = !{!114, !105, i64 8}
!118 = distinct !{!118, !96, !97}
!119 = distinct !{!119, !96, !97}
!120 = !{!115, !85, i64 0}
!121 = !{!86, !86, i64 0}
!122 = !{!"VP", i32 0, i64 1, i64 5706318544843807196, i64 1}
!123 = !{!"VP", i32 0, i64 1, i64 999810250847043940, i64 1}
!124 = distinct !{!124, !96, !97}
!125 = !{!"VP", i32 0, i64 1, i64 -1846066915438621208, i64 1}
!126 = !{!127, !85, i64 40}
!127 = !{!"_ZTS21cOmnetAppRegistration", !128, i64 0, !85, i64 40, !114, i64 48, !132, i64 80}
!128 = !{!"_ZTS12cOwnedObject", !129, i64 0, !85, i64 24, !132, i64 32}
!129 = !{!"_ZTS12cNamedObject", !130, i64 0, !85, i64 8, !131, i64 16, !131, i64 18}
!130 = !{!"_ZTS7cObject"}
!131 = !{!"short", !86, i64 0}
!132 = !{!"int", !86, i64 0}
!133 = !{!"VP", i32 0, i64 1, i64 -1232359618335266490, i64 1}
!134 = !{!"VP", i32 0, i64 1, i64 3184705550846786308, i64 1}
!135 = !{!"VP", i32 0, i64 1, i64 -8532049034001852549, i64 1}
!136 = !{!"function_entry_count", i64 55}
!137 = !{!"branch_weights", i32 50, i32 5}
!138 = !{!"branch_weights", i32 4, i32 1}
!139 = !{!"branch_weights", i32 5, i32 0}
!140 = !{!"branch_weights", i32 46, i32 9}
!141 = !{!"function_entry_count", i64 0}
!142 = !{!143, !85, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!144 = !{!145, !85, i64 0}
!145 = !{!"_ZTS10opp_string", !85, i64 0}
!146 = !{!"function_entry_count", i64 41}
!147 = !{!"branch_weights", i32 8, i32 33}
!148 = !{!103, !85, i64 24}
!149 = !{!103, !85, i64 16}
!150 = !{!"branch_weights", i32 33, i32 0}
!151 = distinct !{!151, !96, !97}
!152 = !{!"function_entry_count", i64 33}
!153 = !{!"branch_weights", i32 29, i32 4}
!154 = !{!"branch_weights", i32 32, i32 1}
!155 = !{!156, !132, i64 8}
!156 = !{!"_ZTS10cException", !157, i64 0, !132, i64 8, !114, i64 16, !158, i64 48, !114, i64 56, !114, i64 88, !132, i64 120}
!157 = !{!"_ZTSSt9exception"}
!158 = !{!"bool", !86, i64 0}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!161 = distinct !{!161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!164 = distinct !{!164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!165 = !{!156, !158, i64 48}
!166 = !{i8 0, i8 2}
!167 = !{}
!168 = !{!156, !132, i64 120}
!169 = !{!"function_entry_count", i64 3}
!170 = !{!"branch_weights", i32 1, i32 2}
!171 = !{!"branch_weights", i32 2, i32 0}
!172 = distinct !{!172, !96, !97}
!173 = !{!"function_entry_count", i64 1889443}
!174 = !{!105, !105, i64 0}
!175 = !{!"branch_weights", i32 1257662, i32 631781}
!176 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!177 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!178 = !{!"simulator/startup.cc;_GLOBAL__sub_I_startup.cc"}
