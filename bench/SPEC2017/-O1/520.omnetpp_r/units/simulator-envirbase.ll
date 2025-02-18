; ModuleID = 'simulator/envirbase.cc'
source_filename = "simulator/envirbase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.EnvirBase = type { %class.cRunnableEnvir, ptr, ptr, ptr, i32, i64, %class.opp_string, i8, %class.opp_string, %class.opp_string, %class.opp_string, %class.opp_string, i32, %class.opp_string, i32, %class.opp_string, %class.opp_string, %class.opp_string, i8, i8, i8, i8, %class.SimTime, i64, %class.opp_string, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, %struct.timeval, %struct.timeval, %struct.timeval, %struct.timeval, %class.SimTime }
%class.cRunnableEnvir = type { %class.cEnvir }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.opp_string = type { ptr }
%struct.timeval = type { i64, i64 }
%class.SimTime = type { i64 }
%class.ArgList = type { i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::map", %"class.std::map.3", %"class.std::vector" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.8" = type { %"struct.std::less.9" }
%"struct.std::less.9" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.cOmnetAppRegistration = type <{ %class.cOwnedObject.base, [4 x i8], ptr, %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::set" = type { %"class.std::_Rb_tree.19" }
%"class.std::_Rb_tree.19" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%class.cConfigOption = type { %class.cNoncopyableOwnedObject.base, i8, i8, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cNEDFunction = type { %class.cNoncopyableOwnedObject.base, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i32, i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cMathFunction = type { %class.cNoncopyableOwnedObject.base, ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree_node.55" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.56" }
%"struct.__gnu_cxx::__aligned_membuf.56" = type { [32 x i8] }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%class.ModNameParamResolver = type { %"class.cXMLElement::ParamResolver", ptr }
%"class.cXMLElement::ParamResolver" = type { ptr }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::_Rb_tree_node.51" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.52" }
%"struct.__gnu_cxx::__aligned_membuf.52" = type { [32 x i8] }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$_ZN6cEnvirlsIPKcEERS_RKT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN10opp_stringC2EPKc = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

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

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_ = comdat any

$_ZTS16cConfigurationEx = comdat any

$_ZTI16cConfigurationEx = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTS7SimTime = comdat any

$_ZTI7SimTime = comdat any

$_ZTS21cTerminationException = comdat any

$_ZTI21cTerminationException = comdat any

$_ZTS14cRunnableEnvir = comdat any

$_ZTI14cRunnableEnvir = comdat any

$_ZTV10cException = comdat any

$_ZTSP21cOmnetAppRegistration = comdat any

$_ZTS21cOmnetAppRegistration = comdat any

$_ZTI21cOmnetAppRegistration = comdat any

$_ZTIP21cOmnetAppRegistration = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_TOTAL_STACK = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_91E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARALLEL_SIMULATION = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_92E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SCHEDULER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_93E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARSIM_COMMUNICATIONS_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_94E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARSIM_SYNCHRONIZATION_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_95E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUTVECTORMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_96E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUTSCALARMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_97E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SNAPSHOTMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_98E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_FNAME_APPEND_HOST = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_99E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_DEBUG_ON_ERRORS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_100E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PRINT_UNDISPOSED = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_101E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SIMTIME_SCALE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_102E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NED_PATH = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_103E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NETWORK = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_105E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_WARNINGS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_106E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SIM_TIME_LIMIT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_107E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_CPU_TIME_LIMIT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_108E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_FINGERPRINT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_109E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NUM_RNGS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_110E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RNG_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_111E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SEED_SET = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_112E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RESULT_DIR = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_113E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RECORD_EVENTLOG = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_114E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARTITION_ID = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_115E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RNG_K = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_116E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV9EnvirBase = dso_local unnamed_addr constant { [73 x ptr] } { [73 x ptr] [ptr null, ptr @_ZTI9EnvirBase, ptr @_ZN9EnvirBase5sputnEPKci, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN9EnvirBaseD0Ev, ptr @_ZN9EnvirBase13objectDeletedEP7cObject, ptr @_ZN9EnvirBase15simulationEventEP8cMessage, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase16messageScheduledEP8cMessage, ptr @_ZN9EnvirBase16messageCancelledEP8cMessage, ptr @_ZN9EnvirBase9beginSendEP8cMessage, ptr @_ZN9EnvirBase17messageSendDirectEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate, ptr @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9EnvirBase7endSendEP8cMessage, ptr @_ZN9EnvirBase14messageDeletedEP8cMessage, ptr @_ZN9EnvirBase16moduleReparentedEP7cModuleS1_, ptr @_ZN9EnvirBase20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag, ptr @_ZN9EnvirBase18componentMethodEndEv, ptr @_ZN9EnvirBase13moduleCreatedEP7cModule, ptr @_ZN9EnvirBase13moduleDeletedEP7cModule, ptr @_ZN9EnvirBase11gateCreatedEP5cGate, ptr @_ZN9EnvirBase11gateDeletedEP5cGate, ptr @_ZN9EnvirBase17connectionCreatedEP5cGate, ptr @_ZN9EnvirBase17connectionDeletedEP5cGate, ptr @_ZN9EnvirBase20displayStringChangedEP10cComponent, ptr @_ZN9EnvirBase16undisposedObjectEP7cObject, ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN9EnvirBase13isModuleLocalEP7cModulePKci, ptr @_ZN9EnvirBase14getXMLDocumentEPKcS1_, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase9getConfigEv, ptr @_ZN9EnvirBase11getConfigExEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase6bubbleEP10cComponentPKc, ptr @_ZN6cEnvir9printfmsgEPKcz, ptr @_ZN6cEnvir6printfEPKcz, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir8askYesNoEPKcz, ptr @_ZNK9EnvirBase10getNumRNGsEv, ptr @_ZN9EnvirBase6getRNGEi, ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZN9EnvirBase20registerOutputVectorEPKcS1_, ptr @_ZN9EnvirBase22deregisterOutputVectorEPv, ptr @_ZN9EnvirBase18setVectorAttributeEPvPKcS2_, ptr @_ZN9EnvirBase20recordInOutputVectorEPv7SimTimed, ptr @_ZN9EnvirBase12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN9EnvirBase15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map, ptr @_ZN9EnvirBase20getStreamForSnapshotEv, ptr @_ZN9EnvirBase24releaseStreamForSnapshotEPSo, ptr @_ZNK9EnvirBase11getArgCountEv, ptr @_ZNK9EnvirBase12getArgVectorEv, ptr @_ZNK9EnvirBase15getParsimProcIdEv, ptr @_ZNK9EnvirBase22getParsimNumPartitionsEv, ptr @_ZN9EnvirBase15getUniqueNumberEv, ptr @_ZN9EnvirBase4idleEv, ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZN9EnvirBase5setupEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase8shutdownEv, ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN9EnvirBase6endRunEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZN9EnvirBase12displayErrorERSt9exception, ptr @_ZN9EnvirBase14displayMessageERSt9exception] }, align 8
@.str = private unnamed_addr constant [23 x i8] c"h?f:u:l:c:r:p:n:x:agGv\00", align 1
@_ZTI14cConfiguration = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16cConfigurationEx = linkonce_odr dso_local constant [19 x i8] c"16cConfigurationEx\00", comdat, align 1
@_ZTI16cConfigurationEx = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16cConfigurationEx, ptr @_ZTI14cConfiguration }, comdat, align 8
@.str.26 = private unnamed_addr constant [56 x i8] c"Cannot cast configuration object %s to cConfigurationEx\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Build: omnetpp-4.0 090310-10709\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Compiler: \00", align 1
@_ZL12compilerInfo = internal global ptr @.str.257, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"Options: \00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS7SimTime = linkonce_odr dso_local constant [9 x i8] c"7SimTime\00", comdat, align 1
@_ZTI7SimTime = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7SimTime }, comdat, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@_ZL12buildOptions = internal global ptr @.str.259, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"Config %s: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Config: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Number of runs: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Run %d:\0A%s\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Run %d: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Total stack size %d increased to %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"Class \22%s\22 is not subclassed from cOutputVectorManager\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"Class \22%s\22 is not subclassed from cOutputScalarManager\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Class \22%s\22 is not subclassed from cSnapshotManager\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Class \22%s\22 is not subclassed from cScheduler\00", align 1
@.str.42 = private unnamed_addr constant [128 x i8] c"Parallel simulation is turned on in the ini file, but OMNeT++ was compiled without parallel simulation support (WITH_PARSIM=no)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"NEDPATH\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c":;\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Loading NED files from a SPEC directory\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"Command line options:\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"  <inifile> or -f <inifile>\0A\00", align 1
@.str.51 = private unnamed_addr constant [78 x i8] c"                Use the given ini file instead of omnetpp.ini. More than one\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"                ini files can be loaded this way.\0A\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"  -u <ui>       Selects the user interface. Standard choices are Cmdenv\0A\00", align 1
@.str.54 = private unnamed_addr constant [73 x i8] c"                and Tkenv. To make a user interface available, you need\0A\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"                to link the simulation executable with the Cmdenv/Tkenv\0A\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"                library, or load it as shared library via the -l option.\0A\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"  -n <nedpath>  When present, overrides the NEDPATH environment variable.\0A\00", align 1
@.str.58 = private unnamed_addr constant [77 x i8] c"  -l <library>  Load the specified shared library (.so or .dll) on startup.\0A\00", align 1
@.str.59 = private unnamed_addr constant [78 x i8] c"                The file name should be given without the .so or .dll suffix\0A\00", align 1
@.str.60 = private unnamed_addr constant [76 x i8] c"                (it will be appended automatically.) The loaded module may\0A\00", align 1
@.str.61 = private unnamed_addr constant [75 x i8] c"                contain simple modules, plugins, etc. Multiple -l options\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"                can be present.\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"  --<configuration-key>=<value>\0A\00", align 1
@.str.64 = private unnamed_addr constant [74 x i8] c"                Any configuration option can be specified on the command\0A\00", align 1
@.str.65 = private unnamed_addr constant [78 x i8] c"                line, and it takes precedence over settings specified in the\0A\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"                ini file(s). Examples:\0A\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"                      --debug-on-errors=true\0A\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"                      --record-eventlog=true\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"                      --sim-time-limit=1000s\0A\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"  -v            Print version and build info.\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"  -h            Print this help and exit.\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"  -h <category> Lists registered components:\0A\00", align 1
@.str.73 = private unnamed_addr constant [67 x i8] c"    -h config         Prints the list of available config options\0A\00", align 1
@.str.74 = private unnamed_addr constant [73 x i8] c"    -h configdetails  Prints the list of available config options, with\0A\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"                      their documentation\0A\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"    -h userinterfaces Lists available user interfaces (see -u option)\0A\00", align 1
@.str.77 = private unnamed_addr constant [79 x i8] c"    -h classes        Lists registered C++ classes (including module classes)\0A\00", align 1
@.str.78 = private unnamed_addr constant [73 x i8] c"    -h classdesc      Lists C++ classes that have associated reflection\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"                      information (needed for Tkenv inspectors)\0A\00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"    -h nedfunctions   Lists registered NED functions\0A\00", align 1
@.str.81 = private unnamed_addr constant [55 x i8] c"    -h units          Lists recognized physical units\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"    -h enums          Lists registered enums\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"    -h all            Union of all the above\0A\00", align 1
@omnetapps = external global %class.cGlobalRegistrationList, align 8
@_ZTI6cEnvir = external constant ptr
@.str.84 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"configdetails\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"Supported configuration options:\0A\00", align 1
@configOptions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cOwnedObject = external constant ptr
@_ZTI13cConfigOption = external constant ptr
@.str.88 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"<object-full-path>.\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c", unit=\22\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c", default:\00", align 1
@.str.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"per-object\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"per-run\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c" setting\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"Predefined variables that can be used in config values:\0A\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"jconfig\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"Supported configuration options (as Java code):\0A\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"CFGID_\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"addGlobalOption\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"addPerRunOption\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"addPerObjectOption\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"CFG_BOOL\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"CFG_INT\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"CFG_DOUBLE\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"CFG_STRING\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"CFG_FILENAME\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"CFG_FILENAMES\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"CFG_PATH\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"CFG_CUSTOM\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"    public static final ConfigOption \00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"(\0A\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"        \22\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"\\n\0A\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c" \22 +\0A\22\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"\\n \22\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"\\n\22\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"    public static final String CFGVAR_\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c" = addConfigVariable(\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"\22, \22\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.141 = private unnamed_addr constant [67 x i8] c"Registered C++ classes, including modules, channels and messages:\0A\00", align 1
@classes = external global %class.cGlobalRegistrationList, align 8
@.str.142 = private unnamed_addr constant [9 x i8] c"  class \00", align 1
@.str.143 = private unnamed_addr constant [69 x i8] c"Note: if your class is not listed, it needs to be registered in the\0A\00", align 1
@.str.144 = private unnamed_addr constant [71 x i8] c"C++ code using Define_Module(), Define_Channel() or Register_Class().\0A\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"classdesc\00", align 1
@.str.146 = private unnamed_addr constant [84 x i8] c"Classes that have associated reflection information (needed for Tkenv inspectors):\0A\00", align 1
@classDescriptors = external global %class.cGlobalRegistrationList, align 8
@.str.147 = private unnamed_addr constant [13 x i8] c"nedfunctions\00", align 1
@.str.148 = private unnamed_addr constant [67 x i8] c"Functions that can be used in NED expressions and in omnetpp.ini:\0A\00", align 1
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cNEDFunction = external constant ptr
@_ZTI13cMathFunction = external constant ptr
@.str.149 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"\0A Category \22\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"\22:\0A\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.154 = private unnamed_addr constant [72 x i8] c"Recognized physical units (note: other units can be used as well, only\0A\00", align 1
@.str.155 = private unnamed_addr constant [54 x i8] c"no automatic conversion will be available for them):\0A\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"enums\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"Enums defined in .msg files\0A\00", align 1
@enums = external global %class.cGlobalRegistrationList, align 8
@.str.159 = private unnamed_addr constant [15 x i8] c"userinterfaces\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"User interfaces loaded:\0A\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c"Unrecognized category for '-h' option: %s\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@.str.164 = private unnamed_addr constant [55 x i8] c"undisposed object: (%s) %s -- check module destructor\0A\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"HOSTNAME\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"COMPUTERNAME\00", align 1
@.str.168 = private unnamed_addr constant [107 x i8] c"Cannot append hostname to file name `%s': no HOST, HOSTNAME or COMPUTERNAME (Windows) environment variable\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c".%s.%d\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c"Class \22%s\22 is not subclassed from cRNG\00", align 1
@.str.171 = private unnamed_addr constant [68 x i8] c"RNG index %d is out of range (num-rngs=%d, check the configuration)\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"rng-*\00", align 1
@.str.173 = private unnamed_addr constant [79 x i8] c"Configuration error: %s=%s for module/channel %s: numeric RNG indices expected\00", align 1
@.str.174 = private unnamed_addr constant [90 x i8] c"Configuration error: rng-%d=%d of module/channel %s: RNG index out of range (num-rngs=%d)\00", align 1
@.str.175 = private unnamed_addr constant [99 x i8] c"Configuration error: rng-%d=... of module/channel %s: local RNG index out of supported range 0..99\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"Error: %s.\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"Error in component (%s) %s: %s.\00", align 1
@.str.178 = private unnamed_addr constant [37 x i8] c"Error in module (%s) %s (id=%d): %s.\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"Component (%s) %s: %s.\00", align 1
@.str.181 = private unnamed_addr constant [28 x i8] c"Module (%s) %s (id=%d): %s.\00", align 1
@_ZTS21cTerminationException = linkonce_odr dso_local constant [24 x i8] c"21cTerminationException\00", comdat, align 1
@_ZTI21cTerminationException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cTerminationException, ptr @_ZTI10cException }, comdat, align 8
@.str.182 = private unnamed_addr constant [38 x i8] c"Fingerprint successfully verified: %s\00", align 1
@.str.183 = private unnamed_addr constant [53 x i8] c"Fingerprint mismatch! calculated: %s, expected: %s%s\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"one of: \00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.186 = private unnamed_addr constant [58 x i8] c"Network `%s' or `%s' not found, check .ini and .ned files\00", align 1
@.str.187 = private unnamed_addr constant [50 x i8] c"Network `%s' not found, check .ini and .ned files\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"Module type `%s' is not a network\00", align 1
@_ZTS9EnvirBase = dso_local constant [11 x i8] c"9EnvirBase\00", align 1
@_ZTS14cRunnableEnvir = linkonce_odr dso_local constant [17 x i8] c"14cRunnableEnvir\00", comdat, align 1
@_ZTI14cRunnableEnvir = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14cRunnableEnvir, ptr @_ZTI6cEnvir }, comdat, align 8
@_ZTI9EnvirBase = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9EnvirBase, ptr @_ZTI14cRunnableEnvir }, align 8
@.str.190 = private unnamed_addr constant [12 x i8] c"total-stack\00", align 1
@.str.191 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.192 = private unnamed_addr constant [154 x i8] c"Specifies the maximum memory for activity() simple module stacks. You need to increase this value if you get a ``Cannot allocate coroutine stack'' error.\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"parallel-simulation\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.195 = private unnamed_addr constant [41 x i8] c"Enables parallel distributed simulation.\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"scheduler-class\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"cSequentialScheduler\00", align 1
@.str.198 = private unnamed_addr constant [246 x i8] c"Part of the Envir plugin mechanism: selects the scheduler class. This plugin interface allows for implementing real-time, hardware-in-the-loop, distributed and distributed parallel simulation. The class has to implement the cScheduler interface.\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c"parsim-communications-class\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"cFileCommunications\00", align 1
@.str.201 = private unnamed_addr constant [162 x i8] c"If parallel-simulation=true, it selects the class that implements communication between partitions. The class must implement the cParsimCommunications interface.\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"parsim-synchronization-class\00", align 1
@.str.203 = private unnamed_addr constant [21 x i8] c"cNullMessageProtocol\00", align 1
@.str.204 = private unnamed_addr constant [135 x i8] c"If parallel-simulation=true, it selects the parallel simulation algorithm. The class must implement the cParsimSynchronizer interface.\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"outputvectormanager-class\00", align 1
@.str.206 = private unnamed_addr constant [32 x i8] c"cIndexedFileOutputVectorManager\00", align 1
@.str.207 = private unnamed_addr constant [186 x i8] c"Part of the Envir plugin mechanism: selects the output vector manager class to be used to record data from output vectors. The class has to implement the cOutputVectorManager interface.\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"outputscalarmanager-class\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"cFileOutputScalarManager\00", align 1
@.str.210 = private unnamed_addr constant [191 x i8] c"Part of the Envir plugin mechanism: selects the output scalar manager class to be used to record data passed to recordScalar(). The class has to implement the cOutputScalarManager interface.\00", align 1
@.str.211 = private unnamed_addr constant [22 x i8] c"snapshotmanager-class\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"cFileSnapshotManager\00", align 1
@.str.213 = private unnamed_addr constant [170 x i8] c"Part of the Envir plugin mechanism: selects the class to handle streams to which snapshot() writes its output. The class has to implement the cSnapshotManager interface.\00", align 1
@.str.214 = private unnamed_addr constant [18 x i8] c"fname-append-host\00", align 1
@.str.215 = private unnamed_addr constant [186 x i8] c"Turning it on will cause the host name and process Id to be appended to the names of output files (e.g. omnetpp.vec, omnetpp.sca). This is especially useful with distributed simulation.\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"debug-on-errors\00", align 1
@.str.217 = private unnamed_addr constant [253 x i8] c"When set to true, runtime errors will cause the simulation program to break into the C++ debugger (if the simulation is running under one, or just-in-time debugging is activated). Once in the debugger, you can view the stack trace or examine variables.\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"print-undisposed\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.220 = private unnamed_addr constant [110 x i8] c"Whether to report objects left (that is, not deallocated by simple module destructors) after network cleanup.\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"simtime-scale\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"-12\00", align 1
@.str.223 = private unnamed_addr constant [262 x i8] c"Sets the scale exponent, and thus the resolution of time for the 64-bit fixed-point simulation time representation. Accepted values are -18..0; for example, -6 selects microsecond resolution. -12 means picosecond resolution, with a maximum simtime of ~110 days.\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"ned-path\00", align 1
@.str.225 = private unnamed_addr constant [410 x i8] c"A semicolon-separated list of directories. The directories will be regarded as roots of the NED package hierarchy, and all NED files will be loaded from their subdirectory trees. This option is normally left empty, as the OMNeT++ IDE sets the NED path automatically, and for simulations started outside the IDE it is more convenient to specify it via a command-line option or the NEDPATH environment variable.\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.227 = private unnamed_addr constant [158 x i8] c"The name of the network to be simulated.  The package name can be omitted if the ini file is in the same directory as the NED file that contains the network.\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"Enables warnings.\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"sim-time-limit\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.232 = private unnamed_addr constant [92 x i8] c"Stops the simulation when simulation time reaches the given limit. The default is no limit.\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"cpu-time-limit\00", align 1
@.str.234 = private unnamed_addr constant [90 x i8] c"Stops the simulation when CPU usage has reached the given limit. The default is no limit.\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.236 = private unnamed_addr constant [534 x i8] c"The expected fingerprint of the simulation. When provided, a fingerprint will be calculated from the simulation event times and other quantities during simulation, and checked against the given one. Fingerprints are suitable for crude regression tests. As fingerprints occasionally differ across platforms, more than one fingerprint values can be specified here, separated by spaces, and a match with any of them will be accepted. To calculate the initial fingerprint, enter any dummy string (such as \22none\22), and run the simulation.\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"num-rngs\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.239 = private unnamed_addr constant [40 x i8] c"The number of random number generators.\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"rng-class\00", align 1
@.str.241 = private unnamed_addr constant [17 x i8] c"cMersenneTwister\00", align 1
@.str.242 = private unnamed_addr constant [169 x i8] c"The random number generator class to be used. It can be `cMersenneTwister', `cLCG32', `cAkaroaRNG', or you can use your own RNG class (it must be subclassed from cRNG).\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"seed-set\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"${runnumber}\00", align 1
@.str.245 = private unnamed_addr constant [183 x i8] c"Selects the kth set of automatic random number seeds for the simulation. Meaningful values include ${repetition} which is the repeat loop counter (see repeat= key), and ${runnumber}.\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"result-dir\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@.str.248 = private unnamed_addr constant [155 x i8] c"Value for the ${resultdir} variable, which is used as the default directory for result files (output vector file, output scalar file, eventlog file, etc.)\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"record-eventlog\00", align 1
@.str.250 = private unnamed_addr constant [118 x i8] c"Enables recording an eventlog file, which can be later visualized on a sequence chart. See eventlog-file= option too.\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"partition-id\00", align 1
@.str.252 = private unnamed_addr constant [261 x i8] c"With parallel simulation: in which partition the module should be instantiated. Specify numeric partition ID, or a comma-separated list of partition IDs for compound modules that span across multiple partitions. Ranges (\225..9\22) and \22*\22 (=all) are accepted too.\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"rng-%\00", align 1
@.str.254 = private unnamed_addr constant [181 x i8] c"Maps a module-local RNG to one of the global RNGs. Example: **.gen.rng-1=3 maps the local RNG 1 of modules matching `**.gen' to the global RNG 3. The default is one-to-one mapping.\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.255 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.257 = private unnamed_addr constant [82 x i8] c"GCC Ubuntu Clang 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)\00", align 1
@.str.258 = private unnamed_addr constant [50 x i8] c"%d-bit RELEASE simtime_t=%s large-file-support=%s\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c" WITH_NETBUILDER\00", align 1
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV20ModNameParamResolver = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@.str.260 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.261 = private unnamed_addr constant [56 x i8] c"check_and_cast(): cannot cast NULL pointer to type '%s'\00", align 1
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSP21cOmnetAppRegistration = linkonce_odr dso_local constant [25 x i8] c"P21cOmnetAppRegistration\00", comdat, align 1
@_ZTS21cOmnetAppRegistration = linkonce_odr dso_local constant [24 x i8] c"21cOmnetAppRegistration\00", comdat, align 1
@_ZTI21cOmnetAppRegistration = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cOmnetAppRegistration, ptr @_ZTI12cOwnedObject }, comdat, align 8
@_ZTIP21cOmnetAppRegistration = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSP21cOmnetAppRegistration, i32 0, ptr @_ZTI21cOmnetAppRegistration }, comdat, align 8
@_ZTI7cObject = external constant ptr
@.str.262 = private unnamed_addr constant [52 x i8] c"check_and_cast(): cannot cast (%s *)%s to type '%s'\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_envirbase.cc, ptr null }]

@_ZN9EnvirBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9EnvirBaseD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_91Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !222 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.190, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef nonnull @.str.192)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_TOTAL_STACK, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_92Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !231 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.193, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARALLEL_SIMULATION, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_93Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !232 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.196, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SCHEDULER_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_94Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !233 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.199, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARSIM_COMMUNICATIONS_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_95Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !234 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.202, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARSIM_SYNCHRONIZATION_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_96Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !235 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.205, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUTVECTORMANAGER_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_97Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !236 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.208, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUTSCALARMANAGER_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_98Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !237 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.211, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SNAPSHOTMANAGER_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_99Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !238 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.214, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.215)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_FNAME_APPEND_HOST, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_100Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !239 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.216, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.217)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_DEBUG_ON_ERRORS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_101Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !240 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.218, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PRINT_UNDISPOSED, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_102Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !241 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.221, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SIMTIME_SCALE, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_103Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !242 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.224, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 6, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.225)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NED_PATH, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_105Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !243 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.226, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.227)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NETWORK, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_106Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !244 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.228, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.229)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_WARNINGS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_107Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !245 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.230, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull @.str.232)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SIM_TIME_LIMIT, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_108Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !246 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.233, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull @.str.234)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_CPU_TIME_LIMIT, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_109Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !247 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.235, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.236)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_FINGERPRINT, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_110Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !248 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.237, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NUM_RNGS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_111Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !249 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.240, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RNG_CLASS, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_112Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !250 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.243, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SEED_SET, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_113Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !251 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.246, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RESULT_DIR, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_114Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !252 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.249, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.250)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RECORD_EVENTLOG, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_115Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !253 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.251, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.252)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARTITION_ID, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_116Ev() #3 personality ptr @__gxx_personality_v0 !prof !221 !PGOFuncName !254 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #37
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.253, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.254)
          to label %3 unwind label %7, !prof !223

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RNG_K, align 8, !tbaa !224
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !230
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  tail call void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0)
  store ptr getelementptr inbounds ({ [73 x ptr] }, ptr @_ZTV9EnvirBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !228
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  store ptr null, ptr %2, align 8, !tbaa !255
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  store ptr null, ptr %4, align 8, !tbaa !255
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  store i64 0, ptr %6, align 8, !tbaa !257
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  store ptr null, ptr %7, align 8, !tbaa !255
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 38
  store i64 0, ptr %8, align 8, !tbaa !257
  %9 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  store i32 0, ptr %10, align 8, !tbaa !260
  %11 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN9EnvirBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  store ptr getelementptr inbounds ({ [73 x ptr] }, ptr @_ZTV9EnvirBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !228
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !269

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 5
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #39
  %7 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 4
  %8 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 4, i32 0, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %9)
          to label %13 unwind label %10, !prof !223

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #40
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 3
  %15 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %16)
          to label %20 unwind label %17, !prof !223

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #40
  unreachable

20:                                               ; preds = %13
  %21 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !274
  %23 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 2, i32 2
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %29, !prof !269

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 2, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !277
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %22) #38
  br label %30

30:                                               ; preds = %25, %29
  tail call void @_ZdlPv(ptr noundef %3) #38
  br label %31

31:                                               ; preds = %30, %1
  %32 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !278
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !269

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !228
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33) #39, !prof !279
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !280
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43, !prof !269

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !228
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(56) %41) #39, !prof !281
  br label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %49 = load ptr, ptr %48, align 8, !tbaa !282
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !269

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !228
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49) #39, !prof !283
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %57 = load ptr, ptr %56, align 8, !tbaa !284
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59, !prof !269

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !228
  %61 = getelementptr inbounds ptr, ptr %60, i64 4
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(8) %57) #39, !prof !285
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %65 = load ptr, ptr %64, align 8, !tbaa !286
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !269

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !228
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %65) #39, !prof !287
  br label %71

71:                                               ; preds = %67, %63
  %72 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %73 = load i32, ptr %72, align 8, !tbaa !260
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77, !prof !288

75:                                               ; preds = %71
  %76 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  br label %81

77:                                               ; preds = %91, %71
  %78 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %79 = load ptr, ptr %78, align 8, !tbaa !289
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %96, !prof !269

81:                                               ; preds = %75, %91
  %82 = phi i64 [ 0, %75 ], [ %92, %91 ]
  %83 = load ptr, ptr %76, align 8, !tbaa !289
  %84 = getelementptr inbounds ptr, ptr %83, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !224
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87, !prof !269

87:                                               ; preds = %81
  %88 = load ptr, ptr %85, align 8, !tbaa !228
  %89 = getelementptr inbounds ptr, ptr %88, i64 4
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(16) %85) #39, !prof !290
  br label %91

91:                                               ; preds = %81, %87
  %92 = add nuw nsw i64 %82, 1
  %93 = load i32, ptr %72, align 8, !tbaa !260
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %81, label %77, !prof !291, !llvm.loop !292

96:                                               ; preds = %77
  tail call void @_ZdaPv(ptr noundef %79) #38
  br label %97

97:                                               ; preds = %96, %77
  %98 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  %99 = load ptr, ptr %98, align 8, !tbaa !255
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !223

101:                                              ; preds = %97
  tail call void @_ZdaPv(ptr noundef %99) #38
  br label %102

102:                                              ; preds = %97, %101
  %103 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !255
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106, !prof !269

106:                                              ; preds = %102
  tail call void @_ZdaPv(ptr noundef %104) #38
  br label %107

107:                                              ; preds = %102, %106
  %108 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  %109 = load ptr, ptr %108, align 8, !tbaa !255
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !269

111:                                              ; preds = %107
  tail call void @_ZdaPv(ptr noundef %109) #38
  br label %112

112:                                              ; preds = %107, %111
  %113 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %114 = load ptr, ptr %113, align 8, !tbaa !255
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116, !prof !269

116:                                              ; preds = %112
  tail call void @_ZdaPv(ptr noundef %114) #38
  br label %117

117:                                              ; preds = %112, %116
  %118 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !255
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121, !prof !269

121:                                              ; preds = %117
  tail call void @_ZdaPv(ptr noundef %119) #38
  br label %122

122:                                              ; preds = %117, %121
  %123 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !255
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126, !prof !269

126:                                              ; preds = %122
  tail call void @_ZdaPv(ptr noundef %124) #38
  br label %127

127:                                              ; preds = %122, %126
  %128 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 10
  %129 = load ptr, ptr %128, align 8, !tbaa !255
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131, !prof !269

131:                                              ; preds = %127
  tail call void @_ZdaPv(ptr noundef %129) #38
  br label %132

132:                                              ; preds = %127, %131
  %133 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !255
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !223

136:                                              ; preds = %132
  tail call void @_ZdaPv(ptr noundef %134) #38
  br label %137

137:                                              ; preds = %132, %136
  %138 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 8
  %139 = load ptr, ptr %138, align 8, !tbaa !255
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141, !prof !223

141:                                              ; preds = %137
  tail call void @_ZdaPv(ptr noundef %139) #38
  br label %142

142:                                              ; preds = %137, %141
  %143 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !255
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146, !prof !269

146:                                              ; preds = %142
  tail call void @_ZdaPv(ptr noundef %144) #38
  br label %147

147:                                              ; preds = %142, %146
  tail call void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #39
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN9EnvirBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !295 {
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN9EnvirBase3runEiPPcP14cConfiguration(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %5 = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #37
  invoke void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %5)
          to label %6 unwind label %11, !prof !223

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !268
  tail call void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168) %5, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str)
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9, !prof !269

9:                                                ; preds = %6
  %10 = tail call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI14cConfiguration, ptr nonnull @_ZTI16cConfigurationEx, i64 0) #39
  br label %13

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %5) #38
  br label %48

13:                                               ; preds = %6, %9
  %14 = phi ptr [ %10, %9 ], [ null, %6 ]
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !278
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %27, !prof !269

17:                                               ; preds = %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %19 = load ptr, ptr %3, align 8, !tbaa !228
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %25

23:                                               ; preds = %17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.26, ptr noundef %22)
          to label %24 unwind label %25

24:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

25:                                               ; preds = %23, %17
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #39
  br label %48

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !228
  %29 = getelementptr inbounds ptr, ptr %28, i64 58
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !296
  br i1 %31, label %32, label %45, !prof !223

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !228
  %34 = getelementptr inbounds ptr, ptr %33, i64 59
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !297
  br i1 %36, label %37, label %41, !prof !223

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !228
  %39 = getelementptr inbounds ptr, ptr %38, i64 60
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !298
  br label %41

41:                                               ; preds = %37, %32
  %42 = load ptr, ptr %0, align 8, !tbaa !228
  %43 = getelementptr inbounds ptr, ptr %42, i64 61
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !299
  br label %45

45:                                               ; preds = %41, %27
  %46 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !300
  ret i32 %47

48:                                               ; preds = %25, %11
  %49 = phi { ptr, i32 } [ %26, %25 ], [ %12, %11 ]
  resume { ptr, i32 } %49
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase18simulationRequiredEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::vector", align 8
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 noundef signext 104)
  %8 = load ptr, ptr %5, align 8, !tbaa !268
  br i1 %7, label %9, label %14, !prof !269

9:                                                ; preds = %1
  %10 = tail call noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %8, i8 noundef signext 104, i32 noundef 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @_ZN9EnvirBase9printHelpEv(ptr nonnull align 8 poison)
  br label %267

13:                                               ; preds = %9
  tail call void @_ZN9EnvirBase17dumpComponentListEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull %10)
  br label %267

14:                                               ; preds = %1
  %15 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %8, i8 noundef signext 118)
  br i1 %15, label %16, label %61, !prof !269

16:                                               ; preds = %14
  %17 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %18 = getelementptr inbounds %class.cEnvir, ptr %17, i64 0, i32 4
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.27, i64 noundef 1)
  %20 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %21 = getelementptr inbounds %class.cEnvir, ptr %20, i64 0, i32 4
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.28, i64 noundef 31)
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.27, i64 noundef 1)
  %24 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %25 = getelementptr inbounds %class.cEnvir, ptr %24, i64 0, i32 4
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.29, i64 noundef 10)
  %27 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %24, ptr noundef nonnull align 8 dereferenceable(8) @_ZL12compilerInfo)
  %28 = getelementptr inbounds %class.cEnvir, ptr %27, i64 0, i32 4
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.27, i64 noundef 1)
  %30 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %31 = getelementptr inbounds %class.cEnvir, ptr %30, i64 0, i32 4
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.30, i64 noundef 9)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39
  %33 = tail call noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI7SimTime)
  call void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.258, i64 noundef 64, ptr noundef %33, ptr noundef nonnull @.str.31)
  %34 = load ptr, ptr %2, align 8, !tbaa !274
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !277
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %34, i64 noundef %36)
          to label %38 unwind label %51

38:                                               ; preds = %16
  %39 = load ptr, ptr %2, align 8, !tbaa !274
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, ptr %35, align 8, !tbaa !277
  %44 = icmp ult i64 %43, 16
  call void @llvm.assume(i1 %44)
  br label %46

45:                                               ; preds = %38
  call void @_ZdlPv(ptr noundef %39) #38
  br label %46

46:                                               ; preds = %42, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  %47 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %48 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %47, ptr noundef nonnull align 8 dereferenceable(8) @_ZL12buildOptions)
  %49 = getelementptr inbounds %class.cEnvir, ptr %48, i64 0, i32 4
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull @.str.27, i64 noundef 1)
  br label %267

51:                                               ; preds = %16
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load ptr, ptr %2, align 8, !tbaa !274
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, ptr %35, align 8, !tbaa !277
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %51
  call void @_ZdlPv(ptr noundef %53) #38
  br label %60

60:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %269

61:                                               ; preds = %14
  %62 = load ptr, ptr %0, align 8, !tbaa !228
  %63 = getelementptr inbounds ptr, ptr %62, i64 32
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !301
  %66 = load ptr, ptr %5, align 8, !tbaa !268
  %67 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %66, i8 noundef signext 97)
  br i1 %67, label %68, label %157, !prof !269

68:                                               ; preds = %61
  %69 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %70 = load ptr, ptr %69, align 8, !tbaa !228
  %71 = getelementptr inbounds ptr, ptr %70, i64 36
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef i32 (ptr, ptr, ...) %72(ptr noundef nonnull align 8 dereferenceable(288) %69, ptr noundef nonnull @.str.27)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39
  %74 = load ptr, ptr %65, align 8, !tbaa !228
  %75 = getelementptr inbounds ptr, ptr %74, i64 43
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %65)
  %77 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !302
  %79 = load ptr, ptr %3, align 8, !tbaa !304
  %80 = ptrtoint ptr %78 to i64
  %81 = ptrtoint ptr %79 to i64
  %82 = sub i64 %80, %81
  %83 = lshr exact i64 %82, 5
  %84 = trunc i64 %83 to i32
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %123, %68
  %87 = phi ptr [ %78, %68 ], [ %125, %123 ]
  %88 = phi ptr [ %79, %68 ], [ %126, %123 ]
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %103, label %90

90:                                               ; preds = %86, %100
  %91 = phi ptr [ %101, %100 ], [ %88, %86 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !274
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !277
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %100

99:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %92) #38
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 1
  %102 = icmp eq ptr %101, %87
  br i1 %102, label %103, label %90, !llvm.loop !305

103:                                              ; preds = %100, %86
  %104 = load ptr, ptr %3, align 8, !tbaa !304
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %104) #38
  br label %107

107:                                              ; preds = %103, %106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39
  br label %267

108:                                              ; preds = %68, %123
  %109 = phi i64 [ %124, %123 ], [ 0, %68 ]
  %110 = phi ptr [ %126, %123 ], [ %79, %68 ]
  %111 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %110, i64 %109
  %113 = load ptr, ptr %112, align 8, !tbaa !274
  %114 = load ptr, ptr %65, align 8, !tbaa !228
  %115 = getelementptr inbounds ptr, ptr %114, i64 47
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %113)
          to label %118 unwind label %133

118:                                              ; preds = %108
  %119 = load ptr, ptr %111, align 8, !tbaa !228
  %120 = getelementptr inbounds ptr, ptr %119, i64 36
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef i32 (ptr, ptr, ...) %121(ptr noundef nonnull align 8 dereferenceable(288) %111, ptr noundef nonnull @.str.32, ptr noundef %113, i32 noundef %117)
          to label %123 unwind label %133

123:                                              ; preds = %118
  %124 = add nuw nsw i64 %109, 1
  %125 = load ptr, ptr %77, align 8, !tbaa !302
  %126 = load ptr, ptr %3, align 8, !tbaa !304
  %127 = ptrtoint ptr %125 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = shl i64 %129, 27
  %131 = ashr i64 %130, 32
  %132 = icmp slt i64 %124, %131
  br i1 %132, label %108, label %86, !llvm.loop !306

133:                                              ; preds = %118, %108
  %134 = landingpad { ptr, i32 }
          cleanup
  %135 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %136 = load ptr, ptr %3, align 8, !tbaa !304
  %137 = load ptr, ptr %135, align 8, !tbaa !302
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %152, label %139

139:                                              ; preds = %133, %149
  %140 = phi ptr [ %150, %149 ], [ %136, %133 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !274
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %140, i64 0, i32 2
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %140, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !277
  %147 = icmp ult i64 %146, 16
  call void @llvm.assume(i1 %147)
  br label %149

148:                                              ; preds = %139
  call void @_ZdlPv(ptr noundef %141) #38
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %140, i64 1
  %151 = icmp eq ptr %150, %137
  br i1 %151, label %152, label %139, !llvm.loop !305

152:                                              ; preds = %149, %133
  %153 = load ptr, ptr %3, align 8, !tbaa !304
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %153) #38
  br label %156

156:                                              ; preds = %152, %155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39
  br label %269

157:                                              ; preds = %61
  %158 = load ptr, ptr %5, align 8, !tbaa !268
  %159 = tail call noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %158, i8 noundef signext 120, i32 noundef 0)
  %160 = icmp eq ptr %159, null
  br i1 %160, label %267, label %161, !prof !223

161:                                              ; preds = %157
  %162 = load ptr, ptr %5, align 8, !tbaa !268
  %163 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %162, i8 noundef signext 103)
  %164 = load ptr, ptr %5, align 8, !tbaa !268
  %165 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %164, i8 noundef signext 71)
  %166 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %167 = load ptr, ptr %166, align 8, !tbaa !228
  %168 = getelementptr inbounds ptr, ptr %167, i64 36
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef i32 (ptr, ptr, ...) %169(ptr noundef nonnull align 8 dereferenceable(288) %166, ptr noundef nonnull @.str.27)
  %171 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %172 = load ptr, ptr %171, align 8, !tbaa !228
  %173 = getelementptr inbounds ptr, ptr %172, i64 36
  %174 = load ptr, ptr %173, align 8
  %175 = tail call noundef i32 (ptr, ptr, ...) %174(ptr noundef nonnull align 8 dereferenceable(288) %171, ptr noundef nonnull @.str.33, ptr noundef nonnull %159)
  %176 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %177 = load ptr, ptr %65, align 8, !tbaa !228
  %178 = getelementptr inbounds ptr, ptr %177, i64 47
  %179 = load ptr, ptr %178, align 8
  %180 = tail call noundef i32 %179(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %159)
  %181 = load ptr, ptr %176, align 8, !tbaa !228
  %182 = getelementptr inbounds ptr, ptr %181, i64 36
  %183 = load ptr, ptr %182, align 8
  %184 = tail call noundef i32 (ptr, ptr, ...) %183(ptr noundef nonnull align 8 dereferenceable(288) %176, ptr noundef nonnull @.str.34, i32 noundef %180)
  %185 = or i1 %163, %165
  br i1 %185, label %186, label %267

186:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  %187 = load ptr, ptr %65, align 8, !tbaa !228
  %188 = getelementptr inbounds ptr, ptr %187, i64 48
  %189 = load ptr, ptr %188, align 8
  call void %189(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %159, i1 noundef zeroext %165)
  %190 = select i1 %165, ptr @.str.35, ptr @.str.36
  %191 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !302
  %193 = load ptr, ptr %4, align 8, !tbaa !304
  %194 = ptrtoint ptr %192 to i64
  %195 = ptrtoint ptr %193 to i64
  %196 = sub i64 %194, %195
  %197 = lshr exact i64 %196, 5
  %198 = trunc i64 %197 to i32
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %222, label %200

200:                                              ; preds = %233, %186
  %201 = phi ptr [ %192, %186 ], [ %235, %233 ]
  %202 = phi ptr [ %193, %186 ], [ %236, %233 ]
  %203 = icmp eq ptr %202, %201
  br i1 %203, label %217, label %204

204:                                              ; preds = %200, %214
  %205 = phi ptr [ %215, %214 ], [ %202, %200 ]
  %206 = load ptr, ptr %205, align 8, !tbaa !274
  %207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %205, i64 0, i32 2
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %205, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !277
  %212 = icmp ult i64 %211, 16
  call void @llvm.assume(i1 %212)
  br label %214

213:                                              ; preds = %204
  call void @_ZdlPv(ptr noundef %206) #38
  br label %214

214:                                              ; preds = %213, %209
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %205, i64 1
  %216 = icmp eq ptr %215, %201
  br i1 %216, label %217, label %204, !llvm.loop !305

217:                                              ; preds = %214, %200
  %218 = load ptr, ptr %4, align 8, !tbaa !304
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call void @_ZdlPv(ptr noundef %218) #38
  br label %221

221:                                              ; preds = %217, %220
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  br label %267

222:                                              ; preds = %186, %233
  %223 = phi i64 [ %234, %233 ], [ 0, %186 ]
  %224 = phi ptr [ %236, %233 ], [ %193, %186 ]
  %225 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %226 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %224, i64 %223
  %227 = load ptr, ptr %226, align 8, !tbaa !274
  %228 = load ptr, ptr %225, align 8, !tbaa !228
  %229 = getelementptr inbounds ptr, ptr %228, i64 36
  %230 = load ptr, ptr %229, align 8
  %231 = trunc i64 %223 to i32
  %232 = invoke noundef i32 (ptr, ptr, ...) %230(ptr noundef nonnull align 8 dereferenceable(288) %225, ptr noundef nonnull %190, i32 noundef %231, ptr noundef %227)
          to label %233 unwind label %243

233:                                              ; preds = %222
  %234 = add nuw nsw i64 %223, 1
  %235 = load ptr, ptr %191, align 8, !tbaa !302
  %236 = load ptr, ptr %4, align 8, !tbaa !304
  %237 = ptrtoint ptr %235 to i64
  %238 = ptrtoint ptr %236 to i64
  %239 = sub i64 %237, %238
  %240 = shl i64 %239, 27
  %241 = ashr i64 %240, 32
  %242 = icmp slt i64 %234, %241
  br i1 %242, label %222, label %200, !llvm.loop !307

243:                                              ; preds = %222
  %244 = landingpad { ptr, i32 }
          cleanup
  %245 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %246 = load ptr, ptr %4, align 8, !tbaa !304
  %247 = load ptr, ptr %245, align 8, !tbaa !302
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %262, label %249

249:                                              ; preds = %243, %259
  %250 = phi ptr [ %260, %259 ], [ %246, %243 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !274
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %250, i64 0, i32 2
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %250, i64 0, i32 1
  %256 = load i64, ptr %255, align 8, !tbaa !277
  %257 = icmp ult i64 %256, 16
  call void @llvm.assume(i1 %257)
  br label %259

258:                                              ; preds = %249
  call void @_ZdlPv(ptr noundef %251) #38
  br label %259

259:                                              ; preds = %258, %254
  %260 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %250, i64 1
  %261 = icmp eq ptr %260, %247
  br i1 %261, label %262, label %249, !llvm.loop !305

262:                                              ; preds = %259, %243
  %263 = load ptr, ptr %4, align 8, !tbaa !304
  %264 = icmp eq ptr %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  call void @_ZdlPv(ptr noundef %263) #38
  br label %266

266:                                              ; preds = %262, %265
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  br label %269

267:                                              ; preds = %107, %157, %221, %161, %12, %13, %46
  %268 = phi i1 [ false, %46 ], [ false, %13 ], [ false, %12 ], [ false, %107 ], [ %160, %157 ], [ false, %221 ], [ false, %161 ]
  ret i1 %268

269:                                              ; preds = %156, %266, %60
  %270 = phi { ptr, i32 } [ %52, %60 ], [ %134, %156 ], [ %244, %266 ]
  resume { ptr, i32 } %270
}

declare noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext) local_unnamed_addr #0

declare noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase9printHelpEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #3 align 2 !prof !295 {
  %2 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %3 = getelementptr inbounds %class.cEnvir, ptr %2, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.27, i64 noundef 1)
  %5 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %6 = getelementptr inbounds %class.cEnvir, ptr %5, i64 0, i32 4
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.49, i64 noundef 22)
  %8 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %9 = getelementptr inbounds %class.cEnvir, ptr %8, i64 0, i32 4
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.50, i64 noundef 28)
  %11 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %12 = getelementptr inbounds %class.cEnvir, ptr %11, i64 0, i32 4
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.51, i64 noundef 77)
  %14 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %15 = getelementptr inbounds %class.cEnvir, ptr %14, i64 0, i32 4
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.52, i64 noundef 50)
  %17 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %18 = getelementptr inbounds %class.cEnvir, ptr %17, i64 0, i32 4
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.53, i64 noundef 72)
  %20 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %21 = getelementptr inbounds %class.cEnvir, ptr %20, i64 0, i32 4
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.54, i64 noundef 72)
  %23 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %24 = getelementptr inbounds %class.cEnvir, ptr %23, i64 0, i32 4
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.55, i64 noundef 72)
  %26 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %27 = getelementptr inbounds %class.cEnvir, ptr %26, i64 0, i32 4
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.56, i64 noundef 73)
  %29 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %30 = getelementptr inbounds %class.cEnvir, ptr %29, i64 0, i32 4
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.57, i64 noundef 74)
  %32 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %33 = getelementptr inbounds %class.cEnvir, ptr %32, i64 0, i32 4
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull @.str.58, i64 noundef 76)
  %35 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %36 = getelementptr inbounds %class.cEnvir, ptr %35, i64 0, i32 4
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.59, i64 noundef 77)
  %38 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %39 = getelementptr inbounds %class.cEnvir, ptr %38, i64 0, i32 4
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.60, i64 noundef 75)
  %41 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %42 = getelementptr inbounds %class.cEnvir, ptr %41, i64 0, i32 4
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.61, i64 noundef 74)
  %44 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %45 = getelementptr inbounds %class.cEnvir, ptr %44, i64 0, i32 4
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.62, i64 noundef 32)
  %47 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %48 = getelementptr inbounds %class.cEnvir, ptr %47, i64 0, i32 4
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @.str.63, i64 noundef 32)
  %50 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %51 = getelementptr inbounds %class.cEnvir, ptr %50, i64 0, i32 4
  %52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull @.str.64, i64 noundef 73)
  %53 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %54 = getelementptr inbounds %class.cEnvir, ptr %53, i64 0, i32 4
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull @.str.65, i64 noundef 77)
  %56 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %57 = getelementptr inbounds %class.cEnvir, ptr %56, i64 0, i32 4
  %58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull @.str.66, i64 noundef 39)
  %59 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %60 = getelementptr inbounds %class.cEnvir, ptr %59, i64 0, i32 4
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.67, i64 noundef 45)
  %62 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %63 = getelementptr inbounds %class.cEnvir, ptr %62, i64 0, i32 4
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull @.str.68, i64 noundef 45)
  %65 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %66 = getelementptr inbounds %class.cEnvir, ptr %65, i64 0, i32 4
  %67 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.69, i64 noundef 45)
  %68 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %69 = getelementptr inbounds %class.cEnvir, ptr %68, i64 0, i32 4
  %70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull @.str.70, i64 noundef 46)
  %71 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %72 = getelementptr inbounds %class.cEnvir, ptr %71, i64 0, i32 4
  %73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull @.str.71, i64 noundef 42)
  %74 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %75 = getelementptr inbounds %class.cEnvir, ptr %74, i64 0, i32 4
  %76 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull @.str.72, i64 noundef 45)
  %77 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %78 = getelementptr inbounds %class.cEnvir, ptr %77, i64 0, i32 4
  %79 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.73, i64 noundef 66)
  %80 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %81 = getelementptr inbounds %class.cEnvir, ptr %80, i64 0, i32 4
  %82 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef nonnull @.str.74, i64 noundef 72)
  %83 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %84 = getelementptr inbounds %class.cEnvir, ptr %83, i64 0, i32 4
  %85 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull @.str.75, i64 noundef 42)
  %86 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %87 = getelementptr inbounds %class.cEnvir, ptr %86, i64 0, i32 4
  %88 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull @.str.76, i64 noundef 70)
  %89 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %90 = getelementptr inbounds %class.cEnvir, ptr %89, i64 0, i32 4
  %91 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull @.str.77, i64 noundef 78)
  %92 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %93 = getelementptr inbounds %class.cEnvir, ptr %92, i64 0, i32 4
  %94 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef nonnull @.str.78, i64 noundef 72)
  %95 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %96 = getelementptr inbounds %class.cEnvir, ptr %95, i64 0, i32 4
  %97 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull @.str.79, i64 noundef 64)
  %98 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %99 = getelementptr inbounds %class.cEnvir, ptr %98, i64 0, i32 4
  %100 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull @.str.80, i64 noundef 53)
  %101 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %102 = getelementptr inbounds %class.cEnvir, ptr %101, i64 0, i32 4
  %103 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull @.str.81, i64 noundef 54)
  %104 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %105 = getelementptr inbounds %class.cEnvir, ptr %104, i64 0, i32 4
  %106 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.82, i64 noundef 45)
  %107 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %108 = getelementptr inbounds %class.cEnvir, ptr %107, i64 0, i32 4
  %109 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @.str.83, i64 noundef 45)
  %110 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %111 = getelementptr inbounds %class.cEnvir, ptr %110, i64 0, i32 4
  %112 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull @.str.27, i64 noundef 1)
  %113 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
  %114 = load ptr, ptr %113, align 8, !tbaa !228
  %115 = getelementptr inbounds ptr, ptr %114, i64 27
  %116 = load ptr, ptr %115, align 8
  tail call void %116(ptr noundef nonnull align 8 dereferenceable(144) %113)
  %117 = load ptr, ptr %113, align 8, !tbaa !228
  %118 = getelementptr inbounds ptr, ptr %117, i64 23
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef i32 %119(ptr noundef nonnull align 8 dereferenceable(144) %113)
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %148, %1
  ret void

123:                                              ; preds = %1, %148
  %124 = phi i32 [ %149, %148 ], [ 0, %1 ]
  %125 = load ptr, ptr %113, align 8, !tbaa !228
  %126 = getelementptr inbounds ptr, ptr %125, i64 24
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(144) %113, i32 noundef %124)
  %129 = tail call noundef ptr @_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject(ptr noundef %128)
  %130 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !308
  %132 = tail call noundef ptr %131()
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %123
  %135 = tail call ptr @__dynamic_cast(ptr nonnull %132, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #39
  br label %136

136:                                              ; preds = %123, %134
  %137 = phi ptr [ %135, %134 ], [ null, %123 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %132, align 8, !tbaa !228
  %141 = getelementptr inbounds ptr, ptr %140, i64 64
  %142 = load ptr, ptr %141, align 8
  tail call void %142(ptr noundef nonnull align 8 dereferenceable(600) %132)
  br label %143

143:                                              ; preds = %139, %136
  br i1 %133, label %148, label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %132, align 8, !tbaa !228
  %146 = getelementptr inbounds ptr, ptr %145, i64 4
  %147 = load ptr, ptr %146, align 8
  tail call void %147(ptr noundef nonnull align 8 dereferenceable(288) %132) #39
  br label %148

148:                                              ; preds = %144, %143
  %149 = add nuw nsw i32 %124, 1
  %150 = load ptr, ptr %113, align 8, !tbaa !228
  %151 = getelementptr inbounds ptr, ptr %150, i64 23
  %152 = load ptr, ptr %151, align 8
  %153 = tail call noundef i32 %152(ptr noundef nonnull align 8 dereferenceable(144) %113)
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %123, label %122, !llvm.loop !314
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase17dumpComponentListEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::vector.33", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::allocator", align 1
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::vector.33", align 8
  %31 = alloca %class.opp_string, align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca %"class.std::set", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca %"class.std::allocator", align 1
  %38 = alloca %"class.std::__cxx11::basic_string", align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::vector.33", align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca ptr, align 8
  %49 = alloca %"class.std::__cxx11::basic_string", align 8
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.84) #42
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %2
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.85) #42
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.86) #42
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %386

58:                                               ; preds = %55, %52, %2
  %59 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %60 = getelementptr inbounds %class.cEnvir, ptr %59, i64 0, i32 4
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.87, i64 noundef 33)
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.86) #42
  %63 = icmp ne i32 %62, 0
  %64 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %65 = load ptr, ptr %64, align 8, !tbaa !228
  %66 = getelementptr inbounds ptr, ptr %65, i64 27
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(144) %64)
  %68 = load ptr, ptr %64, align 8, !tbaa !228
  %69 = getelementptr inbounds ptr, ptr %68, i64 23
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(144) %64)
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  br label %103

75:                                               ; preds = %261, %58
  %76 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %77 = getelementptr inbounds %class.cEnvir, ptr %76, i64 0, i32 4
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull @.str.27, i64 noundef 1)
  %79 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %80 = getelementptr inbounds %class.cEnvir, ptr %79, i64 0, i32 4
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef nonnull @.str.103, i64 noundef 56)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #39
  %82 = load ptr, ptr %0, align 8, !tbaa !228
  %83 = getelementptr inbounds ptr, ptr %82, i64 32
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(600) %0)
  %86 = load ptr, ptr %85, align 8, !tbaa !228
  %87 = getelementptr inbounds ptr, ptr %86, i64 53
  %88 = load ptr, ptr %87, align 8
  call void %88(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %85)
  %89 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %10, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !315
  %91 = load ptr, ptr %10, align 8, !tbaa !317
  %92 = ptrtoint ptr %90 to i64
  %93 = ptrtoint ptr %91 to i64
  %94 = sub i64 %92, %93
  %95 = lshr exact i64 %94, 3
  %96 = trunc i64 %95 to i32
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %268

98:                                               ; preds = %75
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  br label %272

103:                                              ; preds = %73, %261
  %104 = phi i32 [ 0, %73 ], [ %262, %261 ]
  %105 = load ptr, ptr %64, align 8, !tbaa !228
  %106 = getelementptr inbounds ptr, ptr %105, i64 24
  %107 = load ptr, ptr %106, align 8
  %108 = call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(144) %64, i32 noundef %104)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = call ptr @__dynamic_cast(ptr nonnull %108, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cConfigOption, i64 0) #39
  br label %112

112:                                              ; preds = %103, %110
  %113 = phi ptr [ %111, %110 ], [ null, %103 ]
  br i1 %63, label %114, label %118

114:                                              ; preds = %112
  %115 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %116 = getelementptr inbounds %class.cEnvir, ptr %115, i64 0, i32 4
  %117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @.str.88, i64 noundef 2)
  br label %118

118:                                              ; preds = %114, %112
  %119 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 1
  %120 = load i8, ptr %119, align 4, !tbaa !318, !range !322, !noundef !323
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %124 = getelementptr inbounds %class.cEnvir, ptr %123, i64 0, i32 4
  %125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull @.str.89, i64 noundef 19)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39
  %128 = load ptr, ptr %113, align 8, !tbaa !228
  %129 = getelementptr inbounds ptr, ptr %128, i64 6
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(20) %113)
  store ptr %131, ptr %3, align 8, !tbaa !224
  %132 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %127, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %133 = getelementptr inbounds %class.cEnvir, ptr %132, i64 0, i32 4
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef nonnull @.str.90, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39
  %135 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %136 = getelementptr inbounds %class.cEnvir, ptr %135, i64 0, i32 4
  %137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef nonnull @.str.91, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39
  %138 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 3
  %139 = load i32, ptr %138, align 8, !tbaa !324
  %140 = call noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %139)
  store ptr %140, ptr %4, align 8, !tbaa !224
  %141 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %135, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %142 = getelementptr inbounds %class.cEnvir, ptr %141, i64 0, i32 4
  %143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %142, ptr noundef nonnull @.str.92, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39
  %144 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 4
  %145 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 4, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !277
  %147 = icmp eq i64 %146, 0
  %148 = load ptr, ptr %144, align 8
  %149 = icmp eq ptr %148, null
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %126
  %152 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %153 = getelementptr inbounds %class.cEnvir, ptr %152, i64 0, i32 4
  %154 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef nonnull @.str.93, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39
  %155 = load i64, ptr %145, align 8, !tbaa !277
  %156 = icmp eq i64 %155, 0
  %157 = load ptr, ptr %144, align 8
  %158 = select i1 %156, ptr null, ptr %157
  store ptr %158, ptr %5, align 8, !tbaa !224
  %159 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %152, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %160 = getelementptr inbounds %class.cEnvir, ptr %159, i64 0, i32 4
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef nonnull @.str.94, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39
  br label %162

162:                                              ; preds = %151, %126
  %163 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 5
  %164 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 5, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !277
  %166 = icmp eq i64 %165, 0
  %167 = load ptr, ptr %163, align 8
  %168 = icmp eq ptr %167, null
  %169 = select i1 %166, i1 true, i1 %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %162
  %171 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %172 = getelementptr inbounds %class.cEnvir, ptr %171, i64 0, i32 4
  %173 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef nonnull @.str.95, i64 noundef 10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39
  %174 = load i64, ptr %164, align 8, !tbaa !277
  %175 = icmp eq i64 %174, 0
  %176 = load ptr, ptr %163, align 8
  %177 = select i1 %175, ptr null, ptr %176
  store ptr %177, ptr %6, align 8, !tbaa !224
  %178 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %171, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %179 = getelementptr inbounds %class.cEnvir, ptr %178, i64 0, i32 4
  %180 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %179, ptr noundef nonnull @.str.96, i64 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39
  br label %181

181:                                              ; preds = %170, %162
  %182 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %183 = getelementptr inbounds %class.cEnvir, ptr %182, i64 0, i32 4
  %184 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull @.str.97, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39
  %185 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 2
  %186 = load i8, ptr %185, align 1, !tbaa !325, !range !322, !noundef !323
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load i8, ptr %119, align 4, !tbaa !318, !range !322, !noundef !323
  %190 = icmp eq i8 %189, 0
  %191 = select i1 %190, ptr @.str.100, ptr @.str.99
  br label %192

192:                                              ; preds = %181, %188
  %193 = phi ptr [ %191, %188 ], [ @.str.98, %181 ]
  store ptr %193, ptr %7, align 8, !tbaa !224
  %194 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %182, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %195 = getelementptr inbounds %class.cEnvir, ptr %194, i64 0, i32 4
  %196 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef nonnull @.str.101, i64 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39
  %197 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %198 = getelementptr inbounds %class.cEnvir, ptr %197, i64 0, i32 4
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull @.str.27, i64 noundef 1)
  br i1 %63, label %261, label %200

200:                                              ; preds = %192
  %201 = getelementptr inbounds %class.cConfigOption, ptr %113, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !274
  %203 = icmp eq ptr %202, null
  br i1 %203, label %257, label %204

204:                                              ; preds = %200
  %205 = load i8, ptr %202, align 1, !tbaa !326
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %257, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39
  call void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull %202, i32 noundef 75)
  %209 = load ptr, ptr %9, align 8, !tbaa !274
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %209, ptr noundef nonnull @.str.102)
          to label %210 unwind label %235

210:                                              ; preds = %207
  %211 = getelementptr inbounds %class.cEnvir, ptr %208, i64 0, i32 4
  %212 = load ptr, ptr %8, align 8, !tbaa !274
  %213 = load i64, ptr %74, align 8, !tbaa !277
  %214 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %211, ptr noundef %212, i64 noundef %213)
          to label %215 unwind label %237

215:                                              ; preds = %210
  %216 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %211, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %217 unwind label %237

217:                                              ; preds = %215
  %218 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %219 = load ptr, ptr %8, align 8, !tbaa !274
  %220 = icmp eq ptr %219, %218
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i64, ptr %74, align 8, !tbaa !277
  %223 = icmp ult i64 %222, 16
  call void @llvm.assume(i1 %223)
  br label %225

224:                                              ; preds = %217
  call void @_ZdlPv(ptr noundef %219) #38
  br label %225

225:                                              ; preds = %221, %224
  %226 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %227 = load ptr, ptr %9, align 8, !tbaa !274
  %228 = icmp eq ptr %227, %226
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !277
  %232 = icmp ult i64 %231, 16
  call void @llvm.assume(i1 %232)
  br label %234

233:                                              ; preds = %225
  call void @_ZdlPv(ptr noundef %227) #38
  br label %234

234:                                              ; preds = %229, %233
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39
  br label %257

235:                                              ; preds = %207
  %236 = landingpad { ptr, i32 }
          cleanup
  br label %246

237:                                              ; preds = %215, %210
  %238 = landingpad { ptr, i32 }
          cleanup
  %239 = load ptr, ptr %8, align 8, !tbaa !274
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i64, ptr %74, align 8, !tbaa !277
  %244 = icmp ult i64 %243, 16
  call void @llvm.assume(i1 %244)
  br label %246

245:                                              ; preds = %237
  call void @_ZdlPv(ptr noundef %239) #38
  br label %246

246:                                              ; preds = %245, %242, %235
  %247 = phi { ptr, i32 } [ %236, %235 ], [ %238, %242 ], [ %238, %245 ]
  %248 = load ptr, ptr %9, align 8, !tbaa !274
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %250 = icmp eq ptr %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !277
  %254 = icmp ult i64 %253, 16
  call void @llvm.assume(i1 %254)
  br label %256

255:                                              ; preds = %246
  call void @_ZdlPv(ptr noundef %248) #38
  br label %256

256:                                              ; preds = %251, %255
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39
  br label %1584

257:                                              ; preds = %204, %234, %200
  %258 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %259 = getelementptr inbounds %class.cEnvir, ptr %258, i64 0, i32 4
  %260 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %259, ptr noundef nonnull @.str.27, i64 noundef 1)
  br label %261

261:                                              ; preds = %192, %257
  %262 = add nuw nsw i32 %104, 1
  %263 = load ptr, ptr %64, align 8, !tbaa !228
  %264 = getelementptr inbounds ptr, ptr %263, i64 23
  %265 = load ptr, ptr %264, align 8
  %266 = call noundef i32 %265(ptr noundef nonnull align 8 dereferenceable(144) %64)
  %267 = icmp slt i32 %262, %266
  br i1 %267, label %103, label %75, !llvm.loop !327

268:                                              ; preds = %363, %75
  %269 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %270 = getelementptr inbounds %class.cEnvir, ptr %269, i64 0, i32 4
  %271 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %270, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %373 unwind label %378

272:                                              ; preds = %98, %363
  %273 = phi i64 [ 0, %98 ], [ %364, %363 ]
  br i1 %63, label %274, label %280

274:                                              ; preds = %272
  %275 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %276 = getelementptr inbounds %class.cEnvir, ptr %275, i64 0, i32 4
  %277 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %276, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %280 unwind label %278

278:                                              ; preds = %288, %280, %274, %284
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %380

280:                                              ; preds = %274, %272
  %281 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %282 = getelementptr inbounds %class.cEnvir, ptr %281, i64 0, i32 4
  %283 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %282, ptr noundef nonnull @.str.104, i64 noundef 2)
          to label %284 unwind label %278

284:                                              ; preds = %280
  %285 = load ptr, ptr %10, align 8, !tbaa !317
  %286 = getelementptr inbounds ptr, ptr %285, i64 %273
  %287 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %281, ptr noundef nonnull align 8 dereferenceable(8) %286)
          to label %288 unwind label %278

288:                                              ; preds = %284
  %289 = getelementptr inbounds %class.cEnvir, ptr %287, i64 0, i32 4
  %290 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %289, ptr noundef nonnull @.str.105, i64 noundef 2)
          to label %291 unwind label %278

291:                                              ; preds = %288
  %292 = load ptr, ptr %0, align 8, !tbaa !228
  %293 = getelementptr inbounds ptr, ptr %292, i64 32
  %294 = load ptr, ptr %293, align 8
  %295 = invoke noundef ptr %294(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %296 unwind label %336

296:                                              ; preds = %291
  %297 = load ptr, ptr %10, align 8, !tbaa !317
  %298 = getelementptr inbounds ptr, ptr %297, i64 %273
  %299 = load ptr, ptr %298, align 8, !tbaa !224
  %300 = load ptr, ptr %295, align 8, !tbaa !228
  %301 = getelementptr inbounds ptr, ptr %300, i64 54
  %302 = load ptr, ptr %301, align 8
  %303 = invoke noundef ptr %302(ptr noundef nonnull align 8 dereferenceable(8) %295, ptr noundef %299)
          to label %304 unwind label %336

304:                                              ; preds = %296
  %305 = icmp eq ptr %303, null
  %306 = or i1 %63, %305
  br i1 %306, label %363, label %307

307:                                              ; preds = %304
  %308 = load i8, ptr %303, align 1, !tbaa !326
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %363, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #39
  invoke void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %303, i32 noundef 75)
          to label %312 unwind label %338

312:                                              ; preds = %310
  %313 = load ptr, ptr %12, align 8, !tbaa !274
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %313, ptr noundef nonnull @.str.102)
          to label %314 unwind label %340

314:                                              ; preds = %312
  %315 = getelementptr inbounds %class.cEnvir, ptr %311, i64 0, i32 4
  %316 = load ptr, ptr %11, align 8, !tbaa !274
  %317 = load i64, ptr %99, align 8, !tbaa !277
  %318 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef %316, i64 noundef %317)
          to label %319 unwind label %342

319:                                              ; preds = %314
  %320 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %321 unwind label %342

321:                                              ; preds = %319
  %322 = load ptr, ptr %11, align 8, !tbaa !274
  %323 = icmp eq ptr %322, %100
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i64, ptr %99, align 8, !tbaa !277
  %326 = icmp ult i64 %325, 16
  call void @llvm.assume(i1 %326)
  br label %328

327:                                              ; preds = %321
  call void @_ZdlPv(ptr noundef %322) #38
  br label %328

328:                                              ; preds = %324, %327
  %329 = load ptr, ptr %12, align 8, !tbaa !274
  %330 = icmp eq ptr %329, %101
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i64, ptr %102, align 8, !tbaa !277
  %333 = icmp ult i64 %332, 16
  call void @llvm.assume(i1 %333)
  br label %335

334:                                              ; preds = %328
  call void @_ZdlPv(ptr noundef %329) #38
  br label %335

335:                                              ; preds = %331, %334
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #39
  br label %363

336:                                              ; preds = %296, %291
  %337 = landingpad { ptr, i32 }
          cleanup
  br label %380

338:                                              ; preds = %310
  %339 = landingpad { ptr, i32 }
          cleanup
  br label %361

340:                                              ; preds = %312
  %341 = landingpad { ptr, i32 }
          cleanup
  br label %351

342:                                              ; preds = %319, %314
  %343 = landingpad { ptr, i32 }
          cleanup
  %344 = load ptr, ptr %11, align 8, !tbaa !274
  %345 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %346 = icmp eq ptr %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load i64, ptr %99, align 8, !tbaa !277
  %349 = icmp ult i64 %348, 16
  call void @llvm.assume(i1 %349)
  br label %351

350:                                              ; preds = %342
  call void @_ZdlPv(ptr noundef %344) #38
  br label %351

351:                                              ; preds = %350, %347, %340
  %352 = phi { ptr, i32 } [ %341, %340 ], [ %343, %347 ], [ %343, %350 ]
  %353 = load ptr, ptr %12, align 8, !tbaa !274
  %354 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %355 = icmp eq ptr %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %358 = load i64, ptr %357, align 8, !tbaa !277
  %359 = icmp ult i64 %358, 16
  call void @llvm.assume(i1 %359)
  br label %361

360:                                              ; preds = %351
  call void @_ZdlPv(ptr noundef %353) #38
  br label %361

361:                                              ; preds = %360, %356, %338
  %362 = phi { ptr, i32 } [ %339, %338 ], [ %352, %356 ], [ %352, %360 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #39
  br label %380

363:                                              ; preds = %335, %307, %304
  %364 = add nuw nsw i64 %273, 1
  %365 = load ptr, ptr %89, align 8, !tbaa !315
  %366 = load ptr, ptr %10, align 8, !tbaa !317
  %367 = ptrtoint ptr %365 to i64
  %368 = ptrtoint ptr %366 to i64
  %369 = sub i64 %367, %368
  %370 = shl i64 %369, 29
  %371 = ashr i64 %370, 32
  %372 = icmp slt i64 %364, %371
  br i1 %372, label %272, label %268, !llvm.loop !328

373:                                              ; preds = %268
  %374 = load ptr, ptr %10, align 8, !tbaa !317
  %375 = icmp eq ptr %374, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %373
  call void @_ZdlPv(ptr noundef %374) #38
  br label %377

377:                                              ; preds = %373, %376
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #39
  br label %386

378:                                              ; preds = %268
  %379 = landingpad { ptr, i32 }
          cleanup
  br label %380

380:                                              ; preds = %278, %361, %336, %378
  %381 = phi { ptr, i32 } [ %379, %378 ], [ %279, %278 ], [ %362, %361 ], [ %337, %336 ]
  %382 = load ptr, ptr %10, align 8, !tbaa !317
  %383 = icmp eq ptr %382, null
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  call void @_ZdlPv(ptr noundef %382) #38
  br label %385

385:                                              ; preds = %380, %384
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #39
  br label %1584

386:                                              ; preds = %377, %55
  %387 = phi i1 [ true, %377 ], [ false, %55 ]
  %388 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.106) #42
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %935

390:                                              ; preds = %386
  %391 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %392 = getelementptr inbounds %class.cEnvir, ptr %391, i64 0, i32 4
  %393 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %392, ptr noundef nonnull @.str.107, i64 noundef 48)
  %394 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %395 = load ptr, ptr %394, align 8, !tbaa !228
  %396 = getelementptr inbounds ptr, ptr %395, i64 27
  %397 = load ptr, ptr %396, align 8
  call void %397(ptr noundef nonnull align 8 dereferenceable(144) %394)
  %398 = load ptr, ptr %394, align 8, !tbaa !228
  %399 = getelementptr inbounds ptr, ptr %398, i64 23
  %400 = load ptr, ptr %399, align 8
  %401 = call noundef i32 %400(ptr noundef nonnull align 8 dereferenceable(144) %394)
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %427

403:                                              ; preds = %390
  %404 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %405 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %406 = getelementptr inbounds i8, ptr %13, i64 22
  %407 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  %408 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  %409 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 2
  %410 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 1
  %411 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %412 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 2
  %414 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 1
  %415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 2
  %416 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 1
  %417 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  %418 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  %419 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  %420 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 1
  %421 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 2
  %422 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 1
  %423 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %424 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %425 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  %426 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 1
  br label %450

427:                                              ; preds = %751, %390
  %428 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %429 = getelementptr inbounds %class.cEnvir, ptr %428, i64 0, i32 4
  %430 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %429, ptr noundef nonnull @.str.27, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #39
  %431 = load ptr, ptr %0, align 8, !tbaa !228
  %432 = getelementptr inbounds ptr, ptr %431, i64 32
  %433 = load ptr, ptr %432, align 8
  %434 = call noundef ptr %433(ptr noundef nonnull align 8 dereferenceable(600) %0)
  %435 = load ptr, ptr %434, align 8, !tbaa !228
  %436 = getelementptr inbounds ptr, ptr %435, i64 53
  %437 = load ptr, ptr %436, align 8
  call void %437(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %434)
  %438 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %30, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !315
  %440 = load ptr, ptr %30, align 8, !tbaa !317
  %441 = ptrtoint ptr %439 to i64
  %442 = ptrtoint ptr %440 to i64
  %443 = sub i64 %441, %442
  %444 = lshr exact i64 %443, 3
  %445 = trunc i64 %444 to i32
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %820

447:                                              ; preds = %427
  %448 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 1
  %449 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  br label %824

450:                                              ; preds = %403, %751
  %451 = phi i32 [ 0, %403 ], [ %752, %751 ]
  %452 = load ptr, ptr %394, align 8, !tbaa !228
  %453 = getelementptr inbounds ptr, ptr %452, i64 24
  %454 = load ptr, ptr %453, align 8
  %455 = call noundef ptr %454(ptr noundef nonnull align 8 dereferenceable(144) %394, i32 noundef %451)
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457

457:                                              ; preds = %450
  %458 = call ptr @__dynamic_cast(ptr nonnull %455, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cConfigOption, i64 0) #39
  br label %459

459:                                              ; preds = %450, %457
  %460 = phi ptr [ %458, %457 ], [ null, %450 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #39
  store ptr %404, ptr %13, align 8, !tbaa !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %404, ptr noundef nonnull align 1 dereferenceable(6) @.str.108, i64 6, i1 false), !prof !330
  store i64 6, ptr %405, align 8, !tbaa !277
  store i8 0, ptr %406, align 2, !tbaa !326
  %461 = load ptr, ptr %460, align 8, !tbaa !228
  %462 = getelementptr inbounds ptr, ptr %461, i64 6
  %463 = load ptr, ptr %462, align 8
  %464 = invoke noundef ptr %463(ptr noundef nonnull align 8 dereferenceable(20) %460)
          to label %465 unwind label %474

465:                                              ; preds = %459
  %466 = load i8, ptr %464, align 1, !tbaa !326
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %468, label %476

468:                                              ; preds = %492, %465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39
  %469 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 2
  %470 = load i8, ptr %469, align 1, !tbaa !325, !range !322, !noundef !323
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %496, label %501

472:                                              ; preds = %488
  %473 = landingpad { ptr, i32 }
          cleanup
  br label %811

474:                                              ; preds = %459
  %475 = landingpad { ptr, i32 }
          cleanup
  br label %811

476:                                              ; preds = %465, %492
  %477 = phi i8 [ %494, %492 ], [ %466, %465 ]
  %478 = phi ptr [ %493, %492 ], [ %464, %465 ]
  %479 = zext i8 %477 to i32
  %480 = call i32 @isalpha(i32 noundef %479) #42
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %476
  %483 = call i32 @toupper(i32 noundef %479) #42
  %484 = trunc i32 %483 to i8
  br label %488

485:                                              ; preds = %476
  switch i8 %477, label %486 [
    i8 45, label %488
    i8 37, label %487
  ]

486:                                              ; preds = %485
  br label %488

487:                                              ; preds = %485
  br label %488

488:                                              ; preds = %485, %487, %486, %482
  %489 = phi i8 [ %484, %482 ], [ 95, %485 ], [ %477, %486 ], [ 110, %487 ]
  %490 = load i64, ptr %405, align 8, !tbaa !277
  %491 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %490, i64 noundef 0, i64 noundef 1, i8 noundef signext %489)
          to label %492 unwind label %472

492:                                              ; preds = %488
  %493 = getelementptr inbounds i8, ptr %478, i64 1
  %494 = load i8, ptr %493, align 1, !tbaa !326
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %468, label %476, !llvm.loop !331

496:                                              ; preds = %468
  %497 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 1
  %498 = load i8, ptr %497, align 4, !tbaa !318, !range !322, !noundef !323
  %499 = icmp eq i8 %498, 0
  %500 = select i1 %499, ptr @.str.110, ptr @.str.111
  br label %501

501:                                              ; preds = %468, %496
  %502 = phi ptr [ %500, %496 ], [ @.str.109, %468 ]
  store ptr %502, ptr %14, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #39
  %503 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 3
  %504 = load i32, ptr %503, align 8, !tbaa !324
  switch i32 %504, label %515 [
    i32 0, label %507
    i32 1, label %508
    i32 2, label %509
    i32 3, label %510
    i32 4, label %511
    i32 5, label %512
    i32 6, label %513
    i32 7, label %514
  ]

505:                                              ; preds = %632, %598, %596, %571, %564, %541, %523, %519, %515, %562, %525
  %506 = landingpad { ptr, i32 }
          cleanup
  br label %809

507:                                              ; preds = %501
  store ptr @.str.112, ptr %15, align 8, !tbaa !224
  br label %515

508:                                              ; preds = %501
  store ptr @.str.113, ptr %15, align 8, !tbaa !224
  br label %515

509:                                              ; preds = %501
  store ptr @.str.114, ptr %15, align 8, !tbaa !224
  br label %515

510:                                              ; preds = %501
  store ptr @.str.115, ptr %15, align 8, !tbaa !224
  br label %515

511:                                              ; preds = %501
  store ptr @.str.116, ptr %15, align 8, !tbaa !224
  br label %515

512:                                              ; preds = %501
  store ptr @.str.117, ptr %15, align 8, !tbaa !224
  br label %515

513:                                              ; preds = %501
  store ptr @.str.118, ptr %15, align 8, !tbaa !224
  br label %515

514:                                              ; preds = %501
  store ptr @.str.119, ptr %15, align 8, !tbaa !224
  br label %515

515:                                              ; preds = %501, %514, %513, %512, %511, %510, %509, %508, %507
  %516 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %517 = getelementptr inbounds %class.cEnvir, ptr %516, i64 0, i32 4
  %518 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %517, ptr noundef nonnull @.str.120, i64 noundef 37)
          to label %519 unwind label %505

519:                                              ; preds = %515
  %520 = load ptr, ptr %13, align 8, !tbaa !274
  %521 = load i64, ptr %405, align 8, !tbaa !277
  %522 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %517, ptr noundef %520, i64 noundef %521)
          to label %523 unwind label %505

523:                                              ; preds = %519
  %524 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %517, ptr noundef nonnull @.str.121, i64 noundef 3)
          to label %525 unwind label %505

525:                                              ; preds = %523
  %526 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %527 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %526, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %528 unwind label %505

528:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #39
  %529 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 4
  %530 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 4, i32 1
  %531 = load i64, ptr %530, align 8, !tbaa !277
  %532 = icmp eq i64 %531, 0
  %533 = load ptr, ptr %529, align 8
  %534 = icmp eq ptr %533, null
  %535 = select i1 %532, i1 true, i1 %534
  %536 = select i1 %535, ptr @.str.96, ptr @.str.122
  store ptr %536, ptr %16, align 8, !tbaa !224
  %537 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %527, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %538 unwind label %567

538:                                              ; preds = %528
  %539 = getelementptr inbounds %class.cEnvir, ptr %537, i64 0, i32 4
  %540 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %539, ptr noundef nonnull @.str.123, i64 noundef 2)
          to label %541 unwind label %567

541:                                              ; preds = %538
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #39
  %542 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %543 = getelementptr inbounds %class.cEnvir, ptr %542, i64 0, i32 4
  %544 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %543, ptr noundef nonnull @.str.124, i64 noundef 9)
          to label %545 unwind label %505

545:                                              ; preds = %541
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #39
  %546 = load ptr, ptr %460, align 8, !tbaa !228
  %547 = getelementptr inbounds ptr, ptr %546, i64 6
  %548 = load ptr, ptr %547, align 8
  %549 = invoke noundef ptr %548(ptr noundef nonnull align 8 dereferenceable(20) %460)
          to label %550 unwind label %569

550:                                              ; preds = %545
  store ptr %549, ptr %17, align 8, !tbaa !224
  %551 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %542, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %552 unwind label %569

552:                                              ; preds = %550
  %553 = getelementptr inbounds %class.cEnvir, ptr %551, i64 0, i32 4
  %554 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %553, ptr noundef nonnull @.str.125, i64 noundef 3)
          to label %555 unwind label %569

555:                                              ; preds = %552
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #39
  %556 = load i64, ptr %530, align 8, !tbaa !277
  %557 = icmp eq i64 %556, 0
  %558 = load ptr, ptr %529, align 8
  %559 = icmp eq ptr %558, null
  %560 = select i1 %557, i1 true, i1 %559
  %561 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  br i1 %560, label %562, label %571

562:                                              ; preds = %555
  %563 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %561, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %564 unwind label %505

564:                                              ; preds = %562
  %565 = getelementptr inbounds %class.cEnvir, ptr %563, i64 0, i32 4
  %566 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %565, ptr noundef nonnull @.str.126, i64 noundef 2)
          to label %586 unwind label %505

567:                                              ; preds = %538, %528
  %568 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #39
  br label %809

569:                                              ; preds = %552, %550, %545
  %570 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #39
  br label %809

571:                                              ; preds = %555
  %572 = getelementptr inbounds %class.cEnvir, ptr %561, i64 0, i32 4
  %573 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %572, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %574 unwind label %505

574:                                              ; preds = %571
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #39
  %575 = load i64, ptr %530, align 8, !tbaa !277
  %576 = icmp eq i64 %575, 0
  %577 = load ptr, ptr %529, align 8
  %578 = select i1 %576, ptr null, ptr %577
  store ptr %578, ptr %18, align 8, !tbaa !224
  %579 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %561, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %580 unwind label %584

580:                                              ; preds = %574
  %581 = getelementptr inbounds %class.cEnvir, ptr %579, i64 0, i32 4
  %582 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %581, ptr noundef nonnull @.str.125, i64 noundef 3)
          to label %583 unwind label %584

583:                                              ; preds = %580
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #39
  br label %586

584:                                              ; preds = %580, %574
  %585 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #39
  br label %809

586:                                              ; preds = %564, %583
  %587 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 5
  %588 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 5, i32 1
  %589 = load i64, ptr %588, align 8, !tbaa !277
  %590 = icmp eq i64 %589, 0
  %591 = load ptr, ptr %587, align 8
  %592 = icmp eq ptr %591, null
  %593 = select i1 %590, i1 true, i1 %592
  %594 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %595 = getelementptr inbounds %class.cEnvir, ptr %594, i64 0, i32 4
  br i1 %593, label %596, label %598

596:                                              ; preds = %586
  %597 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %595, ptr noundef nonnull @.str.127, i64 noundef 4)
          to label %632 unwind label %505

598:                                              ; preds = %586
  %599 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %595, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %600 unwind label %505

600:                                              ; preds = %598
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #39
  %601 = load i64, ptr %588, align 8, !tbaa !277
  %602 = icmp eq i64 %601, 0
  %603 = load ptr, ptr %587, align 8
  %604 = select i1 %602, ptr null, ptr %603
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %604, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true)
          to label %605 unwind label %619

605:                                              ; preds = %600
  %606 = load ptr, ptr %19, align 8, !tbaa !274
  %607 = load i64, ptr %407, align 8, !tbaa !277
  %608 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %595, ptr noundef %606, i64 noundef %607)
          to label %609 unwind label %621

609:                                              ; preds = %605
  %610 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %595, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %611 unwind label %621

611:                                              ; preds = %609
  %612 = load ptr, ptr %19, align 8, !tbaa !274
  %613 = icmp eq ptr %612, %408
  br i1 %613, label %614, label %617

614:                                              ; preds = %611
  %615 = load i64, ptr %407, align 8, !tbaa !277
  %616 = icmp ult i64 %615, 16
  call void @llvm.assume(i1 %616)
  br label %618

617:                                              ; preds = %611
  call void @_ZdlPv(ptr noundef %612) #38
  br label %618

618:                                              ; preds = %614, %617
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #39
  br label %632

619:                                              ; preds = %600
  %620 = landingpad { ptr, i32 }
          cleanup
  br label %630

621:                                              ; preds = %609, %605
  %622 = landingpad { ptr, i32 }
          cleanup
  %623 = load ptr, ptr %19, align 8, !tbaa !274
  %624 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  %625 = icmp eq ptr %623, %624
  br i1 %625, label %626, label %629

626:                                              ; preds = %621
  %627 = load i64, ptr %407, align 8, !tbaa !277
  %628 = icmp ult i64 %627, 16
  call void @llvm.assume(i1 %628)
  br label %630

629:                                              ; preds = %621
  call void @_ZdlPv(ptr noundef %623) #38
  br label %630

630:                                              ; preds = %629, %626, %619
  %631 = phi { ptr, i32 } [ %620, %619 ], [ %622, %626 ], [ %622, %629 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #39
  br label %809

632:                                              ; preds = %596, %618
  %633 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %634 = getelementptr inbounds %class.cEnvir, ptr %633, i64 0, i32 4
  %635 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %634, ptr noundef nonnull @.str.129, i64 noundef 2)
          to label %636 unwind label %505

636:                                              ; preds = %632
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #39
  %637 = getelementptr inbounds %class.cConfigOption, ptr %460, i64 0, i32 6
  %638 = load ptr, ptr %637, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %638, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %639 unwind label %758

639:                                              ; preds = %636
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #39
  %640 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef %640, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.130, i1 noundef zeroext true)
          to label %641 unwind label %760

641:                                              ; preds = %639
  %642 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %22) #39
  %643 = load ptr, ptr %22, align 8, !tbaa !274
  %644 = icmp eq ptr %643, %409
  br i1 %644, label %645, label %648

645:                                              ; preds = %641
  %646 = load i64, ptr %410, align 8, !tbaa !277
  %647 = icmp ult i64 %646, 16
  call void @llvm.assume(i1 %647)
  br label %649

648:                                              ; preds = %641
  call void @_ZdlPv(ptr noundef %643) #38
  br label %649

649:                                              ; preds = %645, %648
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #39
  %650 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef %650, i32 noundef 75)
          to label %651 unwind label %762

651:                                              ; preds = %649
  %652 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %23) #39
  %653 = load ptr, ptr %23, align 8, !tbaa !274
  %654 = icmp eq ptr %653, %411
  br i1 %654, label %655, label %658

655:                                              ; preds = %651
  %656 = load i64, ptr %412, align 8, !tbaa !277
  %657 = icmp ult i64 %656, 16
  call void @llvm.assume(i1 %657)
  br label %659

658:                                              ; preds = %651
  call void @_ZdlPv(ptr noundef %653) #38
  br label %659

659:                                              ; preds = %655, %658
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #39
  %660 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef %660, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true)
          to label %661 unwind label %764

661:                                              ; preds = %659
  %662 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %24) #39
  %663 = load ptr, ptr %24, align 8, !tbaa !274
  %664 = icmp eq ptr %663, %413
  br i1 %664, label %665, label %668

665:                                              ; preds = %661
  %666 = load i64, ptr %414, align 8, !tbaa !277
  %667 = icmp ult i64 %666, 16
  call void @llvm.assume(i1 %667)
  br label %669

668:                                              ; preds = %661
  call void @_ZdlPv(ptr noundef %663) #38
  br label %669

669:                                              ; preds = %665, %668
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #39
  %670 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %670, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.131, i1 noundef zeroext true)
          to label %671 unwind label %766

671:                                              ; preds = %669
  %672 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %25) #39
  %673 = load ptr, ptr %25, align 8, !tbaa !274
  %674 = icmp eq ptr %673, %415
  br i1 %674, label %675, label %678

675:                                              ; preds = %671
  %676 = load i64, ptr %416, align 8, !tbaa !277
  %677 = icmp ult i64 %676, 16
  call void @llvm.assume(i1 %677)
  br label %679

678:                                              ; preds = %671
  call void @_ZdlPv(ptr noundef %673) #38
  br label %679

679:                                              ; preds = %675, %678
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #39
  %680 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %680, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i1 noundef zeroext true)
          to label %681 unwind label %768

681:                                              ; preds = %679
  %682 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %26) #39
  %683 = load ptr, ptr %26, align 8, !tbaa !274
  %684 = icmp eq ptr %683, %417
  br i1 %684, label %685, label %688

685:                                              ; preds = %681
  %686 = load i64, ptr %418, align 8, !tbaa !277
  %687 = icmp ult i64 %686, 16
  call void @llvm.assume(i1 %687)
  br label %689

688:                                              ; preds = %681
  call void @_ZdlPv(ptr noundef %683) #38
  br label %689

689:                                              ; preds = %685, %688
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #39
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %690 unwind label %770

690:                                              ; preds = %689
  %691 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.94)
          to label %692 unwind label %772

692:                                              ; preds = %690
  store ptr %419, ptr %27, align 8, !tbaa !329, !alias.scope !332
  %693 = load ptr, ptr %691, align 8, !tbaa !274
  %694 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %691, i64 0, i32 2
  %695 = icmp eq ptr %693, %694
  br i1 %695, label %696, label %701

696:                                              ; preds = %692
  %697 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %691, i64 0, i32 1
  %698 = load i64, ptr %697, align 8, !tbaa !277
  %699 = icmp ult i64 %698, 16
  call void @llvm.assume(i1 %699)
  %700 = add nuw nsw i64 %698, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %419, ptr noundef nonnull align 8 dereferenceable(1) %694, i64 %700, i1 false)
  br label %703

701:                                              ; preds = %692
  store ptr %693, ptr %27, align 8, !tbaa !274, !alias.scope !332
  %702 = load i64, ptr %694, align 8, !tbaa !326
  store i64 %702, ptr %419, align 8, !tbaa !326, !alias.scope !332
  br label %703

703:                                              ; preds = %696, %701
  %704 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %691, i64 0, i32 1
  %705 = load i64, ptr %704, align 8, !tbaa !277
  store i64 %705, ptr %420, align 8, !tbaa !277, !alias.scope !332
  store ptr %694, ptr %691, align 8, !tbaa !274
  store i64 0, ptr %704, align 8, !tbaa !277
  store i8 0, ptr %694, align 8, !tbaa !326
  %706 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %27) #39
  %707 = load ptr, ptr %27, align 8, !tbaa !274
  %708 = icmp eq ptr %707, %419
  br i1 %708, label %709, label %712

709:                                              ; preds = %703
  %710 = load i64, ptr %420, align 8, !tbaa !277
  %711 = icmp ult i64 %710, 16
  call void @llvm.assume(i1 %711)
  br label %713

712:                                              ; preds = %703
  call void @_ZdlPv(ptr noundef %707) #38
  br label %713

713:                                              ; preds = %709, %712
  %714 = load ptr, ptr %28, align 8, !tbaa !274
  %715 = icmp eq ptr %714, %421
  br i1 %715, label %716, label %719

716:                                              ; preds = %713
  %717 = load i64, ptr %422, align 8, !tbaa !277
  %718 = icmp ult i64 %717, 16
  call void @llvm.assume(i1 %718)
  br label %720

719:                                              ; preds = %713
  call void @_ZdlPv(ptr noundef %714) #38
  br label %720

720:                                              ; preds = %716, %719
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #39
  %721 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #39
  %722 = load ptr, ptr %20, align 8, !tbaa !274
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef %722, ptr noundef nonnull @.str.134)
          to label %723 unwind label %784

723:                                              ; preds = %720
  %724 = getelementptr inbounds %class.cEnvir, ptr %721, i64 0, i32 4
  %725 = load ptr, ptr %29, align 8, !tbaa !274
  %726 = load i64, ptr %423, align 8, !tbaa !277
  %727 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %724, ptr noundef %725, i64 noundef %726)
          to label %728 unwind label %786

728:                                              ; preds = %723
  %729 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %724, ptr noundef nonnull @.str.135, i64 noundef 3)
          to label %730 unwind label %786

730:                                              ; preds = %728
  %731 = load ptr, ptr %29, align 8, !tbaa !274
  %732 = icmp eq ptr %731, %424
  br i1 %732, label %733, label %736

733:                                              ; preds = %730
  %734 = load i64, ptr %423, align 8, !tbaa !277
  %735 = icmp ult i64 %734, 16
  call void @llvm.assume(i1 %735)
  br label %737

736:                                              ; preds = %730
  call void @_ZdlPv(ptr noundef %731) #38
  br label %737

737:                                              ; preds = %733, %736
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #39
  %738 = load ptr, ptr %20, align 8, !tbaa !274
  %739 = icmp eq ptr %738, %425
  br i1 %739, label %740, label %743

740:                                              ; preds = %737
  %741 = load i64, ptr %426, align 8, !tbaa !277
  %742 = icmp ult i64 %741, 16
  call void @llvm.assume(i1 %742)
  br label %744

743:                                              ; preds = %737
  call void @_ZdlPv(ptr noundef %738) #38
  br label %744

744:                                              ; preds = %740, %743
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39
  %745 = load ptr, ptr %13, align 8, !tbaa !274
  %746 = icmp eq ptr %745, %404
  br i1 %746, label %747, label %750

747:                                              ; preds = %744
  %748 = load i64, ptr %405, align 8, !tbaa !277
  %749 = icmp ult i64 %748, 16
  call void @llvm.assume(i1 %749)
  br label %751

750:                                              ; preds = %744
  call void @_ZdlPv(ptr noundef %745) #38
  br label %751

751:                                              ; preds = %747, %750
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #39
  %752 = add nuw nsw i32 %451, 1
  %753 = load ptr, ptr %394, align 8, !tbaa !228
  %754 = getelementptr inbounds ptr, ptr %753, i64 23
  %755 = load ptr, ptr %754, align 8
  %756 = call noundef i32 %755(ptr noundef nonnull align 8 dereferenceable(144) %394)
  %757 = icmp slt i32 %752, %756
  br i1 %757, label %450, label %427, !llvm.loop !335

758:                                              ; preds = %636
  %759 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #39
  br label %807

760:                                              ; preds = %639
  %761 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #39
  br label %797

762:                                              ; preds = %649
  %763 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #39
  br label %797

764:                                              ; preds = %659
  %765 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #39
  br label %797

766:                                              ; preds = %669
  %767 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #39
  br label %797

768:                                              ; preds = %679
  %769 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #39
  br label %797

770:                                              ; preds = %689
  %771 = landingpad { ptr, i32 }
          cleanup
  br label %782

772:                                              ; preds = %690
  %773 = landingpad { ptr, i32 }
          cleanup
  %774 = load ptr, ptr %28, align 8, !tbaa !274
  %775 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 2
  %776 = icmp eq ptr %774, %775
  br i1 %776, label %777, label %781

777:                                              ; preds = %772
  %778 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 1
  %779 = load i64, ptr %778, align 8, !tbaa !277
  %780 = icmp ult i64 %779, 16
  call void @llvm.assume(i1 %780)
  br label %782

781:                                              ; preds = %772
  call void @_ZdlPv(ptr noundef %774) #38
  br label %782

782:                                              ; preds = %781, %777, %770
  %783 = phi { ptr, i32 } [ %771, %770 ], [ %773, %777 ], [ %773, %781 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #39
  br label %797

784:                                              ; preds = %720
  %785 = landingpad { ptr, i32 }
          cleanup
  br label %795

786:                                              ; preds = %728, %723
  %787 = landingpad { ptr, i32 }
          cleanup
  %788 = load ptr, ptr %29, align 8, !tbaa !274
  %789 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %790 = icmp eq ptr %788, %789
  br i1 %790, label %791, label %794

791:                                              ; preds = %786
  %792 = load i64, ptr %423, align 8, !tbaa !277
  %793 = icmp ult i64 %792, 16
  call void @llvm.assume(i1 %793)
  br label %795

794:                                              ; preds = %786
  call void @_ZdlPv(ptr noundef %788) #38
  br label %795

795:                                              ; preds = %794, %791, %784
  %796 = phi { ptr, i32 } [ %785, %784 ], [ %787, %791 ], [ %787, %794 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #39
  br label %797

797:                                              ; preds = %795, %782, %768, %766, %764, %762, %760
  %798 = phi { ptr, i32 } [ %796, %795 ], [ %783, %782 ], [ %769, %768 ], [ %767, %766 ], [ %765, %764 ], [ %763, %762 ], [ %761, %760 ]
  %799 = load ptr, ptr %20, align 8, !tbaa !274
  %800 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  %801 = icmp eq ptr %799, %800
  br i1 %801, label %802, label %806

802:                                              ; preds = %797
  %803 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 1
  %804 = load i64, ptr %803, align 8, !tbaa !277
  %805 = icmp ult i64 %804, 16
  call void @llvm.assume(i1 %805)
  br label %807

806:                                              ; preds = %797
  call void @_ZdlPv(ptr noundef %799) #38
  br label %807

807:                                              ; preds = %806, %802, %758
  %808 = phi { ptr, i32 } [ %759, %758 ], [ %798, %802 ], [ %798, %806 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #39
  br label %809

809:                                              ; preds = %807, %630, %584, %569, %567, %505
  %810 = phi { ptr, i32 } [ %808, %807 ], [ %506, %505 ], [ %631, %630 ], [ %585, %584 ], [ %570, %569 ], [ %568, %567 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39
  br label %811

811:                                              ; preds = %472, %474, %809
  %812 = phi { ptr, i32 } [ %810, %809 ], [ %473, %472 ], [ %475, %474 ]
  %813 = load ptr, ptr %13, align 8, !tbaa !274
  %814 = icmp eq ptr %813, %404
  br i1 %814, label %815, label %818

815:                                              ; preds = %811
  %816 = load i64, ptr %405, align 8, !tbaa !277
  %817 = icmp ult i64 %816, 16
  call void @llvm.assume(i1 %817)
  br label %819

818:                                              ; preds = %811
  call void @_ZdlPv(ptr noundef %813) #38
  br label %819

819:                                              ; preds = %818, %815
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #39
  br label %1584

820:                                              ; preds = %886, %427
  %821 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %822 = getelementptr inbounds %class.cEnvir, ptr %821, i64 0, i32 4
  %823 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %822, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %922 unwind label %927

824:                                              ; preds = %447, %886
  %825 = phi i64 [ 0, %447 ], [ %887, %886 ]
  %826 = phi ptr [ %440, %447 ], [ %889, %886 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #39
  %827 = getelementptr inbounds ptr, ptr %826, i64 %825
  %828 = load ptr, ptr %827, align 8, !tbaa !224
  invoke void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %828)
          to label %829 unwind label %896

829:                                              ; preds = %824
  %830 = load ptr, ptr %31, align 8, !tbaa !255
  %831 = invoke noundef ptr @_Z10opp_struprPc(ptr noundef %830)
          to label %832 unwind label %898

832:                                              ; preds = %829
  %833 = load ptr, ptr %0, align 8, !tbaa !228
  %834 = getelementptr inbounds ptr, ptr %833, i64 32
  %835 = load ptr, ptr %834, align 8
  %836 = invoke noundef ptr %835(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %837 unwind label %900

837:                                              ; preds = %832
  %838 = load ptr, ptr %30, align 8, !tbaa !317
  %839 = getelementptr inbounds ptr, ptr %838, i64 %825
  %840 = load ptr, ptr %839, align 8, !tbaa !224
  %841 = load ptr, ptr %836, align 8, !tbaa !228
  %842 = getelementptr inbounds ptr, ptr %841, i64 54
  %843 = load ptr, ptr %842, align 8
  %844 = invoke noundef ptr %843(ptr noundef nonnull align 8 dereferenceable(8) %836, ptr noundef %840)
          to label %845 unwind label %900

845:                                              ; preds = %837
  %846 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %847 = getelementptr inbounds %class.cEnvir, ptr %846, i64 0, i32 4
  %848 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %847, ptr noundef nonnull @.str.136, i64 noundef 38)
          to label %849 unwind label %900

849:                                              ; preds = %845
  %850 = load ptr, ptr %31, align 8, !tbaa !255
  %851 = icmp eq ptr %850, null
  %852 = select i1 %851, ptr @.str.96, ptr %850
  %853 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %852) #39
  %854 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %847, ptr noundef nonnull %852, i64 noundef %853)
          to label %855 unwind label %900

855:                                              ; preds = %849
  %856 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %847, ptr noundef nonnull @.str.137, i64 noundef 21)
          to label %857 unwind label %900

857:                                              ; preds = %855
  %858 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %859 = getelementptr inbounds %class.cEnvir, ptr %858, i64 0, i32 4
  %860 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %859, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %861 unwind label %900

861:                                              ; preds = %857
  %862 = load ptr, ptr %30, align 8, !tbaa !317
  %863 = getelementptr inbounds ptr, ptr %862, i64 %825
  %864 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %858, ptr noundef nonnull align 8 dereferenceable(8) %863)
          to label %865 unwind label %900

865:                                              ; preds = %861
  %866 = getelementptr inbounds %class.cEnvir, ptr %864, i64 0, i32 4
  %867 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %866, ptr noundef nonnull @.str.138, i64 noundef 4)
          to label %868 unwind label %900

868:                                              ; preds = %865
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #39
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef %844, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true)
          to label %869 unwind label %902

869:                                              ; preds = %868
  %870 = load ptr, ptr %32, align 8, !tbaa !274
  %871 = load i64, ptr %448, align 8, !tbaa !277
  %872 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %866, ptr noundef %870, i64 noundef %871)
          to label %873 unwind label %904

873:                                              ; preds = %869
  %874 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %866, ptr noundef nonnull @.str.139, i64 noundef 4)
          to label %875 unwind label %904

875:                                              ; preds = %873
  %876 = load ptr, ptr %32, align 8, !tbaa !274
  %877 = icmp eq ptr %876, %449
  br i1 %877, label %878, label %881

878:                                              ; preds = %875
  %879 = load i64, ptr %448, align 8, !tbaa !277
  %880 = icmp ult i64 %879, 16
  call void @llvm.assume(i1 %880)
  br label %882

881:                                              ; preds = %875
  call void @_ZdlPv(ptr noundef %876) #38
  br label %882

882:                                              ; preds = %878, %881
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #39
  %883 = load ptr, ptr %31, align 8, !tbaa !255
  %884 = icmp eq ptr %883, null
  br i1 %884, label %886, label %885

885:                                              ; preds = %882
  call void @_ZdaPv(ptr noundef %883) #38
  br label %886

886:                                              ; preds = %882, %885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #39
  %887 = add nuw nsw i64 %825, 1
  %888 = load ptr, ptr %438, align 8, !tbaa !315
  %889 = load ptr, ptr %30, align 8, !tbaa !317
  %890 = ptrtoint ptr %888 to i64
  %891 = ptrtoint ptr %889 to i64
  %892 = sub i64 %890, %891
  %893 = shl i64 %892, 29
  %894 = ashr i64 %893, 32
  %895 = icmp slt i64 %887, %894
  br i1 %895, label %824, label %820, !llvm.loop !336

896:                                              ; preds = %824
  %897 = landingpad { ptr, i32 }
          cleanup
  br label %920

898:                                              ; preds = %829
  %899 = landingpad { ptr, i32 }
          cleanup
  br label %915

900:                                              ; preds = %865, %857, %855, %849, %845, %861, %837, %832
  %901 = landingpad { ptr, i32 }
          cleanup
  br label %915

902:                                              ; preds = %868
  %903 = landingpad { ptr, i32 }
          cleanup
  br label %913

904:                                              ; preds = %873, %869
  %905 = landingpad { ptr, i32 }
          cleanup
  %906 = load ptr, ptr %32, align 8, !tbaa !274
  %907 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  %908 = icmp eq ptr %906, %907
  br i1 %908, label %909, label %912

909:                                              ; preds = %904
  %910 = load i64, ptr %448, align 8, !tbaa !277
  %911 = icmp ult i64 %910, 16
  call void @llvm.assume(i1 %911)
  br label %913

912:                                              ; preds = %904
  call void @_ZdlPv(ptr noundef %906) #38
  br label %913

913:                                              ; preds = %912, %909, %902
  %914 = phi { ptr, i32 } [ %903, %902 ], [ %905, %909 ], [ %905, %912 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #39
  br label %915

915:                                              ; preds = %900, %913, %898
  %916 = phi { ptr, i32 } [ %899, %898 ], [ %914, %913 ], [ %901, %900 ]
  %917 = load ptr, ptr %31, align 8, !tbaa !255
  %918 = icmp eq ptr %917, null
  br i1 %918, label %920, label %919

919:                                              ; preds = %915
  call void @_ZdaPv(ptr noundef %917) #38
  br label %920

920:                                              ; preds = %919, %915, %896
  %921 = phi { ptr, i32 } [ %897, %896 ], [ %916, %915 ], [ %916, %919 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #39
  br label %929

922:                                              ; preds = %820
  %923 = load ptr, ptr %30, align 8, !tbaa !317
  %924 = icmp eq ptr %923, null
  br i1 %924, label %926, label %925

925:                                              ; preds = %922
  call void @_ZdlPv(ptr noundef %923) #38
  br label %926

926:                                              ; preds = %922, %925
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #39
  br label %935

927:                                              ; preds = %820
  %928 = landingpad { ptr, i32 }
          cleanup
  br label %929

929:                                              ; preds = %927, %920
  %930 = phi { ptr, i32 } [ %921, %920 ], [ %928, %927 ]
  %931 = load ptr, ptr %30, align 8, !tbaa !317
  %932 = icmp eq ptr %931, null
  br i1 %932, label %934, label %933

933:                                              ; preds = %929
  call void @_ZdlPv(ptr noundef %931) #38
  br label %934

934:                                              ; preds = %929, %933
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #39
  br label %1584

935:                                              ; preds = %926, %386
  %936 = phi i1 [ %387, %386 ], [ true, %926 ]
  br i1 %51, label %940, label %937

937:                                              ; preds = %935
  %938 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.140) #42
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %985

940:                                              ; preds = %937, %935
  %941 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %942 = getelementptr inbounds %class.cEnvir, ptr %941, i64 0, i32 4
  %943 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %942, ptr noundef nonnull @.str.141, i64 noundef 66)
  %944 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %945 = load ptr, ptr %944, align 8, !tbaa !228
  %946 = getelementptr inbounds ptr, ptr %945, i64 27
  %947 = load ptr, ptr %946, align 8
  call void %947(ptr noundef nonnull align 8 dereferenceable(144) %944)
  %948 = load ptr, ptr %944, align 8, !tbaa !228
  %949 = getelementptr inbounds ptr, ptr %948, i64 23
  %950 = load ptr, ptr %949, align 8
  %951 = call noundef i32 %950(ptr noundef nonnull align 8 dereferenceable(144) %944)
  %952 = icmp sgt i32 %951, 0
  br i1 %952, label %963, label %953

953:                                              ; preds = %963, %940
  %954 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %955 = getelementptr inbounds %class.cEnvir, ptr %954, i64 0, i32 4
  %956 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %955, ptr noundef nonnull @.str.143, i64 noundef 68)
  %957 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %958 = getelementptr inbounds %class.cEnvir, ptr %957, i64 0, i32 4
  %959 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %958, ptr noundef nonnull @.str.144, i64 noundef 70)
  %960 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %961 = getelementptr inbounds %class.cEnvir, ptr %960, i64 0, i32 4
  %962 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %961, ptr noundef nonnull @.str.27, i64 noundef 1)
  br label %985

963:                                              ; preds = %940, %963
  %964 = phi i32 [ %979, %963 ], [ 0, %940 ]
  %965 = load ptr, ptr %944, align 8, !tbaa !228
  %966 = getelementptr inbounds ptr, ptr %965, i64 24
  %967 = load ptr, ptr %966, align 8
  %968 = call noundef ptr %967(ptr noundef nonnull align 8 dereferenceable(144) %944, i32 noundef %964)
  %969 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %970 = getelementptr inbounds %class.cEnvir, ptr %969, i64 0, i32 4
  %971 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %970, ptr noundef nonnull @.str.142, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #39
  %972 = load ptr, ptr %968, align 8, !tbaa !228
  %973 = getelementptr inbounds ptr, ptr %972, i64 7
  %974 = load ptr, ptr %973, align 8
  %975 = call noundef ptr %974(ptr noundef nonnull align 8 dereferenceable(8) %968)
  store ptr %975, ptr %33, align 8, !tbaa !224
  %976 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %969, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %977 = getelementptr inbounds %class.cEnvir, ptr %976, i64 0, i32 4
  %978 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %977, ptr noundef nonnull @.str.27, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #39
  %979 = add nuw nsw i32 %964, 1
  %980 = load ptr, ptr %944, align 8, !tbaa !228
  %981 = getelementptr inbounds ptr, ptr %980, i64 23
  %982 = load ptr, ptr %981, align 8
  %983 = call noundef i32 %982(ptr noundef nonnull align 8 dereferenceable(144) %944)
  %984 = icmp slt i32 %979, %983
  br i1 %984, label %963, label %953, !llvm.loop !337

985:                                              ; preds = %953, %937
  %986 = phi i1 [ true, %953 ], [ %936, %937 ]
  br i1 %51, label %990, label %987

987:                                              ; preds = %985
  %988 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.145) #42
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %1029

990:                                              ; preds = %987, %985
  %991 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %992 = getelementptr inbounds %class.cEnvir, ptr %991, i64 0, i32 4
  %993 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %992, ptr noundef nonnull @.str.146, i64 noundef 83)
  %994 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors)
  %995 = load ptr, ptr %994, align 8, !tbaa !228
  %996 = getelementptr inbounds ptr, ptr %995, i64 27
  %997 = load ptr, ptr %996, align 8
  call void %997(ptr noundef nonnull align 8 dereferenceable(144) %994)
  %998 = load ptr, ptr %994, align 8, !tbaa !228
  %999 = getelementptr inbounds ptr, ptr %998, i64 23
  %1000 = load ptr, ptr %999, align 8
  %1001 = call noundef i32 %1000(ptr noundef nonnull align 8 dereferenceable(144) %994)
  %1002 = icmp sgt i32 %1001, 0
  br i1 %1002, label %1007, label %1003

1003:                                             ; preds = %1007, %990
  %1004 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1005 = getelementptr inbounds %class.cEnvir, ptr %1004, i64 0, i32 4
  %1006 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1005, ptr noundef nonnull @.str.27, i64 noundef 1)
  br label %1029

1007:                                             ; preds = %990, %1007
  %1008 = phi i32 [ %1023, %1007 ], [ 0, %990 ]
  %1009 = load ptr, ptr %994, align 8, !tbaa !228
  %1010 = getelementptr inbounds ptr, ptr %1009, i64 24
  %1011 = load ptr, ptr %1010, align 8
  %1012 = call noundef ptr %1011(ptr noundef nonnull align 8 dereferenceable(144) %994, i32 noundef %1008)
  %1013 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1014 = getelementptr inbounds %class.cEnvir, ptr %1013, i64 0, i32 4
  %1015 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1014, ptr noundef nonnull @.str.142, i64 noundef 8)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #39
  %1016 = load ptr, ptr %1012, align 8, !tbaa !228
  %1017 = getelementptr inbounds ptr, ptr %1016, i64 7
  %1018 = load ptr, ptr %1017, align 8
  %1019 = call noundef ptr %1018(ptr noundef nonnull align 8 dereferenceable(8) %1012)
  store ptr %1019, ptr %34, align 8, !tbaa !224
  %1020 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1013, ptr noundef nonnull align 8 dereferenceable(8) %34)
  %1021 = getelementptr inbounds %class.cEnvir, ptr %1020, i64 0, i32 4
  %1022 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1021, ptr noundef nonnull @.str.27, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #39
  %1023 = add nuw nsw i32 %1008, 1
  %1024 = load ptr, ptr %994, align 8, !tbaa !228
  %1025 = getelementptr inbounds ptr, ptr %1024, i64 23
  %1026 = load ptr, ptr %1025, align 8
  %1027 = call noundef i32 %1026(ptr noundef nonnull align 8 dereferenceable(144) %994)
  %1028 = icmp slt i32 %1023, %1027
  br i1 %1028, label %1007, label %1003, !llvm.loop !338

1029:                                             ; preds = %1003, %987
  %1030 = phi i1 [ true, %1003 ], [ %986, %987 ]
  br i1 %51, label %1034, label %1031

1031:                                             ; preds = %1029
  %1032 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.147) #42
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1034, label %1323

1034:                                             ; preds = %1031, %1029
  %1035 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1036 = getelementptr inbounds %class.cEnvir, ptr %1035, i64 0, i32 4
  %1037 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1036, ptr noundef nonnull @.str.148, i64 noundef 66)
  %1038 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions)
  %1039 = load ptr, ptr %1038, align 8, !tbaa !228
  %1040 = getelementptr inbounds ptr, ptr %1039, i64 27
  %1041 = load ptr, ptr %1040, align 8
  call void %1041(ptr noundef nonnull align 8 dereferenceable(144) %1038)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %35) #39
  %1042 = getelementptr inbounds i8, ptr %35, i64 8
  store i32 0, ptr %1042, align 8, !tbaa !339
  %1043 = getelementptr inbounds i8, ptr %35, i64 16
  store ptr null, ptr %1043, align 8, !tbaa !270
  %1044 = getelementptr inbounds i8, ptr %35, i64 24
  store ptr %1042, ptr %1044, align 8, !tbaa !340
  %1045 = getelementptr inbounds i8, ptr %35, i64 32
  store ptr %1042, ptr %1045, align 8, !tbaa !341
  %1046 = getelementptr inbounds i8, ptr %35, i64 40
  store i64 0, ptr %1046, align 8, !tbaa !342
  %1047 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %1048 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  br label %1049

1049:                                             ; preds = %1113, %1034
  %1050 = phi i32 [ 0, %1034 ], [ %1114, %1113 ]
  %1051 = load ptr, ptr %1038, align 8, !tbaa !228
  %1052 = getelementptr inbounds ptr, ptr %1051, i64 23
  %1053 = load ptr, ptr %1052, align 8
  %1054 = invoke noundef i32 %1053(ptr noundef nonnull align 8 dereferenceable(144) %1038)
          to label %1055 unwind label %1065

1055:                                             ; preds = %1049
  %1056 = icmp slt i32 %1050, %1054
  br i1 %1056, label %1067, label %1057

1057:                                             ; preds = %1055
  %1058 = load ptr, ptr %1044, align 8, !tbaa !340
  %1059 = icmp eq ptr %1058, %1042
  br i1 %1059, label %1129, label %1060

1060:                                             ; preds = %1057
  %1061 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 2
  %1062 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 1
  %1063 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 1
  %1064 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 2
  br label %1133

1065:                                             ; preds = %1049
  %1066 = landingpad { ptr, i32 }
          cleanup
  br label %1316

1067:                                             ; preds = %1055
  %1068 = load ptr, ptr %1038, align 8, !tbaa !228
  %1069 = getelementptr inbounds ptr, ptr %1068, i64 24
  %1070 = load ptr, ptr %1069, align 8
  %1071 = invoke noundef ptr %1070(ptr noundef nonnull align 8 dereferenceable(144) %1038, i32 noundef %1050)
          to label %1072 unwind label %1076

1072:                                             ; preds = %1067
  %1073 = icmp eq ptr %1071, null
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1072
  %1075 = call ptr @__dynamic_cast(ptr nonnull %1071, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI12cNEDFunction, i64 0) #39
  br label %1078

1076:                                             ; preds = %1067
  %1077 = landingpad { ptr, i32 }
          cleanup
  br label %1316

1078:                                             ; preds = %1072, %1074
  %1079 = phi ptr [ %1075, %1074 ], [ null, %1072 ]
  %1080 = load ptr, ptr %1038, align 8, !tbaa !228
  %1081 = getelementptr inbounds ptr, ptr %1080, i64 24
  %1082 = load ptr, ptr %1081, align 8
  %1083 = invoke noundef ptr %1082(ptr noundef nonnull align 8 dereferenceable(144) %1038, i32 noundef %1050)
          to label %1084 unwind label %1088

1084:                                             ; preds = %1078
  %1085 = icmp eq ptr %1083, null
  br i1 %1085, label %1090, label %1086

1086:                                             ; preds = %1084
  %1087 = call ptr @__dynamic_cast(ptr nonnull %1083, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #39
  br label %1090

1088:                                             ; preds = %1078
  %1089 = landingpad { ptr, i32 }
          cleanup
  br label %1316

1090:                                             ; preds = %1084, %1086
  %1091 = phi ptr [ %1087, %1086 ], [ null, %1084 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %36) #39
  %1092 = icmp eq ptr %1079, null
  br i1 %1092, label %1095, label %1093

1093:                                             ; preds = %1090
  %1094 = getelementptr inbounds %class.cNEDFunction, ptr %1079, i64 0, i32 7
  br label %1099

1095:                                             ; preds = %1090
  %1096 = icmp eq ptr %1091, null
  br i1 %1096, label %1102, label %1097

1097:                                             ; preds = %1095
  %1098 = getelementptr inbounds %class.cMathFunction, ptr %1091, i64 0, i32 3
  br label %1099

1099:                                             ; preds = %1093, %1097
  %1100 = phi ptr [ %1098, %1097 ], [ %1094, %1093 ]
  %1101 = load ptr, ptr %1100, align 8, !tbaa !274
  br label %1102

1102:                                             ; preds = %1099, %1095
  %1103 = phi ptr [ @.str.149, %1095 ], [ %1101, %1099 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %1103, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %1104 unwind label %1115

1104:                                             ; preds = %1102
  %1105 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %1106 unwind label %1117

1106:                                             ; preds = %1104
  %1107 = load ptr, ptr %36, align 8, !tbaa !274
  %1108 = icmp eq ptr %1107, %1047
  br i1 %1108, label %1109, label %1112

1109:                                             ; preds = %1106
  %1110 = load i64, ptr %1048, align 8, !tbaa !277
  %1111 = icmp ult i64 %1110, 16
  call void @llvm.assume(i1 %1111)
  br label %1113

1112:                                             ; preds = %1106
  call void @_ZdlPv(ptr noundef %1107) #38
  br label %1113

1113:                                             ; preds = %1109, %1112
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #39
  %1114 = add nuw nsw i32 %1050, 1
  br label %1049, !llvm.loop !343

1115:                                             ; preds = %1102
  %1116 = landingpad { ptr, i32 }
          cleanup
  br label %1127

1117:                                             ; preds = %1104
  %1118 = landingpad { ptr, i32 }
          cleanup
  %1119 = load ptr, ptr %36, align 8, !tbaa !274
  %1120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 2
  %1121 = icmp eq ptr %1119, %1120
  br i1 %1121, label %1122, label %1126

1122:                                             ; preds = %1117
  %1123 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 0, i32 1
  %1124 = load i64, ptr %1123, align 8, !tbaa !277
  %1125 = icmp ult i64 %1124, 16
  call void @llvm.assume(i1 %1125)
  br label %1127

1126:                                             ; preds = %1117
  call void @_ZdlPv(ptr noundef %1119) #38
  br label %1127

1127:                                             ; preds = %1126, %1122, %1115
  %1128 = phi { ptr, i32 } [ %1116, %1115 ], [ %1118, %1122 ], [ %1118, %1126 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #39
  br label %1316

1129:                                             ; preds = %1165, %1057
  %1130 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1131 = getelementptr inbounds %class.cEnvir, ptr %1130, i64 0, i32 4
  %1132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1131, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1308 unwind label %1314

1133:                                             ; preds = %1060, %1165
  %1134 = phi ptr [ %1058, %1060 ], [ %1166, %1165 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %38) #39
  %1135 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %1134, i64 0, i32 1
  store ptr %1061, ptr %38, align 8, !tbaa !329
  %1136 = load ptr, ptr %1135, align 8, !tbaa !274
  %1137 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %1134, i64 0, i32 1, i32 0, i64 8
  %1138 = load i64, ptr %1137, align 8, !tbaa !277
  %1139 = getelementptr inbounds i8, ptr %1136, i64 %1138
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %1136, ptr noundef %1139)
          to label %1140 unwind label %1168

1140:                                             ; preds = %1133
  %1141 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1142 = getelementptr inbounds %class.cEnvir, ptr %1141, i64 0, i32 4
  %1143 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1142, ptr noundef nonnull @.str.150, i64 noundef 12)
          to label %1144 unwind label %1170

1144:                                             ; preds = %1140
  %1145 = load ptr, ptr %38, align 8, !tbaa !274
  %1146 = load i64, ptr %1062, align 8, !tbaa !277
  %1147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1142, ptr noundef %1145, i64 noundef %1146)
          to label %1148 unwind label %1170

1148:                                             ; preds = %1144
  %1149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1142, ptr noundef nonnull @.str.151, i64 noundef 3)
          to label %1150 unwind label %1170

1150:                                             ; preds = %1148, %1293
  %1151 = phi i32 [ %1294, %1293 ], [ 0, %1148 ]
  %1152 = load ptr, ptr %1038, align 8, !tbaa !228
  %1153 = getelementptr inbounds ptr, ptr %1152, i64 23
  %1154 = load ptr, ptr %1153, align 8
  %1155 = invoke noundef i32 %1154(ptr noundef nonnull align 8 dereferenceable(144) %1038)
          to label %1156 unwind label %1172

1156:                                             ; preds = %1150
  %1157 = icmp slt i32 %1151, %1155
  br i1 %1157, label %1174, label %1158

1158:                                             ; preds = %1156
  %1159 = load ptr, ptr %38, align 8, !tbaa !274
  %1160 = icmp eq ptr %1159, %1061
  br i1 %1160, label %1161, label %1164

1161:                                             ; preds = %1158
  %1162 = load i64, ptr %1062, align 8, !tbaa !277
  %1163 = icmp ult i64 %1162, 16
  call void @llvm.assume(i1 %1163)
  br label %1165

1164:                                             ; preds = %1158
  call void @_ZdlPv(ptr noundef %1159) #38
  br label %1165

1165:                                             ; preds = %1161, %1164
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %38) #39
  %1166 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %1134) #42
  %1167 = icmp eq ptr %1166, %1042
  br i1 %1167, label %1129, label %1133, !llvm.loop !344

1168:                                             ; preds = %1133
  %1169 = landingpad { ptr, i32 }
          cleanup
  br label %1306

1170:                                             ; preds = %1148, %1144, %1140
  %1171 = landingpad { ptr, i32 }
          cleanup
  br label %1297

1172:                                             ; preds = %1150
  %1173 = landingpad { ptr, i32 }
          cleanup
  br label %1297

1174:                                             ; preds = %1156
  %1175 = load ptr, ptr %1038, align 8, !tbaa !228
  %1176 = getelementptr inbounds ptr, ptr %1175, i64 24
  %1177 = load ptr, ptr %1176, align 8
  %1178 = invoke noundef ptr %1177(ptr noundef nonnull align 8 dereferenceable(144) %1038, i32 noundef %1151)
          to label %1179 unwind label %1188

1179:                                             ; preds = %1174
  %1180 = load ptr, ptr %1038, align 8, !tbaa !228
  %1181 = getelementptr inbounds ptr, ptr %1180, i64 24
  %1182 = load ptr, ptr %1181, align 8
  %1183 = invoke noundef ptr %1182(ptr noundef nonnull align 8 dereferenceable(144) %1038, i32 noundef %1151)
          to label %1184 unwind label %1190

1184:                                             ; preds = %1179
  %1185 = icmp eq ptr %1183, null
  br i1 %1185, label %1192, label %1186

1186:                                             ; preds = %1184
  %1187 = call ptr @__dynamic_cast(ptr nonnull %1183, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI12cNEDFunction, i64 0) #39
  br label %1192

1188:                                             ; preds = %1174
  %1189 = landingpad { ptr, i32 }
          cleanup
  br label %1297

1190:                                             ; preds = %1179
  %1191 = landingpad { ptr, i32 }
          cleanup
  br label %1297

1192:                                             ; preds = %1184, %1186
  %1193 = phi ptr [ %1187, %1186 ], [ null, %1184 ]
  %1194 = load ptr, ptr %1038, align 8, !tbaa !228
  %1195 = getelementptr inbounds ptr, ptr %1194, i64 24
  %1196 = load ptr, ptr %1195, align 8
  %1197 = invoke noundef ptr %1196(ptr noundef nonnull align 8 dereferenceable(144) %1038, i32 noundef %1151)
          to label %1198 unwind label %1202

1198:                                             ; preds = %1192
  %1199 = icmp eq ptr %1197, null
  br i1 %1199, label %1204, label %1200

1200:                                             ; preds = %1198
  %1201 = call ptr @__dynamic_cast(ptr nonnull %1197, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #39
  br label %1204

1202:                                             ; preds = %1192
  %1203 = landingpad { ptr, i32 }
          cleanup
  br label %1297

1204:                                             ; preds = %1198, %1200
  %1205 = phi ptr [ %1201, %1200 ], [ null, %1198 ]
  %1206 = icmp eq ptr %1193, null
  br i1 %1206, label %1209, label %1207

1207:                                             ; preds = %1204
  %1208 = getelementptr inbounds %class.cNEDFunction, ptr %1193, i64 0, i32 7
  br label %1213

1209:                                             ; preds = %1204
  %1210 = icmp eq ptr %1205, null
  br i1 %1210, label %1216, label %1211

1211:                                             ; preds = %1209
  %1212 = getelementptr inbounds %class.cMathFunction, ptr %1205, i64 0, i32 3
  br label %1213

1213:                                             ; preds = %1207, %1211
  %1214 = phi ptr [ %1212, %1211 ], [ %1208, %1207 ]
  %1215 = load ptr, ptr %1214, align 8, !tbaa !274
  br label %1216

1216:                                             ; preds = %1213, %1209
  %1217 = phi ptr [ @.str.149, %1209 ], [ %1215, %1213 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #39
  br i1 %1206, label %1220, label %1218

1218:                                             ; preds = %1216
  %1219 = getelementptr inbounds %class.cNEDFunction, ptr %1193, i64 0, i32 8
  br label %1224

1220:                                             ; preds = %1216
  %1221 = icmp eq ptr %1205, null
  br i1 %1221, label %1227, label %1222

1222:                                             ; preds = %1220
  %1223 = getelementptr inbounds %class.cMathFunction, ptr %1205, i64 0, i32 4
  br label %1224

1224:                                             ; preds = %1218, %1222
  %1225 = phi ptr [ %1223, %1222 ], [ %1219, %1218 ]
  %1226 = load ptr, ptr %1225, align 8, !tbaa !274
  br label %1227

1227:                                             ; preds = %1224, %1220
  %1228 = phi ptr [ @.str.149, %1220 ], [ %1226, %1224 ]
  store ptr %1228, ptr %39, align 8, !tbaa !224
  %1229 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %1217) #39
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1293

1231:                                             ; preds = %1227
  %1232 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1233 = getelementptr inbounds %class.cEnvir, ptr %1232, i64 0, i32 4
  %1234 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1233, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %1235 unwind label %1274

1235:                                             ; preds = %1231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #39
  %1236 = load ptr, ptr %1178, align 8, !tbaa !228
  %1237 = getelementptr inbounds ptr, ptr %1236, i64 7
  %1238 = load ptr, ptr %1237, align 8
  %1239 = invoke noundef ptr %1238(ptr noundef nonnull align 8 dereferenceable(8) %1178)
          to label %1240 unwind label %1276

1240:                                             ; preds = %1235
  store ptr %1239, ptr %40, align 8, !tbaa !224
  %1241 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1232, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %1242 unwind label %1276

1242:                                             ; preds = %1240
  %1243 = getelementptr inbounds %class.cEnvir, ptr %1241, i64 0, i32 4
  %1244 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1243, ptr noundef nonnull @.str.152, i64 noundef 3)
          to label %1245 unwind label %1276

1245:                                             ; preds = %1242
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %41) #39
  %1246 = load ptr, ptr %1178, align 8, !tbaa !228
  %1247 = getelementptr inbounds ptr, ptr %1246, i64 9
  %1248 = load ptr, ptr %1247, align 8
  invoke void %1248(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %1178)
          to label %1249 unwind label %1278

1249:                                             ; preds = %1245
  %1250 = load ptr, ptr %41, align 8, !tbaa !274
  %1251 = load i64, ptr %1063, align 8, !tbaa !277
  %1252 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1243, ptr noundef %1250, i64 noundef %1251)
          to label %1253 unwind label %1280

1253:                                             ; preds = %1249
  %1254 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1243, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1255 unwind label %1280

1255:                                             ; preds = %1253
  %1256 = load ptr, ptr %41, align 8, !tbaa !274
  %1257 = icmp eq ptr %1256, %1064
  br i1 %1257, label %1258, label %1261

1258:                                             ; preds = %1255
  %1259 = load i64, ptr %1063, align 8, !tbaa !277
  %1260 = icmp ult i64 %1259, 16
  call void @llvm.assume(i1 %1260)
  br label %1262

1261:                                             ; preds = %1255
  call void @_ZdlPv(ptr noundef %1256) #38
  br label %1262

1262:                                             ; preds = %1258, %1261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #39
  %1263 = load ptr, ptr %39, align 8, !tbaa !224
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1293, label %1265

1265:                                             ; preds = %1262
  %1266 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1267 = getelementptr inbounds %class.cEnvir, ptr %1266, i64 0, i32 4
  %1268 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1267, ptr noundef nonnull @.str.102, i64 noundef 4)
          to label %1269 unwind label %1274

1269:                                             ; preds = %1265
  %1270 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1266, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %1271 unwind label %1274

1271:                                             ; preds = %1269
  %1272 = getelementptr inbounds %class.cEnvir, ptr %1270, i64 0, i32 4
  %1273 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1272, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1293 unwind label %1274

1274:                                             ; preds = %1271, %1265, %1231, %1269
  %1275 = landingpad { ptr, i32 }
          cleanup
  br label %1295

1276:                                             ; preds = %1242, %1240, %1235
  %1277 = landingpad { ptr, i32 }
          cleanup
  br label %1291

1278:                                             ; preds = %1245
  %1279 = landingpad { ptr, i32 }
          cleanup
  br label %1289

1280:                                             ; preds = %1253, %1249
  %1281 = landingpad { ptr, i32 }
          cleanup
  %1282 = load ptr, ptr %41, align 8, !tbaa !274
  %1283 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 2
  %1284 = icmp eq ptr %1282, %1283
  br i1 %1284, label %1285, label %1288

1285:                                             ; preds = %1280
  %1286 = load i64, ptr %1063, align 8, !tbaa !277
  %1287 = icmp ult i64 %1286, 16
  call void @llvm.assume(i1 %1287)
  br label %1289

1288:                                             ; preds = %1280
  call void @_ZdlPv(ptr noundef %1282) #38
  br label %1289

1289:                                             ; preds = %1288, %1285, %1278
  %1290 = phi { ptr, i32 } [ %1279, %1278 ], [ %1281, %1285 ], [ %1281, %1288 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #39
  br label %1291

1291:                                             ; preds = %1289, %1276
  %1292 = phi { ptr, i32 } [ %1290, %1289 ], [ %1277, %1276 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #39
  br label %1295

1293:                                             ; preds = %1271, %1262, %1227
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #39
  %1294 = add nuw nsw i32 %1151, 1
  br label %1150, !llvm.loop !345

1295:                                             ; preds = %1291, %1274
  %1296 = phi { ptr, i32 } [ %1275, %1274 ], [ %1292, %1291 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #39
  br label %1297

1297:                                             ; preds = %1172, %1190, %1295, %1202, %1188, %1170
  %1298 = phi { ptr, i32 } [ %1171, %1170 ], [ %1173, %1172 ], [ %1189, %1188 ], [ %1191, %1190 ], [ %1296, %1295 ], [ %1203, %1202 ]
  %1299 = load ptr, ptr %38, align 8, !tbaa !274
  %1300 = icmp eq ptr %1299, %1061
  br i1 %1300, label %1301, label %1305

1301:                                             ; preds = %1297
  %1302 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %38, i64 0, i32 1
  %1303 = load i64, ptr %1302, align 8, !tbaa !277
  %1304 = icmp ult i64 %1303, 16
  call void @llvm.assume(i1 %1304)
  br label %1306

1305:                                             ; preds = %1297
  call void @_ZdlPv(ptr noundef %1299) #38
  br label %1306

1306:                                             ; preds = %1305, %1301, %1168
  %1307 = phi { ptr, i32 } [ %1169, %1168 ], [ %1298, %1301 ], [ %1298, %1305 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %38) #39
  br label %1316

1308:                                             ; preds = %1129
  %1309 = load ptr, ptr %1043, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %1309)
          to label %1313 unwind label %1310

1310:                                             ; preds = %1308
  %1311 = landingpad { ptr, i32 }
          catch ptr null
  %1312 = extractvalue { ptr, i32 } %1311, 0
  call void @__clang_call_terminate(ptr %1312) #40
  unreachable

1313:                                             ; preds = %1308
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %35) #39
  br label %1323

1314:                                             ; preds = %1129
  %1315 = landingpad { ptr, i32 }
          cleanup
  br label %1316

1316:                                             ; preds = %1065, %1088, %1127, %1076, %1314, %1306
  %1317 = phi { ptr, i32 } [ %1307, %1306 ], [ %1315, %1314 ], [ %1066, %1065 ], [ %1077, %1076 ], [ %1128, %1127 ], [ %1089, %1088 ]
  %1318 = load ptr, ptr %1043, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %1318)
          to label %1322 unwind label %1319

1319:                                             ; preds = %1316
  %1320 = landingpad { ptr, i32 }
          catch ptr null
  %1321 = extractvalue { ptr, i32 } %1320, 0
  call void @__clang_call_terminate(ptr %1321) #40
  unreachable

1322:                                             ; preds = %1316
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %35) #39
  br label %1584

1323:                                             ; preds = %1313, %1031
  %1324 = phi i1 [ true, %1313 ], [ %1030, %1031 ]
  br i1 %51, label %1328, label %1325

1325:                                             ; preds = %1323
  %1326 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.153) #42
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1328, label %1435

1328:                                             ; preds = %1325, %1323
  %1329 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1330 = getelementptr inbounds %class.cEnvir, ptr %1329, i64 0, i32 4
  %1331 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1330, ptr noundef nonnull @.str.154, i64 noundef 71)
  %1332 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1333 = getelementptr inbounds %class.cEnvir, ptr %1332, i64 0, i32 4
  %1334 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1333, ptr noundef nonnull @.str.155, i64 noundef 53)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #39
  call void @_ZN14UnitConversion11getAllUnitsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %42)
  %1335 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %42, i64 0, i32 1
  %1336 = load ptr, ptr %1335, align 8, !tbaa !315
  %1337 = load ptr, ptr %42, align 8, !tbaa !317
  %1338 = ptrtoint ptr %1336 to i64
  %1339 = ptrtoint ptr %1337 to i64
  %1340 = sub i64 %1338, %1339
  %1341 = lshr exact i64 %1340, 3
  %1342 = trunc i64 %1341 to i32
  %1343 = icmp sgt i32 %1342, 0
  br i1 %1343, label %1348, label %1344

1344:                                             ; preds = %1410, %1328
  %1345 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1346 = getelementptr inbounds %class.cEnvir, ptr %1345, i64 0, i32 4
  %1347 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1346, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1422 unwind label %1427

1348:                                             ; preds = %1328, %1410
  %1349 = phi i64 [ %1411, %1410 ], [ 0, %1328 ]
  %1350 = phi ptr [ %1413, %1410 ], [ %1337, %1328 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #39
  %1351 = getelementptr inbounds ptr, ptr %1350, i64 %1349
  %1352 = load ptr, ptr %1351, align 8, !tbaa !224
  store ptr %1352, ptr %43, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #39
  %1353 = invoke noundef ptr @_ZN14UnitConversion11getBaseUnitEPKc(ptr noundef %1352)
          to label %1354 unwind label %1400

1354:                                             ; preds = %1348
  store ptr %1353, ptr %44, align 8, !tbaa !224
  %1355 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1356 = getelementptr inbounds %class.cEnvir, ptr %1355, i64 0, i32 4
  %1357 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1356, ptr noundef nonnull @.str.88, i64 noundef 2)
          to label %1358 unwind label %1400

1358:                                             ; preds = %1354
  %1359 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1355, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %1360 unwind label %1400

1360:                                             ; preds = %1358
  %1361 = getelementptr inbounds %class.cEnvir, ptr %1359, i64 0, i32 4
  %1362 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1361, ptr noundef nonnull @.str.156, i64 noundef 1)
          to label %1363 unwind label %1400

1363:                                             ; preds = %1360
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #39
  %1364 = load ptr, ptr %43, align 8, !tbaa !224
  %1365 = invoke noundef ptr @_ZN14UnitConversion11getLongNameEPKc(ptr noundef %1364)
          to label %1366 unwind label %1402

1366:                                             ; preds = %1363
  store ptr %1365, ptr %45, align 8, !tbaa !224
  %1367 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1359, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %1368 unwind label %1402

1368:                                             ; preds = %1366
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #39
  %1369 = load ptr, ptr %43, align 8, !tbaa !224
  %1370 = load ptr, ptr %44, align 8, !tbaa !224
  %1371 = icmp eq ptr %1369, null
  %1372 = icmp eq ptr %1370, null
  br i1 %1371, label %1380, label %1373

1373:                                             ; preds = %1368
  br i1 %1372, label %1376, label %1374

1374:                                             ; preds = %1373
  %1375 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1369, ptr noundef nonnull dereferenceable(1) %1370) #42
  br label %1385

1376:                                             ; preds = %1373
  %1377 = load i8, ptr %1369, align 1, !tbaa !326
  %1378 = icmp ne i8 %1377, 0
  %1379 = zext i1 %1378 to i32
  br label %1385

1380:                                             ; preds = %1368
  br i1 %1372, label %1385, label %1381

1381:                                             ; preds = %1380
  %1382 = load i8, ptr %1370, align 1, !tbaa !326
  %1383 = icmp ne i8 %1382, 0
  %1384 = sext i1 %1383 to i32
  br label %1385

1385:                                             ; preds = %1374, %1376, %1380, %1381
  %1386 = phi i32 [ %1375, %1374 ], [ %1379, %1376 ], [ 0, %1380 ], [ %1384, %1381 ]
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1406, label %1388

1388:                                             ; preds = %1385
  %1389 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1390 = getelementptr inbounds %class.cEnvir, ptr %1389, i64 0, i32 4
  %1391 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1390, ptr noundef nonnull @.str.156, i64 noundef 1)
          to label %1392 unwind label %1400

1392:                                             ; preds = %1388
  %1393 = load ptr, ptr %43, align 8, !tbaa !224
  %1394 = load ptr, ptr %44, align 8, !tbaa !224
  %1395 = invoke noundef double @_ZN14UnitConversion11convertUnitEdPKcS1_(double noundef 1.000000e+00, ptr noundef %1393, ptr noundef %1394)
          to label %1396 unwind label %1404

1396:                                             ; preds = %1392
  %1397 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1390, double noundef %1395)
          to label %1398 unwind label %1404

1398:                                             ; preds = %1396
  %1399 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1389, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %1406 unwind label %1404

1400:                                             ; preds = %1406, %1388, %1360, %1354, %1358, %1348
  %1401 = landingpad { ptr, i32 }
          cleanup
  br label %1420

1402:                                             ; preds = %1366, %1363
  %1403 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #39
  br label %1420

1404:                                             ; preds = %1396, %1398, %1392
  %1405 = landingpad { ptr, i32 }
          cleanup
  br label %1420

1406:                                             ; preds = %1398, %1385
  %1407 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1408 = getelementptr inbounds %class.cEnvir, ptr %1407, i64 0, i32 4
  %1409 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1408, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1410 unwind label %1400

1410:                                             ; preds = %1406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #39
  %1411 = add nuw nsw i64 %1349, 1
  %1412 = load ptr, ptr %1335, align 8, !tbaa !315
  %1413 = load ptr, ptr %42, align 8, !tbaa !317
  %1414 = ptrtoint ptr %1412 to i64
  %1415 = ptrtoint ptr %1413 to i64
  %1416 = sub i64 %1414, %1415
  %1417 = shl i64 %1416, 29
  %1418 = ashr i64 %1417, 32
  %1419 = icmp slt i64 %1411, %1418
  br i1 %1419, label %1348, label %1344, !llvm.loop !346

1420:                                             ; preds = %1404, %1402, %1400
  %1421 = phi { ptr, i32 } [ %1401, %1400 ], [ %1405, %1404 ], [ %1403, %1402 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #39
  br label %1429

1422:                                             ; preds = %1344
  %1423 = load ptr, ptr %42, align 8, !tbaa !317
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1426, label %1425

1425:                                             ; preds = %1422
  call void @_ZdlPv(ptr noundef %1423) #38
  br label %1426

1426:                                             ; preds = %1422, %1425
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #39
  br label %1435

1427:                                             ; preds = %1344
  %1428 = landingpad { ptr, i32 }
          cleanup
  br label %1429

1429:                                             ; preds = %1427, %1420
  %1430 = phi { ptr, i32 } [ %1421, %1420 ], [ %1428, %1427 ]
  %1431 = load ptr, ptr %42, align 8, !tbaa !317
  %1432 = icmp eq ptr %1431, null
  br i1 %1432, label %1434, label %1433

1433:                                             ; preds = %1429
  call void @_ZdlPv(ptr noundef %1431) #38
  br label %1434

1434:                                             ; preds = %1429, %1433
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #39
  br label %1584

1435:                                             ; preds = %1426, %1325
  %1436 = phi i1 [ true, %1426 ], [ %1324, %1325 ]
  br i1 %51, label %1440, label %1437

1437:                                             ; preds = %1435
  %1438 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.157) #42
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1440, label %1508

1440:                                             ; preds = %1437, %1435
  %1441 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1442 = getelementptr inbounds %class.cEnvir, ptr %1441, i64 0, i32 4
  %1443 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1442, ptr noundef nonnull @.str.158, i64 noundef 28)
  %1444 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @enums)
  %1445 = load ptr, ptr %1444, align 8, !tbaa !228
  %1446 = getelementptr inbounds ptr, ptr %1445, i64 27
  %1447 = load ptr, ptr %1446, align 8
  call void %1447(ptr noundef nonnull align 8 dereferenceable(144) %1444)
  %1448 = load ptr, ptr %1444, align 8, !tbaa !228
  %1449 = getelementptr inbounds ptr, ptr %1448, i64 23
  %1450 = load ptr, ptr %1449, align 8
  %1451 = call noundef i32 %1450(ptr noundef nonnull align 8 dereferenceable(144) %1444)
  %1452 = icmp sgt i32 %1451, 0
  br i1 %1452, label %1453, label %1456

1453:                                             ; preds = %1440
  %1454 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 1
  %1455 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 2
  br label %1460

1456:                                             ; preds = %1491, %1440
  %1457 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1458 = getelementptr inbounds %class.cEnvir, ptr %1457, i64 0, i32 4
  %1459 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1458, ptr noundef nonnull @.str.27, i64 noundef 1)
  br label %1508

1460:                                             ; preds = %1453, %1491
  %1461 = phi i32 [ 0, %1453 ], [ %1492, %1491 ]
  %1462 = load ptr, ptr %1444, align 8, !tbaa !228
  %1463 = getelementptr inbounds ptr, ptr %1462, i64 24
  %1464 = load ptr, ptr %1463, align 8
  %1465 = call noundef ptr %1464(ptr noundef nonnull align 8 dereferenceable(144) %1444, i32 noundef %1461)
  %1466 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1467 = getelementptr inbounds %class.cEnvir, ptr %1466, i64 0, i32 4
  %1468 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1467, ptr noundef nonnull @.str.88, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #39
  %1469 = load ptr, ptr %1465, align 8, !tbaa !228
  %1470 = getelementptr inbounds ptr, ptr %1469, i64 7
  %1471 = load ptr, ptr %1470, align 8
  %1472 = call noundef ptr %1471(ptr noundef nonnull align 8 dereferenceable(8) %1465)
  store ptr %1472, ptr %46, align 8, !tbaa !224
  %1473 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1466, ptr noundef nonnull align 8 dereferenceable(8) %46)
  %1474 = getelementptr inbounds %class.cEnvir, ptr %1473, i64 0, i32 4
  %1475 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1474, ptr noundef nonnull @.str.152, i64 noundef 3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %47) #39
  %1476 = load ptr, ptr %1465, align 8, !tbaa !228
  %1477 = getelementptr inbounds ptr, ptr %1476, i64 9
  %1478 = load ptr, ptr %1477, align 8
  call void %1478(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(8) %1465)
  %1479 = load ptr, ptr %47, align 8, !tbaa !274
  %1480 = load i64, ptr %1454, align 8, !tbaa !277
  %1481 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1474, ptr noundef %1479, i64 noundef %1480)
          to label %1482 unwind label %1498

1482:                                             ; preds = %1460
  %1483 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1474, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1484 unwind label %1498

1484:                                             ; preds = %1482
  %1485 = load ptr, ptr %47, align 8, !tbaa !274
  %1486 = icmp eq ptr %1485, %1455
  br i1 %1486, label %1487, label %1490

1487:                                             ; preds = %1484
  %1488 = load i64, ptr %1454, align 8, !tbaa !277
  %1489 = icmp ult i64 %1488, 16
  call void @llvm.assume(i1 %1489)
  br label %1491

1490:                                             ; preds = %1484
  call void @_ZdlPv(ptr noundef %1485) #38
  br label %1491

1491:                                             ; preds = %1487, %1490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #39
  %1492 = add nuw nsw i32 %1461, 1
  %1493 = load ptr, ptr %1444, align 8, !tbaa !228
  %1494 = getelementptr inbounds ptr, ptr %1493, i64 23
  %1495 = load ptr, ptr %1494, align 8
  %1496 = call noundef i32 %1495(ptr noundef nonnull align 8 dereferenceable(144) %1444)
  %1497 = icmp slt i32 %1492, %1496
  br i1 %1497, label %1460, label %1456, !llvm.loop !347

1498:                                             ; preds = %1482, %1460
  %1499 = landingpad { ptr, i32 }
          cleanup
  %1500 = load ptr, ptr %47, align 8, !tbaa !274
  %1501 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 0, i32 2
  %1502 = icmp eq ptr %1500, %1501
  br i1 %1502, label %1503, label %1506

1503:                                             ; preds = %1498
  %1504 = load i64, ptr %1454, align 8, !tbaa !277
  %1505 = icmp ult i64 %1504, 16
  call void @llvm.assume(i1 %1505)
  br label %1507

1506:                                             ; preds = %1498
  call void @_ZdlPv(ptr noundef %1500) #38
  br label %1507

1507:                                             ; preds = %1503, %1506
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #39
  br label %1584

1508:                                             ; preds = %1456, %1437
  %1509 = phi i1 [ true, %1456 ], [ %1436, %1437 ]
  br i1 %51, label %1513, label %1510

1510:                                             ; preds = %1508
  %1511 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.159) #42
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1513, label %1577

1513:                                             ; preds = %1510, %1508
  %1514 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1515 = getelementptr inbounds %class.cEnvir, ptr %1514, i64 0, i32 4
  %1516 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1515, ptr noundef nonnull @.str.160, i64 noundef 24)
  %1517 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
  %1518 = load ptr, ptr %1517, align 8, !tbaa !228
  %1519 = getelementptr inbounds ptr, ptr %1518, i64 27
  %1520 = load ptr, ptr %1519, align 8
  call void %1520(ptr noundef nonnull align 8 dereferenceable(144) %1517)
  %1521 = load ptr, ptr %1517, align 8, !tbaa !228
  %1522 = getelementptr inbounds ptr, ptr %1521, i64 23
  %1523 = load ptr, ptr %1522, align 8
  %1524 = call noundef i32 %1523(ptr noundef nonnull align 8 dereferenceable(144) %1517)
  %1525 = icmp sgt i32 %1524, 0
  br i1 %1525, label %1526, label %1583

1526:                                             ; preds = %1513
  %1527 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 1
  %1528 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 2
  br label %1529

1529:                                             ; preds = %1526, %1560
  %1530 = phi i32 [ 0, %1526 ], [ %1561, %1560 ]
  %1531 = load ptr, ptr %1517, align 8, !tbaa !228
  %1532 = getelementptr inbounds ptr, ptr %1531, i64 24
  %1533 = load ptr, ptr %1532, align 8
  %1534 = call noundef ptr %1533(ptr noundef nonnull align 8 dereferenceable(144) %1517, i32 noundef %1530)
  %1535 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %1536 = getelementptr inbounds %class.cEnvir, ptr %1535, i64 0, i32 4
  %1537 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1536, ptr noundef nonnull @.str.88, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #39
  %1538 = load ptr, ptr %1534, align 8, !tbaa !228
  %1539 = getelementptr inbounds ptr, ptr %1538, i64 7
  %1540 = load ptr, ptr %1539, align 8
  %1541 = call noundef ptr %1540(ptr noundef nonnull align 8 dereferenceable(8) %1534)
  store ptr %1541, ptr %48, align 8, !tbaa !224
  %1542 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %1535, ptr noundef nonnull align 8 dereferenceable(8) %48)
  %1543 = getelementptr inbounds %class.cEnvir, ptr %1542, i64 0, i32 4
  %1544 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1543, ptr noundef nonnull @.str.152, i64 noundef 3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %49) #39
  %1545 = load ptr, ptr %1534, align 8, !tbaa !228
  %1546 = getelementptr inbounds ptr, ptr %1545, i64 9
  %1547 = load ptr, ptr %1546, align 8
  call void %1547(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 8 dereferenceable(8) %1534)
  %1548 = load ptr, ptr %49, align 8, !tbaa !274
  %1549 = load i64, ptr %1527, align 8, !tbaa !277
  %1550 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1543, ptr noundef %1548, i64 noundef %1549)
          to label %1551 unwind label %1567

1551:                                             ; preds = %1529
  %1552 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1543, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %1553 unwind label %1567

1553:                                             ; preds = %1551
  %1554 = load ptr, ptr %49, align 8, !tbaa !274
  %1555 = icmp eq ptr %1554, %1528
  br i1 %1555, label %1556, label %1559

1556:                                             ; preds = %1553
  %1557 = load i64, ptr %1527, align 8, !tbaa !277
  %1558 = icmp ult i64 %1557, 16
  call void @llvm.assume(i1 %1558)
  br label %1560

1559:                                             ; preds = %1553
  call void @_ZdlPv(ptr noundef %1554) #38
  br label %1560

1560:                                             ; preds = %1556, %1559
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %49) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #39
  %1561 = add nuw nsw i32 %1530, 1
  %1562 = load ptr, ptr %1517, align 8, !tbaa !228
  %1563 = getelementptr inbounds ptr, ptr %1562, i64 23
  %1564 = load ptr, ptr %1563, align 8
  %1565 = call noundef i32 %1564(ptr noundef nonnull align 8 dereferenceable(144) %1517)
  %1566 = icmp slt i32 %1561, %1565
  br i1 %1566, label %1529, label %1583, !llvm.loop !348

1567:                                             ; preds = %1551, %1529
  %1568 = landingpad { ptr, i32 }
          cleanup
  %1569 = load ptr, ptr %49, align 8, !tbaa !274
  %1570 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 2
  %1571 = icmp eq ptr %1569, %1570
  br i1 %1571, label %1572, label %1575

1572:                                             ; preds = %1567
  %1573 = load i64, ptr %1527, align 8, !tbaa !277
  %1574 = icmp ult i64 %1573, 16
  call void @llvm.assume(i1 %1574)
  br label %1576

1575:                                             ; preds = %1567
  call void @_ZdlPv(ptr noundef %1569) #38
  br label %1576

1576:                                             ; preds = %1572, %1575
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %49) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #39
  br label %1584

1577:                                             ; preds = %1510
  br i1 %1509, label %1583, label %1578

1578:                                             ; preds = %1577
  %1579 = call ptr @__cxa_allocate_exception(i64 128) #39
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %1579, ptr noundef nonnull @.str.161, ptr noundef %1)
          to label %1580 unwind label %1581

1580:                                             ; preds = %1578
  call void @__cxa_throw(ptr nonnull %1579, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

1581:                                             ; preds = %1578
  %1582 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %1579) #39
  br label %1584

1583:                                             ; preds = %1560, %1513, %1577
  ret void

1584:                                             ; preds = %819, %934, %256, %385, %1581, %1576, %1507, %1434, %1322
  %1585 = phi { ptr, i32 } [ %1317, %1322 ], [ %1430, %1434 ], [ %1499, %1507 ], [ %1568, %1576 ], [ %1582, %1581 ], [ %247, %256 ], [ %381, %385 ], [ %812, %819 ], [ %930, %934 ]
  resume { ptr, i32 } %1585
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !295 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %1, align 8, !tbaa !224
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !228
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = getelementptr inbounds %"class.std::ios_base", ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !349
  %13 = or i32 %12, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %10, i32 noundef %13)
  br label %17

14:                                               ; preds = %2
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4, i64 noundef %15)
  br label %17

17:                                               ; preds = %6, %14
  ret ptr %0
}

declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #0

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !355 {
  %2 = load ptr, ptr %0, align 8, !tbaa !304
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !356

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !274
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !357

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !277
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #38
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !358, !llvm.loop !305

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !304
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !359

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #38
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase5setupEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.StringTokenizer, align 8
  %5 = alloca %"class.std::set", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::allocator", align 1
  invoke void @_Z14setPosixLocalev()
          to label %10 unwind label %25, !prof !223

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !228
  %12 = getelementptr inbounds ptr, ptr %11, i64 65
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %14 unwind label %25, !prof !360

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !361
  %17 = icmp ult i64 %16, 135169
  br i1 %17, label %18, label %27, !prof !269

18:                                               ; preds = %14
  %19 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %20 = load ptr, ptr %19, align 8, !tbaa !228
  %21 = getelementptr inbounds ptr, ptr %20, i64 36
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef i32 (ptr, ptr, ...) %22(ptr noundef nonnull align 8 dereferenceable(288) %19, ptr noundef nonnull @.str.37, i64 noundef %16, i32 noundef 131072)
          to label %24 unwind label %25

24:                                               ; preds = %18
  store i64 135168, ptr %15, align 8, !tbaa !361
  br label %27

25:                                               ; preds = %30, %27, %18, %10, %1
  %26 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %313

27:                                               ; preds = %24, %14
  %28 = load i64, ptr %15, align 8, !tbaa !361
  %29 = trunc i64 %28 to i32
  invoke void @_ZN10cCoroutine4initEjj(i32 noundef %29, i32 noundef 131072)
          to label %30 unwind label %25, !prof !223

30:                                               ; preds = %27
  %31 = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #37
          to label %32 unwind label %25, !prof !223

32:                                               ; preds = %30
  invoke void @_ZN12cXMLDocCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %31)
          to label %33 unwind label %49, !prof !223

33:                                               ; preds = %32
  %34 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  store ptr %31, ptr %34, align 8, !tbaa !280
  %35 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !255
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr @.str.96, ptr %36, !prof !269
  %39 = invoke noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %38)
          to label %40 unwind label %51, !prof !223

40:                                               ; preds = %33
  %41 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  store ptr %39, ptr %41, align 8, !tbaa !282
  %42 = icmp eq ptr %39, null
  br i1 %42, label %43, label %55, !prof !269

43:                                               ; preds = %40
  %44 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %45 = load ptr, ptr %35, align 8, !tbaa !255
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.96, ptr %45
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %44, ptr noundef nonnull @.str.38, ptr noundef nonnull %47)
          to label %48 unwind label %53

48:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %334 unwind label %51

49:                                               ; preds = %32
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef %31) #38
  br label %313

51:                                               ; preds = %33, %48
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

53:                                               ; preds = %43
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %44) #39
  br label %313

55:                                               ; preds = %40
  %56 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  %57 = load ptr, ptr %56, align 8, !tbaa !255
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str.96, ptr %57, !prof !269
  %60 = invoke noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %59)
          to label %61 unwind label %71, !prof !223

61:                                               ; preds = %55
  %62 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  store ptr %60, ptr %62, align 8, !tbaa !284
  %63 = icmp eq ptr %60, null
  br i1 %63, label %64, label %75, !prof !269

64:                                               ; preds = %61
  %65 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %66 = load ptr, ptr %56, align 8, !tbaa !255
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr @.str.96, ptr %66
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %65, ptr noundef nonnull @.str.39, ptr noundef nonnull %68)
          to label %69 unwind label %73

69:                                               ; preds = %64
  invoke void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %70 unwind label %71

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %55, %69
  %72 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

73:                                               ; preds = %64
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %65) #39
  br label %313

75:                                               ; preds = %61
  %76 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !255
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @.str.96, ptr %77, !prof !269
  %80 = invoke noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %79)
          to label %81 unwind label %89, !prof !223

81:                                               ; preds = %75
  %82 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  store ptr %80, ptr %82, align 8, !tbaa !286
  %83 = icmp eq ptr %80, null
  br i1 %83, label %84, label %93, !prof !269

84:                                               ; preds = %81
  %85 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %86 = load ptr, ptr %76, align 8, !tbaa !255
  %87 = icmp eq ptr %86, null
  %88 = select i1 %87, ptr @.str.96, ptr %86
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %85, ptr noundef nonnull @.str.40, ptr noundef nonnull %88)
          to label %124 unwind label %91

89:                                               ; preds = %124, %75
  %90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

91:                                               ; preds = %84
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %85) #39
  br label %313

93:                                               ; preds = %81
  %94 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 7
  %95 = load i8, ptr %94, align 8, !tbaa !362, !range !322, !noundef !323
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %122, !prof !223

97:                                               ; preds = %93
  %98 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !255
  %100 = icmp eq ptr %99, null
  %101 = select i1 %100, ptr @.str.96, ptr %99, !prof !269
  %102 = invoke noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %101)
          to label %103 unwind label %112, !prof !223

103:                                              ; preds = %97
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %116, !prof !269

105:                                              ; preds = %103
  %106 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %107 = load ptr, ptr %98, align 8, !tbaa !255
  %108 = icmp eq ptr %107, null
  %109 = select i1 %108, ptr @.str.96, ptr %107
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %106, ptr noundef nonnull @.str.41, ptr noundef nonnull %109)
          to label %110 unwind label %114

110:                                              ; preds = %105
  invoke void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %111 unwind label %112

111:                                              ; preds = %110
  unreachable

112:                                              ; preds = %97, %116, %110
  %113 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

114:                                              ; preds = %105
  %115 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %106) #39
  br label %313

116:                                              ; preds = %103
  %117 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  invoke void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %117, ptr noundef nonnull %102)
          to label %118 unwind label %112, !prof !223

118:                                              ; preds = %116
  %119 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !268
  %121 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %120, i8 noundef signext 110, i32 noundef 0)
          to label %129 unwind label %133, !prof !223

122:                                              ; preds = %93
  %123 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %123, ptr noundef nonnull @.str.42)
          to label %124 unwind label %127

124:                                              ; preds = %84, %122
  %125 = phi ptr [ %123, %122 ], [ %85, %84 ]
  invoke void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %126 unwind label %89

126:                                              ; preds = %124
  unreachable

127:                                              ; preds = %122
  %128 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %123) #39
  br label %313

129:                                              ; preds = %118
  %130 = icmp eq ptr %121, null
  br i1 %130, label %131, label %135, !prof !223

131:                                              ; preds = %129
  %132 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #39
  br label %135

133:                                              ; preds = %118
  %134 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

135:                                              ; preds = %131, %129
  %136 = phi ptr [ %121, %129 ], [ %132, %131 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39
  %137 = load ptr, ptr %0, align 8, !tbaa !228
  %138 = getelementptr inbounds ptr, ptr %137, i64 31
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %141 unwind label %154, !prof !363

141:                                              ; preds = %135
  %142 = load ptr, ptr @CFGID_NED_PATH, align 8, !tbaa !224
  %143 = load ptr, ptr %140, align 8, !tbaa !228
  %144 = getelementptr inbounds ptr, ptr %143, i64 31
  %145 = load ptr, ptr %144, align 8
  invoke void %145(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef %142)
          to label %146 unwind label %154, !prof !364

146:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %147 = load ptr, ptr %2, align 8, !tbaa !274
  invoke void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.44, ptr noundef %136, ptr noundef %147)
          to label %148 unwind label %156, !prof !223

148:                                              ; preds = %146
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !277
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %160, !prof !269

152:                                              ; preds = %148
  %153 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %150, ptr noundef nonnull @.str.45, i64 noundef 1)
          to label %160 unwind label %158

154:                                              ; preds = %141, %135
  %155 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %311

156:                                              ; preds = %146
  %157 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %301

158:                                              ; preds = %152
  %159 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %292

160:                                              ; preds = %152, %148
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #39
  %161 = load ptr, ptr %3, align 8, !tbaa !274
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %161, ptr noundef nonnull @.str.46)
          to label %162 unwind label %221, !prof !223

162:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #39
  %163 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %163, align 8, !tbaa !339
  %164 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %164, align 8, !tbaa !270
  %165 = getelementptr inbounds i8, ptr %5, i64 24
  store ptr %163, ptr %165, align 8, !tbaa !340
  %166 = getelementptr inbounds i8, ptr %5, i64 32
  store ptr %163, ptr %166, align 8, !tbaa !341
  %167 = getelementptr inbounds i8, ptr %5, i64 40
  store i64 0, ptr %167, align 8, !tbaa !342
  br label %168

168:                                              ; preds = %220, %162
  %169 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %170 unwind label %223, !prof !365

170:                                              ; preds = %168
  br i1 %169, label %171, label %259, !prof !366

171:                                              ; preds = %170
  %172 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %173 unwind label %227, !prof !223

173:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %172, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %174 unwind label %229, !prof !223

174:                                              ; preds = %173
  %175 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %176 unwind label %231, !prof !223

176:                                              ; preds = %174
  %177 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %178 = icmp eq ptr %175, %163
  %179 = load ptr, ptr %6, align 8, !tbaa !274
  %180 = icmp eq ptr %179, %177
  br i1 %180, label %181, label %185, !prof !269

181:                                              ; preds = %176
  %182 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !277
  %184 = icmp ult i64 %183, 16
  call void @llvm.assume(i1 %184)
  br label %186

185:                                              ; preds = %176
  call void @_ZdlPv(ptr noundef %179) #38
  br label %186

186:                                              ; preds = %181, %185
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39
  br i1 %178, label %187, label %220, !prof !223

187:                                              ; preds = %186
  %188 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %189 = load ptr, ptr %188, align 8, !tbaa !228
  %190 = getelementptr inbounds ptr, ptr %189, i64 36
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef i32 (ptr, ptr, ...) %191(ptr noundef nonnull align 8 dereferenceable(288) %188, ptr noundef nonnull @.str.47)
          to label %193 unwind label %227, !prof !367

193:                                              ; preds = %187
  %194 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %195 = load ptr, ptr %194, align 8, !tbaa !228
  %196 = getelementptr inbounds ptr, ptr %195, i64 37
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef nonnull align 8 dereferenceable(288) ptr %197(ptr noundef nonnull align 8 dereferenceable(288) %194)
          to label %199 unwind label %227, !prof !368

199:                                              ; preds = %193
  %200 = invoke noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef %172)
          to label %201 unwind label %243, !prof !223

201:                                              ; preds = %199
  %202 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %203 = load ptr, ptr %202, align 8, !tbaa !228
  %204 = getelementptr inbounds ptr, ptr %203, i64 36
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef i32 (ptr, ptr, ...) %205(ptr noundef nonnull align 8 dereferenceable(288) %202, ptr noundef nonnull @.str.48, i32 noundef %200)
          to label %207 unwind label %243, !prof !367

207:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %172, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %208 unwind label %245, !prof !223

208:                                              ; preds = %207
  %209 = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %210 unwind label %247, !prof !223

210:                                              ; preds = %208
  %211 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %212 = load ptr, ptr %8, align 8, !tbaa !274
  %213 = icmp eq ptr %212, %211
  br i1 %213, label %214, label %218, !prof !223

214:                                              ; preds = %210
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !277
  %217 = icmp ult i64 %216, 16
  call void @llvm.assume(i1 %217)
  br label %219

218:                                              ; preds = %210
  call void @_ZdlPv(ptr noundef %212) #38
  br label %219

219:                                              ; preds = %214, %218
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39
  br label %220

220:                                              ; preds = %219, %186
  br label %168, !llvm.loop !369

221:                                              ; preds = %160
  %222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %290

223:                                              ; preds = %168
  %224 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %283

225:                                              ; preds = %259
  %226 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %283

227:                                              ; preds = %193, %187, %171
  %228 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %283

229:                                              ; preds = %173
  %230 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %241

231:                                              ; preds = %174
  %232 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %233 = load ptr, ptr %6, align 8, !tbaa !274
  %234 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %238 = load i64, ptr %237, align 8, !tbaa !277
  %239 = icmp ult i64 %238, 16
  call void @llvm.assume(i1 %239)
  br label %241

240:                                              ; preds = %231
  call void @_ZdlPv(ptr noundef %233) #38
  br label %241

241:                                              ; preds = %240, %236, %229
  %242 = phi { ptr, i32 } [ %230, %229 ], [ %232, %236 ], [ %232, %240 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39
  br label %283

243:                                              ; preds = %201, %199
  %244 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %283

245:                                              ; preds = %207
  %246 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %257

247:                                              ; preds = %208
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %249 = load ptr, ptr %8, align 8, !tbaa !274
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !277
  %255 = icmp ult i64 %254, 16
  call void @llvm.assume(i1 %255)
  br label %257

256:                                              ; preds = %247
  call void @_ZdlPv(ptr noundef %249) #38
  br label %257

257:                                              ; preds = %256, %252, %245
  %258 = phi { ptr, i32 } [ %246, %245 ], [ %248, %252 ], [ %248, %256 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39
  br label %283

259:                                              ; preds = %170
  invoke void @_ZN11cSimulation19doneLoadingNedFilesEv()
          to label %260 unwind label %225, !prof !223

260:                                              ; preds = %259
  %261 = load ptr, ptr %164, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %261)
          to label %265 unwind label %262, !prof !223

262:                                              ; preds = %260
  %263 = landingpad { ptr, i32 }
          catch ptr null
  %264 = extractvalue { ptr, i32 } %263, 0
  call void @__clang_call_terminate(ptr %264) #40
  unreachable

265:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #39
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #39
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #39
  %266 = load ptr, ptr %3, align 8, !tbaa !274
  %267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %269, label %272, !prof !269

269:                                              ; preds = %265
  %270 = load i64, ptr %149, align 8, !tbaa !277
  %271 = icmp ult i64 %270, 16
  call void @llvm.assume(i1 %271)
  br label %273

272:                                              ; preds = %265
  call void @_ZdlPv(ptr noundef %266) #38
  br label %273

273:                                              ; preds = %269, %272
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  %274 = load ptr, ptr %2, align 8, !tbaa !274
  %275 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %276 = icmp eq ptr %274, %275
  br i1 %276, label %277, label %281, !prof !269

277:                                              ; preds = %273
  %278 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !277
  %280 = icmp ult i64 %279, 16
  call void @llvm.assume(i1 %280)
  br label %282

281:                                              ; preds = %273
  call void @_ZdlPv(ptr noundef %274) #38
  br label %282

282:                                              ; preds = %277, %281
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %327

283:                                              ; preds = %223, %225, %227, %241, %257, %243
  %284 = phi { ptr, i32 } [ %228, %227 ], [ %242, %241 ], [ %258, %257 ], [ %244, %243 ], [ %224, %223 ], [ %226, %225 ]
  %285 = load ptr, ptr %164, align 8, !tbaa !270
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %285)
          to label %289 unwind label %286

286:                                              ; preds = %283
  %287 = landingpad { ptr, i32 }
          catch ptr null
  %288 = extractvalue { ptr, i32 } %287, 0
  call void @__clang_call_terminate(ptr %288) #40
  unreachable

289:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #39
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #39
  br label %290

290:                                              ; preds = %289, %221
  %291 = phi { ptr, i32 } [ %284, %289 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #39
  br label %292

292:                                              ; preds = %290, %158
  %293 = phi { ptr, i32 } [ %291, %290 ], [ %159, %158 ]
  %294 = load ptr, ptr %3, align 8, !tbaa !274
  %295 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %296 = icmp eq ptr %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load i64, ptr %149, align 8, !tbaa !277
  %299 = icmp ult i64 %298, 16
  call void @llvm.assume(i1 %299)
  br label %301

300:                                              ; preds = %292
  call void @_ZdlPv(ptr noundef %294) #38
  br label %301

301:                                              ; preds = %300, %297, %156
  %302 = phi { ptr, i32 } [ %157, %156 ], [ %293, %297 ], [ %293, %300 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  %303 = load ptr, ptr %2, align 8, !tbaa !274
  %304 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %305 = icmp eq ptr %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !277
  %309 = icmp ult i64 %308, 16
  call void @llvm.assume(i1 %309)
  br label %311

310:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef %303) #38
  br label %311

311:                                              ; preds = %310, %306, %154
  %312 = phi { ptr, i32 } [ %155, %154 ], [ %302, %306 ], [ %302, %310 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %313

313:                                              ; preds = %51, %53, %89, %91, %127, %114, %112, %311, %133, %73, %71, %49, %25
  %314 = phi { ptr, i32 } [ %50, %49 ], [ %26, %25 ], [ %52, %51 ], [ %54, %53 ], [ %72, %71 ], [ %74, %73 ], [ %90, %89 ], [ %128, %127 ], [ %92, %91 ], [ %113, %112 ], [ %115, %114 ], [ %312, %311 ], [ %134, %133 ]
  %315 = extractvalue { ptr, i32 } %314, 1
  %316 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #39
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %313
  %319 = extractvalue { ptr, i32 } %314, 0
  %320 = call ptr @__cxa_begin_catch(ptr %319) #39
  %321 = load ptr, ptr %0, align 8, !tbaa !228
  %322 = getelementptr inbounds ptr, ptr %321, i64 69
  %323 = load ptr, ptr %322, align 8
  invoke void %323(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %320)
          to label %324 unwind label %325

324:                                              ; preds = %318
  call void @__cxa_end_catch()
  br label %327

325:                                              ; preds = %318
  %326 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %329 unwind label %331

327:                                              ; preds = %282, %324
  %328 = phi i1 [ false, %324 ], [ true, %282 ]
  ret i1 %328

329:                                              ; preds = %325, %313
  %330 = phi { ptr, i32 } [ %314, %313 ], [ %326, %325 ]
  resume { ptr, i32 } %330

331:                                              ; preds = %325
  %332 = landingpad { ptr, i32 }
          catch ptr null
  %333 = extractvalue { ptr, i32 } %332, 0
  call void @__clang_call_terminate(ptr %333) #40
  unreachable

334:                                              ; preds = %48
  unreachable
}

declare void @_Z14setPosixLocalev() local_unnamed_addr #0

declare void @_ZN10cCoroutine4initEjj(i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN12cXMLDocCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #0

declare void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #11

declare void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !329
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.260) #41
  unreachable

7:                                                ; preds = %3
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %9)
  ret void
}

declare noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef) local_unnamed_addr #0

declare void @_ZN11cSimulation19doneLoadingNedFilesEv() local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat !prof !295 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #39
  tail call void @_ZSt9terminatev() #40
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !295 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %6 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP21cOmnetAppRegistration)
          to label %7 unwind label %9

7:                                                ; preds = %4
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.261, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

9:                                                ; preds = %7, %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %51

11:                                               ; preds = %1
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI21cOmnetAppRegistration, i64 0) #39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %16 = load ptr, ptr %0, align 8, !tbaa !228
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %20 unwind label %29

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39
  %21 = load ptr, ptr %0, align 8, !tbaa !228
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %24 unwind label %31

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !274
  %26 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP21cOmnetAppRegistration)
          to label %27 unwind label %33

27:                                               ; preds = %24
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.262, ptr noundef %19, ptr noundef %25, ptr noundef %26)
          to label %28 unwind label %33

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %56 unwind label %33

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %47

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %44

33:                                               ; preds = %28, %27, %24
  %34 = phi i1 [ false, %28 ], [ true, %27 ], [ true, %24 ]
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %2, align 8, !tbaa !274
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !277
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  br label %44

43:                                               ; preds = %33
  call void @_ZdlPv(ptr noundef %36) #38
  br label %44

44:                                               ; preds = %43, %39, %31
  %45 = phi { ptr, i32 } [ %32, %31 ], [ %35, %39 ], [ %35, %43 ]
  %46 = phi i1 [ true, %31 ], [ %34, %39 ], [ %34, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %47

47:                                               ; preds = %44, %29
  %48 = phi { ptr, i32 } [ %45, %44 ], [ %30, %29 ]
  %49 = phi i1 [ %46, %44 ], [ true, %29 ]
  br i1 %49, label %51, label %54

50:                                               ; preds = %11
  ret ptr %12

51:                                               ; preds = %47, %9
  %52 = phi ptr [ %5, %9 ], [ %15, %47 ]
  %53 = phi { ptr, i32 } [ %10, %9 ], [ %48, %47 ]
  call void @__cxa_free_exception(ptr %52) #39
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi { ptr, i32 } [ %48, %47 ], [ %53, %51 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

declare noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef) local_unnamed_addr #0

declare void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 !prof !370 {
  %4 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !329
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !277
  store i8 0, ptr %5, align 8, !tbaa !326
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !277
  %9 = add i64 %8, %4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9)
          to label %10 unwind label %26, !prof !371

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8, !tbaa !277
  %12 = sub i64 4611686018427387903, %11
  %13 = icmp ult i64 %12, %4
  br i1 %13, label %21, label %14, !prof !372

14:                                               ; preds = %10
  %15 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4)
          to label %16 unwind label %26, !prof !371

16:                                               ; preds = %14
  %17 = load i64, ptr %7, align 8, !tbaa !277
  %18 = load i64, ptr %6, align 8, !tbaa !277
  %19 = sub i64 4611686018427387903, %18
  %20 = icmp ult i64 %19, %17
  br i1 %20, label %21, label %23, !prof !372

21:                                               ; preds = %16, %10
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #41
          to label %22 unwind label %26

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !274
  %25 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %24, i64 noundef %17)
          to label %34 unwind label %26, !prof !371

26:                                               ; preds = %21, %23, %14, %3
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %0, align 8, !tbaa !274
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, ptr %6, align 8, !tbaa !277
  %32 = icmp ult i64 %31, 16
  tail call void @llvm.assume(i1 %32)
  br label %35

33:                                               ; preds = %26
  tail call void @_ZdlPv(ptr noundef %28) #38
  br label %35

34:                                               ; preds = %23
  ret void

35:                                               ; preds = %33, %30
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !373 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !374

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !326
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !374

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #37
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #39
  br label %12

12:                                               ; preds = %2, %4, %7
  %13 = phi ptr [ %10, %7 ], [ null, %4 ], [ null, %2 ]
  store ptr %13, ptr %0, align 8, !tbaa !255
  ret void
}

declare noundef ptr @_Z10opp_struprPc(ptr noundef) local_unnamed_addr #0

declare void @_ZN14UnitConversion11getAllUnitsEv(ptr dead_on_unwind writable sret(%"class.std::vector.33") align 8) local_unnamed_addr #0

declare noundef ptr @_ZN14UnitConversion11getBaseUnitEPKc(ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN14UnitConversion11getLongNameEPKc(ptr noundef) local_unnamed_addr #0

declare noundef double @_ZN14UnitConversion11convertUnitEdPKcS1_(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase15getParsimProcIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !221 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase22getParsimNumPartitionsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !221 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase8shutdownEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  invoke void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %2)
          to label %15 unwind label %3, !prof !223

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %5 = extractvalue { ptr, i32 } %4, 1
  %6 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #39
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = extractvalue { ptr, i32 } %4, 0
  %10 = tail call ptr @__cxa_begin_catch(ptr %9) #39
  %11 = load ptr, ptr %0, align 8, !tbaa !228
  %12 = getelementptr inbounds ptr, ptr %11, i64 69
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %14 unwind label %16

14:                                               ; preds = %8
  tail call void @__cxa_end_catch()
  br label %15

15:                                               ; preds = %1, %14
  ret void

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %20

18:                                               ; preds = %16, %3
  %19 = phi { ptr, i32 } [ %4, %3 ], [ %17, %16 ]
  resume { ptr, i32 } %19

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #40
  unreachable
}

declare void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase8startRunEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 !prof !221 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 34
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !282
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds ptr, ptr %5, i64 19
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !375
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = load ptr, ptr %9, align 8, !tbaa !228
  %11 = getelementptr inbounds ptr, ptr %10, i64 19
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9), !prof !376
  %13 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %14 = load ptr, ptr %13, align 8, !tbaa !286
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14), !prof !377
  %18 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %19 = load ptr, ptr %18, align 8, !tbaa !378
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !223

21:                                               ; preds = %1
  %22 = load ptr, ptr %19, align 8, !tbaa !228
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(43) %19)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  tail call void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224) %26)
  tail call void @_ZN6cEnvir13flushLastLineEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9EnvirBase10resetClockEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(600) %0) local_unnamed_addr #17 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  ret void
}

declare void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare void @_ZN6cEnvir13flushLastLineEv(ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 !prof !221 {
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  tail call void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224) %2)
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !223

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4)
  %10 = load ptr, ptr %3, align 8, !tbaa !378
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !228
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(43) %10) #39
  br label %16

16:                                               ; preds = %12, %6
  store ptr null, ptr %3, align 8, !tbaa !378
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %19 = load ptr, ptr %18, align 8, !tbaa !286
  %20 = load ptr, ptr %19, align 8, !tbaa !228
  %21 = getelementptr inbounds ptr, ptr %20, i64 20
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19), !prof !379
  %23 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !284
  %25 = load ptr, ptr %24, align 8, !tbaa !228
  %26 = getelementptr inbounds ptr, ptr %25, i64 20
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %24), !prof !380
  %28 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %29 = load ptr, ptr %28, align 8, !tbaa !282
  %30 = load ptr, ptr %29, align 8, !tbaa !228
  %31 = getelementptr inbounds ptr, ptr %30, i64 20
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %29), !prof !381
  ret void
}

declare void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase13readParameterEP4cPar(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !382 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !383
  %8 = load ptr, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %7), !prof !384
  %11 = load ptr, ptr %0, align 8, !tbaa !228
  %12 = getelementptr inbounds ptr, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %15 unwind label %33, !prof !385

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !tbaa !274
  %17 = load ptr, ptr %1, align 8, !tbaa !228
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %21 unwind label %33, !prof !386

21:                                               ; preds = %15
  %22 = invoke noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %23 unwind label %33, !prof !387

23:                                               ; preds = %21
  %24 = load ptr, ptr %14, align 8, !tbaa !228
  %25 = getelementptr inbounds ptr, ptr %24, i64 57
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16, ptr noundef %20, i1 noundef zeroext %22)
          to label %28 unwind label %33, !prof !388

28:                                               ; preds = %23
  %29 = icmp eq ptr %27, null
  br i1 %29, label %53, label %30, !prof !389

30:                                               ; preds = %28
  %31 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(8) @.str.162) #42
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %44, !prof !390

33:                                               ; preds = %56, %57, %53, %52, %23, %21, %15, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %3, align 8, !tbaa !274
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !277
  %41 = icmp ult i64 %40, 16
  call void @llvm.assume(i1 %41)
  br label %43

42:                                               ; preds = %33
  call void @_ZdlPv(ptr noundef %35) #38
  br label %43

43:                                               ; preds = %38, %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  resume { ptr, i32 } %34

44:                                               ; preds = %30
  br i1 %29, label %53, label %45, !prof !389

45:                                               ; preds = %44
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(4) @.str.163) #42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48, !prof !390

48:                                               ; preds = %45
  br i1 %29, label %53, label %49, !prof !389

49:                                               ; preds = %48
  %50 = load i8, ptr %27, align 1, !tbaa !326
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !391

52:                                               ; preds = %49
  invoke void @_ZN4cPar5parseEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %27)
          to label %61 unwind label %33, !prof !392

53:                                               ; preds = %44, %28, %48, %49
  %54 = invoke noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %55 unwind label %33, !prof !393

55:                                               ; preds = %53
  br i1 %54, label %56, label %57, !prof !393

56:                                               ; preds = %30, %55
  invoke void @_ZN4cPar13acceptDefaultEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %61 unwind label %33, !prof !393

57:                                               ; preds = %55, %45
  %58 = load ptr, ptr %0, align 8, !tbaa !228
  %59 = getelementptr inbounds ptr, ptr %58, i64 67
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull %1)
          to label %61 unwind label %33

61:                                               ; preds = %56, %57, %52
  %62 = load ptr, ptr %3, align 8, !tbaa !274
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %69, !prof !394

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !277
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %61
  call void @_ZdlPv(ptr noundef %62) #38
  br label %70

70:                                               ; preds = %65, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  ret void
}

declare noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN4cPar13acceptDefaultEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN4cPar5parseEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase13isModuleLocalEP7cModulePKci(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #16 align 2 !prof !295 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9EnvirBase14getXMLDocumentEPKcS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %4 = alloca %class.ModNameParamResolver, align 8
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = load ptr, ptr %6, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1)
  %11 = icmp eq ptr %2, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #39
  %13 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %14 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %13)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV20ModNameParamResolver, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !228
  %15 = getelementptr inbounds %class.ModNameParamResolver, ptr %4, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !395
  %16 = call noundef ptr @_ZN11cXMLElement24getDocumentElementByPathEPS_PKcPNS_13ParamResolverE(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39
  br label %22

17:                                               ; preds = %3
  %18 = load ptr, ptr %10, align 8, !tbaa !228
  %19 = getelementptr inbounds ptr, ptr %18, i64 16
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(192) %10)
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %16, %12 ], [ %21, %17 ]
  ret ptr %23
}

declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare noundef ptr @_ZN11cXMLElement24getDocumentElementByPathEPS_PKcPNS_13ParamResolverE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN9EnvirBase9getConfigEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #18 align 2 !prof !398 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN9EnvirBase11getConfigExEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #18 align 2 !prof !399 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase6bubbleEP10cComponentPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !295 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !378
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase13objectDeletedEP7cObject(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #19 align 2 !prof !400 {
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase15simulationEventEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #20 align 2 !prof !401 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !402

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase9beginSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #20 align 2 !prof !403 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !404

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 10
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase16messageScheduledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #20 align 2 !prof !405 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !406

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase16messageCancelledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !407 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !408

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #3 align 2 !prof !295 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !378
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load i64, ptr %3, align 8, !tbaa !257
  store i64 %12, ptr %6, align 8, !tbaa !257
  %13 = load i64, ptr %4, align 8, !tbaa !257
  store i64 %13, ptr %7, align 8, !tbaa !257
  %14 = load ptr, ptr %9, align 8, !tbaa !228
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull align 8 dereferenceable(43) %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %17

17:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #20 align 2 !prof !409 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !378
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !410

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #20 align 2 !prof !411 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !378
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11, !prof !412

11:                                               ; preds = %5
  %12 = load i64, ptr %3, align 8, !tbaa !257
  store i64 %12, ptr %6, align 8, !tbaa !257
  %13 = load i64, ptr %4, align 8, !tbaa !257
  store i64 %13, ptr %7, align 8, !tbaa !257
  %14 = load ptr, ptr %9, align 8, !tbaa !228
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull align 8 dereferenceable(43) %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %17

17:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase7endSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #20 align 2 !prof !403 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !404

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 14
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase14messageDeletedEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #20 align 2 !prof !413 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !414

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 align 2 !prof !415 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !378
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !416

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !228
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(43) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase18componentMethodEndEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #12 align 2 !prof !415 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !378
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !416

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !228
  %7 = getelementptr inbounds ptr, ptr %6, i64 18
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(43) %3)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase13moduleCreatedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !417 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !418

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase13moduleDeletedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !417 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !418

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 20
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase16moduleReparentedEP7cModuleS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !295 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !378
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase11gateCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !419 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !420

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 21
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase11gateDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !419 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !420

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase17connectionCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !421 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !422

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase17connectionDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !421 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !422

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase20displayStringChangedEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !295 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 25
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase5sputnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 !prof !221 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !378
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !223

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 26
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, i32 noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase16undisposedObjectEP7cObject(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 21
  %5 = load i8, ptr %4, align 1, !tbaa !423, !range !322, !noundef !323
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %12 = load ptr, ptr %1, align 8, !tbaa !228
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %15 = load ptr, ptr %3, align 8, !tbaa !274
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef %11, ptr noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !274
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !277
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %7
  call void @_ZdlPv(ptr noundef %17) #38
  br label %25

25:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase15processFileNameER10opp_string(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !424 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %5 = load ptr, ptr %1, align 8, !tbaa !255
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.96, ptr %5, !prof !425
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %8, ptr %3, align 8, !tbaa !329
  %9 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #39
  %10 = getelementptr inbounds i8, ptr %7, i64 %9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %7, ptr noundef nonnull %10)
  %11 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 19
  %12 = load i8, ptr %11, align 1, !tbaa !426, !range !322, !noundef !323
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14, !prof !427

14:                                               ; preds = %2
  %15 = call ptr @getenv(ptr noundef nonnull @.str.165) #39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call ptr @getenv(ptr noundef nonnull @.str.166) #39
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %15, %14 ], [ %18, %17 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call ptr @getenv(ptr noundef nonnull @.str.167) #39
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %22 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call ptr @__cxa_allocate_exception(i64 128) #39
  %29 = load ptr, ptr %1, align 8, !tbaa !255
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str.96, ptr %29
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef nonnull @.str.168, ptr noundef nonnull %31)
          to label %32 unwind label %33

32:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %97 unwind label %35

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #39
  br label %87

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %87

37:                                               ; preds = %24
  %38 = call i32 @getpid() #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.169, ptr noundef nonnull %25, i32 noundef %38)
          to label %39 unwind label %60

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !277
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !277
  %44 = sub i64 4611686018427387903, %43
  %45 = icmp ult i64 %44, %41
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #41
          to label %47 unwind label %62

47:                                               ; preds = %46
  unreachable

48:                                               ; preds = %39
  %49 = load ptr, ptr %4, align 8, !tbaa !274
  %50 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %49, i64 noundef %41)
          to label %51 unwind label %62

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 8, !tbaa !274
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i64, ptr %40, align 8, !tbaa !277
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %51
  call void @_ZdlPv(ptr noundef %52) #38
  br label %59

59:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %73

60:                                               ; preds = %37
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %71

62:                                               ; preds = %48, %46
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %4, align 8, !tbaa !274
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, ptr %40, align 8, !tbaa !277
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #38
  br label %71

71:                                               ; preds = %70, %67, %60
  %72 = phi { ptr, i32 } [ %61, %60 ], [ %63, %67 ], [ %63, %70 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %87

73:                                               ; preds = %59, %2
  %74 = load ptr, ptr %3, align 8, !tbaa !274
  %75 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %74)
          to label %76 unwind label %85, !prof !427

76:                                               ; preds = %73
  %77 = load ptr, ptr %3, align 8, !tbaa !274
  %78 = icmp eq ptr %77, %8
  br i1 %78, label %79, label %83, !prof !428

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !277
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %77) #38
  br label %84

84:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  ret void

85:                                               ; preds = %73
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %87

87:                                               ; preds = %33, %35, %71, %85
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %72, %71 ], [ %36, %35 ], [ %34, %33 ]
  %89 = load ptr, ptr %3, align 8, !tbaa !274
  %90 = icmp eq ptr %89, %8
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !277
  %94 = icmp ult i64 %93, 16
  call void @llvm.assume(i1 %94)
  br label %96

95:                                               ; preds = %87
  call void @_ZdlPv(ptr noundef %89) #38
  br label %96

96:                                               ; preds = %95, %91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  resume { ptr, i32 } %88

97:                                               ; preds = %32
  unreachable
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 !prof !429 {
  %3 = load ptr, ptr %0, align 8, !tbaa !255
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !430

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef %3) #38
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %16, label %8, !prof !431

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1, !tbaa !326
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !432

11:                                               ; preds = %8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42
  %13 = add i64 %12, 1
  %14 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %13) #37
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #39
  br label %16

16:                                               ; preds = %6, %8, %11
  %17 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  store ptr %17, ptr %0, align 8, !tbaa !255
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase11readOptionsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !228
  %7 = getelementptr inbounds ptr, ptr %6, i64 31
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !363
  %10 = load ptr, ptr @CFGID_TOTAL_STACK, align 8, !tbaa !224
  %11 = load ptr, ptr %9, align 8, !tbaa !228
  %12 = getelementptr inbounds ptr, ptr %11, i64 27
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef double %13(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10, double noundef 0x4140000000000000), !prof !433
  %15 = fptoui double %14 to i64
  %16 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 5
  store i64 %15, ptr %16, align 8, !tbaa !361
  %17 = load ptr, ptr @CFGID_PARALLEL_SIMULATION, align 8, !tbaa !224
  %18 = load ptr, ptr %9, align 8, !tbaa !228
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %17, i1 noundef zeroext false), !prof !434
  %22 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 7
  %23 = zext i1 %21 to i8
  store i8 %23, ptr %22, align 8, !tbaa !362
  br i1 %21, label %60, label %24, !prof !269

24:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39
  %25 = load ptr, ptr @CFGID_SCHEDULER_CLASS, align 8, !tbaa !224
  %26 = load ptr, ptr %9, align 8, !tbaa !228
  %27 = getelementptr inbounds ptr, ptr %26, i64 28
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %25, ptr noundef nonnull @.str.96), !prof !435
  %29 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %2, align 8, !tbaa !274
  %31 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %30)
          to label %32 unwind label %49, !prof !223

32:                                               ; preds = %24
  %33 = load ptr, ptr %2, align 8, !tbaa !274
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %40, !prof !269

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !277
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #38
  br label %41

41:                                               ; preds = %36, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %42 = load ptr, ptr @CFGID_OUTPUTVECTORMANAGER_CLASS, align 8, !tbaa !224
  %43 = load ptr, ptr %9, align 8, !tbaa !228
  %44 = getelementptr inbounds ptr, ptr %43, i64 28
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %42, ptr noundef nonnull @.str.96), !prof !435
  %46 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %47 = load ptr, ptr %3, align 8, !tbaa !274
  %48 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %47)
          to label %65 unwind label %152, !prof !223

49:                                               ; preds = %24
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %2, align 8, !tbaa !274
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !277
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %51) #38
  br label %59

59:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %185

60:                                               ; preds = %1
  %61 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %61, ptr noundef nonnull @.str.42)
          to label %62 unwind label %63

62:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %61) #39
  br label %185

65:                                               ; preds = %41
  %66 = load ptr, ptr %3, align 8, !tbaa !274
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73, !prof !269

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !277
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #38
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  %75 = load ptr, ptr @CFGID_OUTPUTSCALARMANAGER_CLASS, align 8, !tbaa !224
  %76 = load ptr, ptr %9, align 8, !tbaa !228
  %77 = getelementptr inbounds ptr, ptr %76, i64 28
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %75, ptr noundef nonnull @.str.96), !prof !435
  %79 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  %80 = load ptr, ptr %4, align 8, !tbaa !274
  %81 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %80)
          to label %82 unwind label %163, !prof !223

82:                                               ; preds = %74
  %83 = load ptr, ptr %4, align 8, !tbaa !274
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %90, !prof !269

86:                                               ; preds = %82
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !277
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %83) #38
  br label %91

91:                                               ; preds = %86, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39
  %92 = load ptr, ptr @CFGID_SNAPSHOTMANAGER_CLASS, align 8, !tbaa !224
  %93 = load ptr, ptr %9, align 8, !tbaa !228
  %94 = getelementptr inbounds ptr, ptr %93, i64 28
  %95 = load ptr, ptr %94, align 8
  call void %95(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %92, ptr noundef nonnull @.str.96), !prof !435
  %96 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  %97 = load ptr, ptr %5, align 8, !tbaa !274
  %98 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %97)
          to label %99 unwind label %174, !prof !223

99:                                               ; preds = %91
  %100 = load ptr, ptr %5, align 8, !tbaa !274
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %107, !prof !269

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !277
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %108

107:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %100) #38
  br label %108

108:                                              ; preds = %103, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  %109 = load ptr, ptr @CFGID_FNAME_APPEND_HOST, align 8, !tbaa !224
  %110 = load ptr, ptr %9, align 8, !tbaa !228
  %111 = getelementptr inbounds ptr, ptr %110, i64 25
  %112 = load ptr, ptr %111, align 8
  %113 = call noundef zeroext i1 %112(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %109, i1 noundef zeroext false), !prof !434
  %114 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 19
  %115 = zext i1 %113 to i8
  store i8 %115, ptr %114, align 1, !tbaa !426
  %116 = load ptr, ptr @CFGID_DEBUG_ON_ERRORS, align 8, !tbaa !224
  %117 = load ptr, ptr %9, align 8, !tbaa !228
  %118 = getelementptr inbounds ptr, ptr %117, i64 25
  %119 = load ptr, ptr %118, align 8
  %120 = call noundef zeroext i1 %119(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %116, i1 noundef zeroext false), !prof !434
  %121 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %122 = getelementptr inbounds %class.cEnvir, ptr %121, i64 0, i32 3
  %123 = zext i1 %120 to i8
  store i8 %123, ptr %122, align 2, !tbaa !436
  %124 = load ptr, ptr @CFGID_PRINT_UNDISPOSED, align 8, !tbaa !224
  %125 = load ptr, ptr %9, align 8, !tbaa !228
  %126 = getelementptr inbounds ptr, ptr %125, i64 25
  %127 = load ptr, ptr %126, align 8
  %128 = call noundef zeroext i1 %127(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %124, i1 noundef zeroext false), !prof !434
  %129 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 21
  %130 = zext i1 %128 to i8
  store i8 %130, ptr %129, align 1, !tbaa !423
  %131 = load ptr, ptr @CFGID_SIMTIME_SCALE, align 8, !tbaa !224
  %132 = load ptr, ptr %9, align 8, !tbaa !228
  %133 = getelementptr inbounds ptr, ptr %132, i64 26
  %134 = load ptr, ptr %133, align 8
  %135 = call noundef i64 %134(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %131, i64 noundef 0), !prof !437
  %136 = trunc i64 %135 to i32
  call void @_ZN7SimTime11setScaleExpEi(i32 noundef %136)
  %137 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !224
  %138 = load ptr, ptr %137, align 8, !tbaa !228
  %139 = getelementptr inbounds ptr, ptr %138, i64 6
  %140 = load ptr, ptr %139, align 8
  %141 = call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(20) %137), !prof !438
  %142 = load ptr, ptr %9, align 8, !tbaa !228
  %143 = getelementptr inbounds ptr, ptr %142, i64 21
  %144 = load ptr, ptr %143, align 8
  %145 = call noundef nonnull align 8 dereferenceable(8) ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %141), !prof !439
  %146 = load ptr, ptr %145, align 8, !tbaa !228
  %147 = getelementptr inbounds ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = call noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(8) %145), !prof !440
  %150 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %151 = call noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %149)
  ret void

152:                                              ; preds = %41
  %153 = landingpad { ptr, i32 }
          cleanup
  %154 = load ptr, ptr %3, align 8, !tbaa !274
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %156 = icmp eq ptr %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !277
  %160 = icmp ult i64 %159, 16
  call void @llvm.assume(i1 %160)
  br label %162

161:                                              ; preds = %152
  call void @_ZdlPv(ptr noundef %154) #38
  br label %162

162:                                              ; preds = %157, %161
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  br label %185

163:                                              ; preds = %74
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = load ptr, ptr %4, align 8, !tbaa !274
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !277
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  br label %173

172:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %165) #38
  br label %173

173:                                              ; preds = %168, %172
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %185

174:                                              ; preds = %91
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = load ptr, ptr %5, align 8, !tbaa !274
  %177 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !277
  %182 = icmp ult i64 %181, 16
  call void @llvm.assume(i1 %182)
  br label %184

183:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %176) #38
  br label %184

184:                                              ; preds = %179, %183
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  br label %185

185:                                              ; preds = %184, %173, %162, %63, %59
  %186 = phi { ptr, i32 } [ %64, %63 ], [ %175, %184 ], [ %164, %173 ], [ %153, %162 ], [ %50, %59 ]
  resume { ptr, i32 } %186
}

declare void @_ZN7SimTime11setScaleExpEi(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase17readPerRunOptionsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !228
  %6 = getelementptr inbounds ptr, ptr %5, i64 31
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !363
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39
  %9 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !224
  %10 = load ptr, ptr %8, align 8, !tbaa !228
  %11 = getelementptr inbounds ptr, ptr %10, i64 28
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9, ptr noundef nonnull @.str.96), !prof !435
  %13 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %2, align 8, !tbaa !274
  %15 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14)
          to label %16 unwind label %125, !prof !223

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8, !tbaa !274
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24, !prof !223

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !277
  %23 = icmp ult i64 %22, 16
  call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %16
  call void @_ZdlPv(ptr noundef %17) #38
  br label %25

25:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  %26 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !224
  %27 = load ptr, ptr %26, align 8, !tbaa !228
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(20) %26), !prof !438
  %31 = load ptr, ptr %8, align 8, !tbaa !228
  %32 = getelementptr inbounds ptr, ptr %31, i64 21
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %30), !prof !439
  %35 = load ptr, ptr %34, align 8, !tbaa !228
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34), !prof !440
  %39 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %40 = call noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %38)
  %41 = load ptr, ptr @CFGID_WARNINGS, align 8, !tbaa !224
  %42 = load ptr, ptr %8, align 8, !tbaa !228
  %43 = getelementptr inbounds ptr, ptr %42, i64 25
  %44 = load ptr, ptr %43, align 8
  %45 = call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %41, i1 noundef zeroext false), !prof !434
  %46 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 20
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 2, !tbaa !441
  %48 = load ptr, ptr @CFGID_SIM_TIME_LIMIT, align 8, !tbaa !224
  %49 = load ptr, ptr %8, align 8, !tbaa !228
  %50 = getelementptr inbounds ptr, ptr %49, i64 27
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef double %51(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %48, double noundef 0.000000e+00), !prof !433
  %53 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %53, double noundef %52)
  %55 = load ptr, ptr @CFGID_CPU_TIME_LIMIT, align 8, !tbaa !224
  %56 = load ptr, ptr %8, align 8, !tbaa !228
  %57 = getelementptr inbounds ptr, ptr %56, i64 27
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %55, double noundef 0.000000e+00), !prof !433
  %60 = fptosi double %59 to i64
  %61 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 23
  store i64 %60, ptr %61, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %62 = load ptr, ptr @CFGID_FINGERPRINT, align 8, !tbaa !224
  %63 = load ptr, ptr %8, align 8, !tbaa !228
  %64 = getelementptr inbounds ptr, ptr %63, i64 28
  %65 = load ptr, ptr %64, align 8
  call void %65(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %62, ptr noundef nonnull @.str.96), !prof !435
  %66 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  %67 = load ptr, ptr %3, align 8, !tbaa !274
  %68 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67)
          to label %69 unwind label %136, !prof !223

69:                                               ; preds = %25
  %70 = load ptr, ptr %3, align 8, !tbaa !274
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %77, !prof !223

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !277
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  br label %78

77:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %70) #38
  br label %78

78:                                               ; preds = %73, %77
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  %79 = load ptr, ptr @CFGID_NUM_RNGS, align 8, !tbaa !224
  %80 = load ptr, ptr %8, align 8, !tbaa !228
  %81 = getelementptr inbounds ptr, ptr %80, i64 26
  %82 = load ptr, ptr %81, align 8
  %83 = call noundef i64 %82(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %79, i64 noundef 0), !prof !437
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 12
  store i32 %84, ptr %85, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  %86 = load ptr, ptr @CFGID_RNG_CLASS, align 8, !tbaa !224
  %87 = load ptr, ptr %8, align 8, !tbaa !228
  %88 = getelementptr inbounds ptr, ptr %87, i64 28
  %89 = load ptr, ptr %88, align 8
  call void %89(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %86, ptr noundef nonnull @.str.96), !prof !435
  %90 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  %91 = load ptr, ptr %4, align 8, !tbaa !274
  %92 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %91)
          to label %93 unwind label %147, !prof !223

93:                                               ; preds = %78
  %94 = load ptr, ptr %4, align 8, !tbaa !274
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %97, label %101, !prof !269

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !277
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %102

101:                                              ; preds = %93
  call void @_ZdlPv(ptr noundef %94) #38
  br label %102

102:                                              ; preds = %97, %101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  %103 = load ptr, ptr @CFGID_SEED_SET, align 8, !tbaa !224
  %104 = load ptr, ptr %8, align 8, !tbaa !228
  %105 = getelementptr inbounds ptr, ptr %104, i64 26
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef i64 %106(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %103, i64 noundef 0), !prof !437
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 14
  store i32 %108, ptr %109, align 8, !tbaa !444
  %110 = load ptr, ptr @CFGID_RECORD_EVENTLOG, align 8, !tbaa !224
  %111 = load ptr, ptr %8, align 8, !tbaa !228
  %112 = getelementptr inbounds ptr, ptr %111, i64 25
  %113 = load ptr, ptr %112, align 8
  %114 = call noundef zeroext i1 %113(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %110, i1 noundef zeroext false), !prof !434
  %115 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 18
  %116 = zext i1 %114 to i8
  store i8 %116, ptr %115, align 8, !tbaa !445
  %117 = load ptr, ptr %66, align 8, !tbaa !255
  %118 = icmp eq ptr %117, null
  br i1 %118, label %158, label %119, !prof !223

119:                                              ; preds = %102
  %120 = load i8, ptr %117, align 1, !tbaa !326
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %158, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %124 = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37
  store i32 0, ptr %124, align 4, !tbaa !446
  call void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224) %123, ptr noundef nonnull %124)
  br label %160

125:                                              ; preds = %1
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = load ptr, ptr %2, align 8, !tbaa !274
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !277
  %133 = icmp ult i64 %132, 16
  call void @llvm.assume(i1 %133)
  br label %135

134:                                              ; preds = %125
  call void @_ZdlPv(ptr noundef %127) #38
  br label %135

135:                                              ; preds = %130, %134
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #39
  br label %272

136:                                              ; preds = %25
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load ptr, ptr %3, align 8, !tbaa !274
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !277
  %144 = icmp ult i64 %143, 16
  call void @llvm.assume(i1 %144)
  br label %146

145:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %138) #38
  br label %146

146:                                              ; preds = %141, %145
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  br label %272

147:                                              ; preds = %78
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = load ptr, ptr %4, align 8, !tbaa !274
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %154 = load i64, ptr %153, align 8, !tbaa !277
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  br label %157

156:                                              ; preds = %147
  call void @_ZdlPv(ptr noundef %149) #38
  br label %157

157:                                              ; preds = %152, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %272

158:                                              ; preds = %102, %119
  %159 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  call void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224) %159, ptr noundef null)
  br label %160

160:                                              ; preds = %158, %122
  %161 = load ptr, ptr %90, align 8, !tbaa !255
  %162 = icmp eq ptr %161, null
  %163 = select i1 %162, ptr @.str.96, ptr %161, !prof !269
  %164 = call noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %163)
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %174, !prof !269

166:                                              ; preds = %160
  %167 = call ptr @__cxa_allocate_exception(i64 128) #39
  %168 = load ptr, ptr %90, align 8, !tbaa !255
  %169 = icmp eq ptr %168, null
  %170 = select i1 %169, ptr @.str.96, ptr %168
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %167, ptr noundef nonnull @.str.170, ptr noundef nonnull %170)
          to label %171 unwind label %172

171:                                              ; preds = %166
  call void @__cxa_throw(ptr nonnull %167, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

172:                                              ; preds = %166
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %167) #39
  br label %272

174:                                              ; preds = %160
  %175 = load ptr, ptr %164, align 8, !tbaa !228
  %176 = getelementptr inbounds ptr, ptr %175, i64 20
  %177 = load ptr, ptr %176, align 8
  call void %177(ptr noundef nonnull align 8 dereferenceable(16) %164), !prof !448
  %178 = load ptr, ptr %164, align 8, !tbaa !228
  %179 = getelementptr inbounds ptr, ptr %178, i64 4
  %180 = load ptr, ptr %179, align 8
  call void %180(ptr noundef nonnull align 8 dereferenceable(16) %164) #39, !prof !290
  %181 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %182 = load i32, ptr %181, align 8, !tbaa !260
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %200, !prof !269

184:                                              ; preds = %174, %195
  %185 = phi i64 [ %196, %195 ], [ 0, %174 ]
  %186 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %187 = load ptr, ptr %186, align 8, !tbaa !289
  %188 = getelementptr inbounds ptr, ptr %187, i64 %185
  %189 = load ptr, ptr %188, align 8, !tbaa !224
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load ptr, ptr %189, align 8, !tbaa !228
  %193 = getelementptr inbounds ptr, ptr %192, i64 4
  %194 = load ptr, ptr %193, align 8
  call void %194(ptr noundef nonnull align 8 dereferenceable(16) %189) #39
  br label %195

195:                                              ; preds = %184, %191
  %196 = add nuw nsw i64 %185, 1
  %197 = load i32, ptr %181, align 8, !tbaa !260
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %196, %198
  br i1 %199, label %184, label %200, !prof !269, !llvm.loop !449

200:                                              ; preds = %195, %174
  %201 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %202 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %203 = load ptr, ptr %202, align 8, !tbaa !289
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205, !prof !223

205:                                              ; preds = %200
  call void @_ZdaPv(ptr noundef %203) #38
  br label %206

206:                                              ; preds = %205, %200
  %207 = load i32, ptr %85, align 8, !tbaa !443
  store i32 %207, ptr %201, align 8, !tbaa !260
  %208 = sext i32 %207 to i64
  %209 = icmp slt i32 %207, 0
  %210 = shl nsw i64 %208, 3
  %211 = select i1 %209, i64 -1, i64 %210, !prof !269
  %212 = call noalias noundef nonnull ptr @_Znam(i64 noundef %211) #37
  store ptr %212, ptr %202, align 8, !tbaa !289
  %213 = load i32, ptr %201, align 8, !tbaa !260
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %258, !prof !288

215:                                              ; preds = %206, %230
  %216 = phi i64 [ %254, %230 ], [ 0, %206 ]
  %217 = load ptr, ptr %90, align 8, !tbaa !255
  %218 = icmp eq ptr %217, null
  %219 = select i1 %218, ptr @.str.96, ptr %217, !prof !269
  %220 = call noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef nonnull %219)
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %230, !prof !269

222:                                              ; preds = %215
  %223 = call ptr @__cxa_allocate_exception(i64 128) #39
  %224 = load ptr, ptr %90, align 8, !tbaa !255
  %225 = icmp eq ptr %224, null
  %226 = select i1 %225, ptr @.str.96, ptr %224
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %223, ptr noundef nonnull @.str.170, ptr noundef nonnull %226)
          to label %227 unwind label %228

227:                                              ; preds = %222
  call void @__cxa_throw(ptr nonnull %223, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

228:                                              ; preds = %222
  %229 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %223) #39
  br label %272

230:                                              ; preds = %215
  %231 = load ptr, ptr %202, align 8, !tbaa !289
  %232 = getelementptr inbounds ptr, ptr %231, i64 %216
  store ptr %220, ptr %232, align 8, !tbaa !224
  %233 = load ptr, ptr %202, align 8, !tbaa !289
  %234 = getelementptr inbounds ptr, ptr %233, i64 %216
  %235 = load ptr, ptr %234, align 8, !tbaa !224
  %236 = load i32, ptr %109, align 8, !tbaa !444
  %237 = load i32, ptr %201, align 8, !tbaa !260
  %238 = load ptr, ptr %0, align 8, !tbaa !228
  %239 = getelementptr inbounds ptr, ptr %238, i64 53
  %240 = load ptr, ptr %239, align 8
  %241 = call noundef i32 %240(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !450
  %242 = load ptr, ptr %0, align 8, !tbaa !228
  %243 = getelementptr inbounds ptr, ptr %242, i64 54
  %244 = load ptr, ptr %243, align 8
  %245 = call noundef i32 %244(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !451
  %246 = load ptr, ptr %0, align 8, !tbaa !228
  %247 = getelementptr inbounds ptr, ptr %246, i64 31
  %248 = load ptr, ptr %247, align 8
  %249 = call noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !363
  %250 = load ptr, ptr %235, align 8, !tbaa !228
  %251 = getelementptr inbounds ptr, ptr %250, i64 19
  %252 = load ptr, ptr %251, align 8
  %253 = trunc i64 %216 to i32
  call void %252(ptr noundef nonnull align 8 dereferenceable(16) %235, i32 noundef %236, i32 noundef %253, i32 noundef %237, i32 noundef %241, i32 noundef %245, ptr noundef %249), !prof !452
  %254 = add nuw nsw i64 %216, 1
  %255 = load i32, ptr %201, align 8, !tbaa !260
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %254, %256
  br i1 %257, label %215, label %258, !prof !291, !llvm.loop !453

258:                                              ; preds = %230, %206
  %259 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 33
  store i64 0, ptr %259, align 8, !tbaa !454
  %260 = load i8, ptr %115, align 8, !tbaa !445, !range !322, !noundef !323
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %271, label %262, !prof !223

262:                                              ; preds = %258
  %263 = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
  invoke void @_ZN19EventlogFileManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(43) %263)
          to label %264 unwind label %269

264:                                              ; preds = %262
  %265 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  store ptr %263, ptr %265, align 8, !tbaa !378
  %266 = load ptr, ptr %263, align 8, !tbaa !228
  %267 = getelementptr inbounds ptr, ptr %266, i64 2
  %268 = load ptr, ptr %267, align 8
  call void %268(ptr noundef nonnull align 8 dereferenceable(43) %263)
  br label %271

269:                                              ; preds = %262
  %270 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %263) #38
  br label %272

271:                                              ; preds = %264, %258
  ret void

272:                                              ; preds = %172, %269, %228, %157, %146, %135
  %273 = phi { ptr, i32 } [ %148, %157 ], [ %137, %146 ], [ %126, %135 ], [ %173, %172 ], [ %229, %228 ], [ %270, %269 ]
  resume { ptr, i32 } %273
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #20 comdat align 2 !prof !455 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !456
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !457

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !458
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !457

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

declare void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare void @_ZN19EventlogFileManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(43)) unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase10getNumRNGsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #22 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !260
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN9EnvirBase6getRNGEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, i32 noundef %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !460 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false, !prof !461
  br i1 %7, label %14, label %8, !prof !461

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #39
  %10 = load i32, ptr %4, align 8, !tbaa !260
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.171, i32 noundef %1, i32 noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #39
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !289
  %17 = zext nneg i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !224
  ret ptr %19
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase16getRNGMappingForEP10cComponent(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !462 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::vector.33", align 8
  %5 = alloca [100 x i32], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !228
  %12 = getelementptr inbounds ptr, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(600) %0), !prof !463
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %15 = load ptr, ptr %1, align 8, !tbaa !228
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !464
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  %18 = load ptr, ptr %3, align 8, !tbaa !274
  %19 = load ptr, ptr %14, align 8, !tbaa !228
  %20 = getelementptr inbounds ptr, ptr %19, i64 61
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %18, ptr noundef nonnull @.str.172)
          to label %22 unwind label %27, !prof !465

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !315
  %25 = load ptr, ptr %4, align 8, !tbaa !317
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %201, label %29, !prof !466

27:                                               ; preds = %2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %220

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #39
  %30 = load ptr, ptr %23, align 8, !tbaa !315
  %31 = load ptr, ptr %4, align 8, !tbaa !317
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = lshr exact i64 %34, 3
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %174, %29
  %39 = phi i32 [ 0, %29 ], [ %175, %174 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %190, label %200

41:                                               ; preds = %29, %174
  %42 = phi i64 [ %179, %174 ], [ 0, %29 ]
  %43 = phi ptr [ %181, %174 ], [ %31, %29 ]
  %44 = phi i32 [ %175, %174 ], [ 0, %29 ]
  %45 = getelementptr inbounds ptr, ptr %43, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !224
  %47 = load ptr, ptr %3, align 8, !tbaa !274
  %48 = load ptr, ptr %14, align 8, !tbaa !228
  %49 = getelementptr inbounds ptr, ptr %48, i64 22
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %47, ptr noundef %46)
          to label %52 unwind label %73

52:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #39
  %53 = getelementptr inbounds i8, ptr %46, i64 4
  %54 = call i64 @strtol(ptr noundef nonnull %53, ptr noundef nonnull %6, i32 noundef 10) #39
  %55 = trunc i64 %54 to i32
  %56 = call i64 @strtol(ptr noundef %51, ptr noundef nonnull %7, i32 noundef 10) #39
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %6, align 8, !tbaa !224
  %59 = load i8, ptr %58, align 1, !tbaa !326
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load ptr, ptr %7, align 8, !tbaa !224
  %63 = load i8, ptr %62, align 1, !tbaa !326
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %61, %52
  %66 = call ptr @__cxa_allocate_exception(i64 128) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39
  %67 = load ptr, ptr %1, align 8, !tbaa !228
  %68 = getelementptr inbounds ptr, ptr %67, i64 8
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %70 unwind label %75

70:                                               ; preds = %65
  %71 = load ptr, ptr %8, align 8, !tbaa !274
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %66, ptr noundef nonnull @.str.173, ptr noundef %46, ptr noundef %51, ptr noundef %71)
          to label %72 unwind label %77

72:                                               ; preds = %70
  invoke void @__cxa_throw(ptr nonnull %66, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %231 unwind label %77

73:                                               ; preds = %41
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %215

75:                                               ; preds = %65
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %88

77:                                               ; preds = %72, %70
  %78 = phi i1 [ false, %72 ], [ true, %70 ]
  %79 = landingpad { ptr, i32 }
          cleanup
  %80 = load ptr, ptr %8, align 8, !tbaa !274
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !277
  %86 = icmp ult i64 %85, 16
  call void @llvm.assume(i1 %86)
  br label %88

87:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %80) #38
  br label %88

88:                                               ; preds = %87, %83, %75
  %89 = phi { ptr, i32 } [ %76, %75 ], [ %79, %83 ], [ %79, %87 ]
  %90 = phi i1 [ true, %75 ], [ %78, %83 ], [ %78, %87 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39
  br i1 %90, label %91, label %188

91:                                               ; preds = %88
  call void @__cxa_free_exception(ptr %66) #39
  br label %188

92:                                               ; preds = %61
  %93 = load ptr, ptr %0, align 8, !tbaa !228
  %94 = getelementptr inbounds ptr, ptr %93, i64 40
  %95 = load ptr, ptr %94, align 8
  %96 = invoke noundef i32 %95(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %97 unwind label %113

97:                                               ; preds = %92
  %98 = icmp slt i32 %96, %57
  br i1 %98, label %99, label %132

99:                                               ; preds = %97
  %100 = call ptr @__cxa_allocate_exception(i64 128) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39
  %101 = load ptr, ptr %1, align 8, !tbaa !228
  %102 = getelementptr inbounds ptr, ptr %101, i64 8
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %104 unwind label %115

104:                                              ; preds = %99
  %105 = load ptr, ptr %9, align 8, !tbaa !274
  %106 = load ptr, ptr %0, align 8, !tbaa !228
  %107 = getelementptr inbounds ptr, ptr %106, i64 40
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(600) %0)
          to label %110 unwind label %117

110:                                              ; preds = %104
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %100, ptr noundef nonnull @.str.174, i32 noundef %55, i32 noundef %57, ptr noundef %105, i32 noundef %109)
          to label %111 unwind label %117

111:                                              ; preds = %110
  invoke void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %112 unwind label %117

112:                                              ; preds = %111
  unreachable

113:                                              ; preds = %92
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %188

115:                                              ; preds = %99
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %128

117:                                              ; preds = %111, %110, %104
  %118 = phi i1 [ false, %111 ], [ true, %110 ], [ true, %104 ]
  %119 = landingpad { ptr, i32 }
          cleanup
  %120 = load ptr, ptr %9, align 8, !tbaa !274
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !277
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %120) #38
  br label %128

128:                                              ; preds = %127, %123, %115
  %129 = phi { ptr, i32 } [ %116, %115 ], [ %119, %123 ], [ %119, %127 ]
  %130 = phi i1 [ true, %115 ], [ %118, %123 ], [ %118, %127 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39
  br i1 %130, label %131, label %188

131:                                              ; preds = %128
  call void @__cxa_free_exception(ptr %100) #39
  br label %188

132:                                              ; preds = %97
  %133 = icmp sgt i32 %44, %55
  br i1 %133, label %174, label %134

134:                                              ; preds = %132
  %135 = icmp sgt i32 %55, 99
  br i1 %135, label %139, label %136

136:                                              ; preds = %134
  %137 = sext i32 %44 to i64
  %138 = add i32 %55, 1
  br label %165

139:                                              ; preds = %134
  %140 = call ptr @__cxa_allocate_exception(i64 128) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #39
  %141 = load ptr, ptr %1, align 8, !tbaa !228
  %142 = getelementptr inbounds ptr, ptr %141, i64 8
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %144 unwind label %148

144:                                              ; preds = %139
  %145 = load ptr, ptr %10, align 8, !tbaa !274
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %140, ptr noundef nonnull @.str.175, i32 noundef %55, ptr noundef %145)
          to label %146 unwind label %150

146:                                              ; preds = %144
  invoke void @__cxa_throw(ptr nonnull %140, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %147 unwind label %150

147:                                              ; preds = %146
  unreachable

148:                                              ; preds = %139
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %161

150:                                              ; preds = %146, %144
  %151 = phi i1 [ false, %146 ], [ true, %144 ]
  %152 = landingpad { ptr, i32 }
          cleanup
  %153 = load ptr, ptr %10, align 8, !tbaa !274
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !277
  %159 = icmp ult i64 %158, 16
  call void @llvm.assume(i1 %159)
  br label %161

160:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %153) #38
  br label %161

161:                                              ; preds = %160, %156, %148
  %162 = phi { ptr, i32 } [ %149, %148 ], [ %152, %156 ], [ %152, %160 ]
  %163 = phi i1 [ true, %148 ], [ %151, %156 ], [ %151, %160 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #39
  br i1 %163, label %164, label %188

164:                                              ; preds = %161
  call void @__cxa_free_exception(ptr %140) #39
  br label %188

165:                                              ; preds = %136, %165
  %166 = phi i64 [ %137, %136 ], [ %169, %165 ]
  %167 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %166
  %168 = trunc i64 %166 to i32
  store i32 %168, ptr %167, align 4, !tbaa !456
  %169 = add nsw i64 %166, 1
  %170 = trunc i64 %169 to i32
  %171 = icmp eq i32 %138, %170
  br i1 %171, label %172, label %165, !llvm.loop !467

172:                                              ; preds = %165
  %173 = trunc i64 %169 to i32
  br label %174

174:                                              ; preds = %172, %132
  %175 = phi i32 [ %44, %132 ], [ %173, %172 ]
  %176 = shl i64 %54, 32
  %177 = ashr exact i64 %176, 32
  %178 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %177
  store i32 %57, ptr %178, align 4, !tbaa !456
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39
  %179 = add nuw nsw i64 %42, 1
  %180 = load ptr, ptr %23, align 8, !tbaa !315
  %181 = load ptr, ptr %4, align 8, !tbaa !317
  %182 = ptrtoint ptr %180 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = shl i64 %184, 29
  %186 = ashr i64 %185, 32
  %187 = icmp slt i64 %179, %186
  br i1 %187, label %41, label %38, !llvm.loop !468

188:                                              ; preds = %161, %164, %128, %131, %88, %91, %113
  %189 = phi { ptr, i32 } [ %89, %91 ], [ %89, %88 ], [ %129, %131 ], [ %129, %128 ], [ %162, %164 ], [ %162, %161 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #39
  br label %215

190:                                              ; preds = %38
  %191 = zext nneg i32 %39 to i64
  %192 = shl nuw nsw i64 %191, 2
  %193 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %192) #37
          to label %194 unwind label %198

194:                                              ; preds = %190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %193, ptr nonnull align 16 %5, i64 %192, i1 false)
  %195 = trunc i32 %39 to i16
  %196 = getelementptr inbounds %class.cComponent, ptr %1, i64 0, i32 2
  store i16 %195, ptr %196, align 8, !tbaa !469
  %197 = getelementptr inbounds %class.cComponent, ptr %1, i64 0, i32 3
  store ptr %193, ptr %197, align 8, !tbaa !472
  br label %200

198:                                              ; preds = %190
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %215

200:                                              ; preds = %194, %38
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #39
  br label %201

201:                                              ; preds = %22, %200
  %202 = load ptr, ptr %4, align 8, !tbaa !317
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204, !prof !466

204:                                              ; preds = %201
  call void @_ZdlPv(ptr noundef %202) #38
  br label %205

205:                                              ; preds = %201, %204
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  %206 = load ptr, ptr %3, align 8, !tbaa !274
  %207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %213, !prof !473

209:                                              ; preds = %205
  %210 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %211 = load i64, ptr %210, align 8, !tbaa !277
  %212 = icmp ult i64 %211, 16
  call void @llvm.assume(i1 %212)
  br label %214

213:                                              ; preds = %205
  call void @_ZdlPv(ptr noundef %206) #38
  br label %214

214:                                              ; preds = %209, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  ret void

215:                                              ; preds = %73, %188, %198
  %216 = phi { ptr, i32 } [ %199, %198 ], [ %189, %188 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #39
  %217 = load ptr, ptr %4, align 8, !tbaa !317
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  call void @_ZdlPv(ptr noundef %217) #38
  br label %220

220:                                              ; preds = %219, %215, %27
  %221 = phi { ptr, i32 } [ %28, %27 ], [ %216, %215 ], [ %216, %219 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  %222 = load ptr, ptr %3, align 8, !tbaa !274
  %223 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !277
  %228 = icmp ult i64 %227, 16
  call void @llvm.assume(i1 %228)
  br label %230

229:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %222) #38
  br label %230

230:                                              ; preds = %225, %229
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  resume { ptr, i32 } %221

231:                                              ; preds = %72
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN9EnvirBase20registerOutputVectorEPKcS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 2 !prof !474 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !282
  %6 = load ptr, ptr %5, align 8, !tbaa !228
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2), !prof !475
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase22deregisterOutputVectorEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !474 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !282
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1), !prof !476
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase18setVectorAttributeEPvPKcS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 !prof !295 {
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !282
  %7 = load ptr, ptr %6, align 8, !tbaa !228
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase20recordInOutputVectorEPv7SimTimed(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr nocapture noundef readonly %2, double noundef %3) unnamed_addr #20 align 2 !prof !477 {
  %5 = alloca %class.SimTime, align 8
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !282
  %8 = load i64, ptr %2, align 8, !tbaa !257
  store i64 %8, ptr %5, align 8, !tbaa !257
  %9 = load ptr, ptr %7, align 8, !tbaa !228
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef nonnull %5, double noundef %3), !prof !478
  ret i1 %12
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9EnvirBase12recordScalarEP10cComponentPKcdP14opp_string_map(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) unnamed_addr #12 align 2 !prof !479 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !284
  %8 = load ptr, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4), !prof !480
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 !prof !295 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !284
  %8 = load ptr, ptr %7, align 8, !tbaa !228
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9EnvirBase20getStreamForSnapshotEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #3 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase24releaseStreamForSnapshotEPSo(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !295 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = load ptr, ptr %4, align 8, !tbaa !228
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_ZN9EnvirBase15getUniqueNumberEv(ptr nocapture noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #25 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 33
  %3 = load i64, ptr %2, align 8, !tbaa !454
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !454
  ret i64 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase12displayErrorERSt9exception(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !295 {
  %3 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZTI10cException, i64 0) #39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !228
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(124) %3)
  br i1 %9, label %19, label %10

10:                                               ; preds = %5, %2
  %11 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %12 = load ptr, ptr %1, align 8, !tbaa !228
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #39
  %16 = load ptr, ptr %11, align 8, !tbaa !228
  %17 = getelementptr inbounds ptr, ptr %16, i64 35
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) %18(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull @.str.176, ptr noundef %15)
  br label %53

19:                                               ; preds = %5
  %20 = load ptr, ptr %3, align 8, !tbaa !228
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %24 = icmp eq i32 %23, -1
  %25 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %26 = load ptr, ptr %3, align 8, !tbaa !228
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %30 = load ptr, ptr %3, align 8, !tbaa !228
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %34 = load ptr, ptr %3, align 8, !tbaa !228
  br i1 %24, label %35, label %42

35:                                               ; preds = %19
  %36 = getelementptr inbounds ptr, ptr %34, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(124) %3) #39
  %39 = load ptr, ptr %25, align 8, !tbaa !228
  %40 = getelementptr inbounds ptr, ptr %39, i64 35
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) %41(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.177, ptr noundef %29, ptr noundef %33, ptr noundef %38)
  br label %53

42:                                               ; preds = %19
  %43 = getelementptr inbounds ptr, ptr %34, i64 10
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %46 = load ptr, ptr %3, align 8, !tbaa !228
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(124) %3) #39
  %50 = load ptr, ptr %25, align 8, !tbaa !228
  %51 = getelementptr inbounds ptr, ptr %50, i64 35
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.178, ptr noundef %29, ptr noundef %33, i32 noundef %45, ptr noundef %49)
  br label %53

53:                                               ; preds = %35, %42, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase14displayMessageERSt9exception(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !221 {
  %3 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZTI10cException, i64 0) #39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !269

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !228
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(124) %3), !prof !481
  br i1 %9, label %19, label %10, !prof !269

10:                                               ; preds = %5, %2
  %11 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %12 = load ptr, ptr %1, align 8, !tbaa !228
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #39, !prof !482
  %16 = load ptr, ptr %11, align 8, !tbaa !228
  %17 = getelementptr inbounds ptr, ptr %16, i64 35
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) %18(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull @.str.179, ptr noundef %15), !prof !483
  br label %53

19:                                               ; preds = %5
  %20 = load ptr, ptr %3, align 8, !tbaa !228
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %24 = icmp eq i32 %23, -1
  %25 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !224
  %26 = load ptr, ptr %3, align 8, !tbaa !228
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %30 = load ptr, ptr %3, align 8, !tbaa !228
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %34 = load ptr, ptr %3, align 8, !tbaa !228
  br i1 %24, label %35, label %42

35:                                               ; preds = %19
  %36 = getelementptr inbounds ptr, ptr %34, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(124) %3) #39
  %39 = load ptr, ptr %25, align 8, !tbaa !228
  %40 = getelementptr inbounds ptr, ptr %39, i64 35
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) %41(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.180, ptr noundef %29, ptr noundef %33, ptr noundef %38)
  br label %53

42:                                               ; preds = %19
  %43 = getelementptr inbounds ptr, ptr %34, i64 10
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(124) %3)
  %46 = load ptr, ptr %3, align 8, !tbaa !228
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(124) %3) #39
  %50 = load ptr, ptr %25, align 8, !tbaa !228
  %51 = getelementptr inbounds ptr, ptr %50, i64 35
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.181, ptr noundef %29, ptr noundef %33, i32 noundef %45, ptr noundef %49)
  br label %53

53:                                               ; preds = %35, %42, %10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase4idleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !295 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase11getArgCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #26 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = load i32, ptr %3, align 8, !tbaa !484
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK9EnvirBase12getArgVectorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #26 align 2 !prof !295 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = getelementptr inbounds %class.ArgList, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !499
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9EnvirBase10startClockEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(600) %0) local_unnamed_addr #17 align 2 !prof !221 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN9EnvirBase9stopClockEv(ptr nocapture noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #27 align 2 !prof !221 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 35
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load i64, ptr %3, align 8, !tbaa !500
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !501
  %7 = icmp sgt i64 %6, 1000000
  %8 = add nsw i64 %6, -1000000
  %9 = zext i1 %7 to i64
  %10 = select i1 %7, i64 %8, i64 %6, !prof !269
  %11 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %12 = load i64, ptr %11, align 8, !tbaa !500
  %13 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !501
  %15 = sub nsw i64 %10, %14
  %16 = icmp slt i64 %15, 0
  %17 = add nsw i64 %15, 1000000
  %18 = ashr i64 %15, 63
  %19 = sub i64 %4, %12
  %20 = add i64 %19, %9
  %21 = add nsw i64 %20, %18
  %22 = select i1 %16, i64 %17, i64 %15, !prof !269
  store i64 %21, ptr %3, align 8, !tbaa.struct !502
  store i64 %22, ptr %5, align 8, !tbaa.struct !504
  %23 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %24 = getelementptr inbounds %class.cSimulation, ptr %23, i64 0, i32 12
  %25 = load i64, ptr %24, align 8, !tbaa !257, !noalias !505
  %26 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 38
  store i64 %25, ptr %26, align 8, !tbaa !257
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZN9EnvirBase12totalElapsedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) local_unnamed_addr #22 align 2 !prof !508 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %3 = load i64, ptr %2, align 8, !tbaa !500
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !501
  %6 = sub nsw i64 0, %5
  %7 = icmp sgt i64 %5, 0
  %8 = sub i64 1000000, %5
  %9 = ashr i64 %6, 63
  %10 = sub i64 %9, %3
  %11 = select i1 %7, i64 %8, i64 %6, !prof !509
  %12 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  %13 = load i64, ptr %12, align 8, !tbaa !500
  %14 = add nsw i64 %10, %13
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !501
  %17 = add nsw i64 %11, %16
  %18 = icmp sgt i64 %17, 1000000
  %19 = add nsw i64 %17, -1000000
  %20 = zext i1 %18 to i64
  %21 = add nsw i64 %14, %20
  %22 = select i1 %18, i64 %19, i64 %17, !prof !509
  %23 = insertvalue { i64, i64 } poison, i64 %21, 0
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1
  ret { i64, i64 } %24
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9EnvirBase15checkTimeLimitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) local_unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %2 = alloca %class.SimTime, align 8
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #39
  %4 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !456
  %5 = icmp eq i32 %4, 65535
  br i1 %5, label %6, label %7, !prof !457

6:                                                ; preds = %1
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00)
  br label %7

7:                                                ; preds = %6, %1
  %8 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !458
  %9 = fmul double %8, 0.000000e+00
  %10 = call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x43DFFFFFFFFFEDC8
  br i1 %11, label %12, label %13, !prof !457

12:                                               ; preds = %7
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %9)
  br label %13

13:                                               ; preds = %7, %12
  %14 = fptosi double %9 to i64
  store i64 %14, ptr %2, align 8, !tbaa !257
  %15 = load i64, ptr %3, align 8, !tbaa !257
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %27, label %17, !prof !510

17:                                               ; preds = %13
  %18 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %19 = getelementptr inbounds %class.cSimulation, ptr %18, i64 0, i32 12
  %20 = load i64, ptr %19, align 8, !tbaa !257, !noalias !511
  %21 = icmp slt i64 %20, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39
  br i1 %21, label %28, label %22, !prof !514

22:                                               ; preds = %17
  %23 = call ptr @__cxa_allocate_exception(i64 128) #39
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %23, i32 noundef 36)
          to label %24 unwind label %25, !prof !223

24:                                               ; preds = %22
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %55

27:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #39
  br label %28

28:                                               ; preds = %27, %17
  %29 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 23
  %30 = load i64, ptr %29, align 8, !tbaa !442
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %54, label %32, !prof !515

32:                                               ; preds = %28
  %33 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !516, !range !322, !noundef !323
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %38 = getelementptr inbounds %class.cSimulation, ptr %37, i64 0, i32 13
  %39 = load i64, ptr %38, align 8, !tbaa !517
  %40 = and i64 %39, 255
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %44 = load i64, ptr %43, align 8, !tbaa !520
  %45 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  %46 = load i64, ptr %45, align 8, !tbaa !521
  %47 = sub i64 %46, %44
  %48 = icmp slt i64 %47, %30
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = call ptr @__cxa_allocate_exception(i64 128) #39
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %50, i32 noundef 35)
          to label %51 unwind label %52

51:                                               ; preds = %49
  call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #41
  unreachable

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %55

54:                                               ; preds = %42, %36, %28
  ret void

55:                                               ; preds = %52, %25
  %56 = phi ptr [ %50, %52 ], [ %23, %25 ]
  %57 = phi { ptr, i32 } [ %53, %52 ], [ %26, %25 ]
  call void @__cxa_free_exception(ptr %56) #39
  resume { ptr, i32 } %57
}

declare void @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !228
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !223

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !277
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #38
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !274
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !223

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !277
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #38
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !269

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !277
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #38
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #39
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase31stoppedWithTerminationExceptionER21cTerminationException(ptr nocapture noundef nonnull readnone align 8 dereferenceable(600) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(124) %1) local_unnamed_addr #16 align 2 !prof !221 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase20stoppedWithExceptionERSt9exception(ptr nocapture noundef nonnull readnone align 8 dereferenceable(600) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1) local_unnamed_addr #16 align 2 !prof !295 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9EnvirBase16checkFingerprintEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = alloca %class.StringTokenizer, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !255
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7, !prof !223

7:                                                ; preds = %1
  %8 = load i8, ptr %5, align 1, !tbaa !326
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %12 = getelementptr inbounds %class.cSimulation, ptr %11, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !522
  %14 = icmp eq ptr %13, null
  br i1 %14, label %65, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #39
  call void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %5, ptr noundef null)
  br label %16

16:                                               ; preds = %38, %15
  %17 = phi i32 [ 0, %15 ], [ %39, %38 ]
  %18 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %19 unwind label %32

19:                                               ; preds = %16
  br i1 %18, label %20, label %40

20:                                               ; preds = %19
  %21 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %22 unwind label %34

22:                                               ; preds = %20
  %23 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %24 = getelementptr inbounds %class.cSimulation, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !522
  %26 = invoke noundef zeroext i1 @_ZNK7cHasher6equalsEPKc(ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef %21)
          to label %27 unwind label %34

27:                                               ; preds = %22
  br i1 %26, label %28, label %36

28:                                               ; preds = %27
  %29 = load ptr, ptr %0, align 8, !tbaa !228
  %30 = getelementptr inbounds ptr, ptr %29, i64 35
  %31 = load ptr, ptr %30, align 8
  invoke void (ptr, ptr, ...) %31(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull @.str.182, ptr noundef %21)
          to label %38 unwind label %34

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %80

34:                                               ; preds = %28, %22, %20
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %80

36:                                               ; preds = %27
  %37 = add nsw i32 %17, 1
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i32 [ %37, %36 ], [ %17, %28 ]
  br i1 %26, label %64, label %16, !llvm.loop !523

40:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %41 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !224
  %42 = getelementptr inbounds %class.cSimulation, ptr %41, i64 0, i32 16
  %43 = load ptr, ptr %42, align 8, !tbaa !522
  invoke void @_ZNK7cHasher3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %43)
          to label %44 unwind label %66

44:                                               ; preds = %40
  %45 = load ptr, ptr %3, align 8, !tbaa !274
  %46 = icmp sgt i32 %17, 1
  %47 = select i1 %46, ptr @.str.184, ptr @.str.96
  %48 = load ptr, ptr %4, align 8, !tbaa !255
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.96, ptr %48
  %51 = load ptr, ptr %0, align 8, !tbaa !228
  %52 = getelementptr inbounds ptr, ptr %51, i64 35
  %53 = load ptr, ptr %52, align 8
  invoke void (ptr, ptr, ...) %53(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull @.str.183, ptr noundef %45, ptr noundef nonnull %47, ptr noundef nonnull %50)
          to label %54 unwind label %68

54:                                               ; preds = %44
  %55 = load ptr, ptr %3, align 8, !tbaa !274
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !277
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  br label %63

62:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #38
  br label %63

63:                                               ; preds = %58, %62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  br label %64

64:                                               ; preds = %38, %63
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #39
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #39
  br label %65

65:                                               ; preds = %1, %7, %10, %64
  ret void

66:                                               ; preds = %40
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %78

68:                                               ; preds = %44
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %3, align 8, !tbaa !274
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !277
  %76 = icmp ult i64 %75, 16
  call void @llvm.assume(i1 %76)
  br label %78

77:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #38
  br label %78

78:                                               ; preds = %77, %73, %66
  %79 = phi { ptr, i32 } [ %67, %66 ], [ %69, %73 ], [ %69, %77 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  br label %80

80:                                               ; preds = %78, %34, %32
  %81 = phi { ptr, i32 } [ %35, %34 ], [ %79, %78 ], [ %33, %32 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #39
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #39
  resume { ptr, i32 } %81
}

declare noundef zeroext i1 @_ZNK7cHasher6equalsEPKc(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #0

declare void @_ZNK7cHasher3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9EnvirBase14resolveNetworkEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !255
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.96, ptr %9, !prof !269
  call void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %11)
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !277
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15, !prof !223

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !tbaa !274
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.185) #42
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  br i1 %20, label %21, label %95, !prof !269

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %22, ptr %5, align 8, !tbaa !329, !alias.scope !524
  %23 = load ptr, ptr %3, align 8, !tbaa !274, !noalias !524
  %24 = getelementptr inbounds i8, ptr %23, i64 %13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %23, ptr noundef %24)
          to label %25 unwind label %72

25:                                               ; preds = %21
  %26 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.45)
          to label %36 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %5, align 8, !tbaa !274, !alias.scope !524
  %30 = icmp eq ptr %29, %22
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !277, !alias.scope !524
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %93

35:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #38
  br label %93

36:                                               ; preds = %25
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1)
          to label %38 unwind label %74

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %39, ptr %4, align 8, !tbaa !329, !alias.scope !527
  %40 = load ptr, ptr %37, align 8, !tbaa !274
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 2
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !277
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  %47 = add nuw nsw i64 %45, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(1) %41, i64 %47, i1 false)
  br label %50

48:                                               ; preds = %38
  store ptr %40, ptr %4, align 8, !tbaa !274, !alias.scope !527
  %49 = load i64, ptr %41, align 8, !tbaa !326
  store i64 %49, ptr %39, align 8, !tbaa !326, !alias.scope !527
  br label %50

50:                                               ; preds = %43, %48
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !277
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !277, !alias.scope !527
  store ptr %41, ptr %37, align 8, !tbaa !274
  store i64 0, ptr %51, align 8, !tbaa !277
  store i8 0, ptr %41, align 8, !tbaa !326
  %54 = load ptr, ptr %4, align 8, !tbaa !274
  %55 = invoke noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef %54)
          to label %56 unwind label %76

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !tbaa !274
  %58 = icmp eq ptr %57, %39
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, ptr %53, align 8, !tbaa !277
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  br label %63

62:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %57) #38
  br label %63

63:                                               ; preds = %59, %62
  %64 = load ptr, ptr %5, align 8, !tbaa !274
  %65 = icmp eq ptr %64, %22
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !277
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #38
  br label %71

71:                                               ; preds = %66, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %95

72:                                               ; preds = %21
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %93

74:                                               ; preds = %36
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %84

76:                                               ; preds = %50
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load ptr, ptr %4, align 8, !tbaa !274
  %79 = icmp eq ptr %78, %39
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, ptr %53, align 8, !tbaa !277
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %78) #38
  br label %84

84:                                               ; preds = %83, %80, %74
  %85 = phi { ptr, i32 } [ %75, %74 ], [ %77, %80 ], [ %77, %83 ]
  %86 = load ptr, ptr %5, align 8, !tbaa !274
  %87 = icmp eq ptr %86, %22
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !277
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  br label %93

92:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %86) #38
  br label %93

93:                                               ; preds = %92, %88, %72, %35, %31
  %94 = phi { ptr, i32 } [ %73, %72 ], [ %28, %35 ], [ %28, %31 ], [ %85, %88 ], [ %85, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  br label %201

95:                                               ; preds = %71, %19
  %96 = phi ptr [ %55, %71 ], [ null, %19 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102, !prof !223

98:                                               ; preds = %95
  %99 = invoke noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef %1)
          to label %102 unwind label %100, !prof !223

100:                                              ; preds = %187, %174, %98
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %201

102:                                              ; preds = %98, %95
  %103 = phi ptr [ %96, %95 ], [ %99, %98 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %174, !prof !269

105:                                              ; preds = %102
  %106 = call ptr @__cxa_allocate_exception(i64 128) #39
  br i1 %20, label %107, label %171

107:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %108, ptr %7, align 8, !tbaa !329, !alias.scope !530
  %109 = load ptr, ptr %3, align 8, !tbaa !274, !noalias !530
  %110 = load i64, ptr %12, align 8, !tbaa !277, !noalias !530
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %109, ptr noundef %111)
          to label %112 unwind label %144

112:                                              ; preds = %107
  %113 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.45)
          to label %123 unwind label %114

114:                                              ; preds = %112
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load ptr, ptr %7, align 8, !tbaa !274, !alias.scope !530
  %117 = icmp eq ptr %116, %108
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !277, !alias.scope !530
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %167

122:                                              ; preds = %114
  call void @_ZdlPv(ptr noundef %116) #38
  br label %167

123:                                              ; preds = %112
  %124 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %1)
          to label %125 unwind label %146

125:                                              ; preds = %123
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %126, ptr %6, align 8, !tbaa !329, !alias.scope !533
  %127 = load ptr, ptr %124, align 8, !tbaa !274
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %124, i64 0, i32 2
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %124, i64 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !277
  %133 = icmp ult i64 %132, 16
  call void @llvm.assume(i1 %133)
  %134 = add nuw nsw i64 %132, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %126, ptr noundef nonnull align 8 dereferenceable(1) %128, i64 %134, i1 false)
  br label %137

135:                                              ; preds = %125
  store ptr %127, ptr %6, align 8, !tbaa !274, !alias.scope !533
  %136 = load i64, ptr %128, align 8, !tbaa !326
  store i64 %136, ptr %126, align 8, !tbaa !326, !alias.scope !533
  br label %137

137:                                              ; preds = %130, %135
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %124, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !277
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %139, ptr %140, align 8, !tbaa !277, !alias.scope !533
  store ptr %128, ptr %124, align 8, !tbaa !274
  store i64 0, ptr %138, align 8, !tbaa !277
  store i8 0, ptr %128, align 8, !tbaa !326
  %141 = load ptr, ptr %6, align 8, !tbaa !274
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %106, ptr noundef nonnull @.str.186, ptr noundef %1, ptr noundef %141)
          to label %142 unwind label %148

142:                                              ; preds = %137
  invoke void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %143 unwind label %148

143:                                              ; preds = %142
  unreachable

144:                                              ; preds = %107
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %167

146:                                              ; preds = %123
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %157

148:                                              ; preds = %142, %137
  %149 = phi i1 [ false, %142 ], [ true, %137 ]
  %150 = landingpad { ptr, i32 }
          cleanup
  %151 = load ptr, ptr %6, align 8, !tbaa !274
  %152 = icmp eq ptr %151, %126
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i64, ptr %140, align 8, !tbaa !277
  %155 = icmp ult i64 %154, 16
  call void @llvm.assume(i1 %155)
  br label %157

156:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %151) #38
  br label %157

157:                                              ; preds = %156, %153, %146
  %158 = phi { ptr, i32 } [ %147, %146 ], [ %150, %153 ], [ %150, %156 ]
  %159 = phi i1 [ true, %146 ], [ %149, %153 ], [ %149, %156 ]
  %160 = load ptr, ptr %7, align 8, !tbaa !274
  %161 = icmp eq ptr %160, %108
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !277
  %165 = icmp ult i64 %164, 16
  call void @llvm.assume(i1 %165)
  br label %167

166:                                              ; preds = %157
  call void @_ZdlPv(ptr noundef %160) #38
  br label %167

167:                                              ; preds = %166, %162, %144, %122, %118
  %168 = phi { ptr, i32 } [ %145, %144 ], [ %115, %122 ], [ %115, %118 ], [ %158, %162 ], [ %158, %166 ]
  %169 = phi i1 [ true, %144 ], [ true, %122 ], [ true, %118 ], [ %159, %162 ], [ %159, %166 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39
  br i1 %169, label %170, label %201

170:                                              ; preds = %167
  call void @__cxa_free_exception(ptr %106) #39
  br label %201

171:                                              ; preds = %105
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %106, ptr noundef nonnull @.str.187, ptr noundef %1)
          to label %187 unwind label %172

172:                                              ; preds = %171
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %106) #39
  br label %201

174:                                              ; preds = %102
  %175 = load ptr, ptr %103, align 8, !tbaa !228
  %176 = getelementptr inbounds ptr, ptr %175, i64 34
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef zeroext i1 %177(ptr noundef nonnull align 8 dereferenceable(168) %103)
          to label %179 unwind label %100, !prof !536

179:                                              ; preds = %174
  br i1 %178, label %192, label %180, !prof !223

180:                                              ; preds = %179
  %181 = call ptr @__cxa_allocate_exception(i64 128) #39
  %182 = load ptr, ptr %103, align 8, !tbaa !228
  %183 = getelementptr inbounds ptr, ptr %182, i64 7
  %184 = load ptr, ptr %183, align 8
  %185 = invoke noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(168) %103)
          to label %186 unwind label %190

186:                                              ; preds = %180
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %181, ptr noundef nonnull @.str.188, ptr noundef %185)
          to label %187 unwind label %190

187:                                              ; preds = %186, %171
  %188 = phi ptr [ %106, %171 ], [ %181, %186 ]
  invoke void @__cxa_throw(ptr nonnull %188, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #41
          to label %189 unwind label %100

189:                                              ; preds = %187
  unreachable

190:                                              ; preds = %186, %180
  %191 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %181) #39
  br label %201

192:                                              ; preds = %179
  %193 = load ptr, ptr %3, align 8, !tbaa !274
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %195 = icmp eq ptr %193, %194
  br i1 %195, label %196, label %199, !prof !223

196:                                              ; preds = %192
  %197 = load i64, ptr %12, align 8, !tbaa !277
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %193) #38
  br label %200

200:                                              ; preds = %196, %199
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  ret ptr %103

201:                                              ; preds = %167, %170, %190, %172, %100, %93
  %202 = phi { ptr, i32 } [ %101, %100 ], [ %191, %190 ], [ %168, %170 ], [ %168, %167 ], [ %173, %172 ], [ %94, %93 ]
  %203 = load ptr, ptr %3, align 8, !tbaa !274
  %204 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %205 = icmp eq ptr %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i64, ptr %12, align 8, !tbaa !277
  %208 = icmp ult i64 %207, 16
  call void @llvm.assume(i1 %208)
  br label %210

209:                                              ; preds = %201
  call void @_ZdlPv(ptr noundef %203) #38
  br label %210

210:                                              ; preds = %206, %209
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  resume { ptr, i32 } %202
}

declare void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef) local_unnamed_addr #0

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN6cEnvir9printfmsgEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

declare noundef i32 @_ZN6cEnvir6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

declare noundef zeroext i1 @_ZN6cEnvir8askYesNoEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !537 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !538

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !539
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !540
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !541, !llvm.loop !542

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !543 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !274
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 48
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %12, !prof !544

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 40
  %10 = load i64, ptr %9, align 8, !tbaa !277
  %11 = icmp ult i64 %10, 16
  tail call void @llvm.assume(i1 %11)
  br label %13

12:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %5) #38
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !274
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21, !prof !545

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %19 = load i64, ptr %18, align 8, !tbaa !277
  %20 = icmp ult i64 %19, 16
  tail call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %14) #38
  br label %22

22:                                               ; preds = %17, %21
  tail call void @_ZdlPv(ptr noundef %1) #38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !424 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !546

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !539
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !540
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node.51", ptr %5, i64 0, i32 1, i32 0, i64 8
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #39
  tail call void @_ZdlPv(ptr noundef %5) #38
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %4, !prof !365, !llvm.loop !547

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !295 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #39
  tail call void @_ZdlPv(ptr noundef %0) #38
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #37
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #38
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !295 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !548
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !295 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !277
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.255)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !329, !alias.scope !551
  %10 = load ptr, ptr %7, align 8, !tbaa !274
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !277
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !274, !alias.scope !551
  %19 = load i64, ptr %11, align 8, !tbaa !326
  store i64 %19, ptr %9, align 8, !tbaa !326, !alias.scope !551
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !277
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !277, !alias.scope !551
  store ptr %11, ptr %7, align 8, !tbaa !274
  store i64 0, ptr %21, align 8, !tbaa !277
  store i8 0, ptr %11, align 8, !tbaa !326
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !277, !noalias !554
  %27 = load i64, ptr %23, align 8, !tbaa !277, !noalias !554
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #41
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !274, !noalias !554
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !329, !alias.scope !554
  %37 = load ptr, ptr %34, align 8, !tbaa !274
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !277
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !274, !alias.scope !554
  %46 = load i64, ptr %38, align 8, !tbaa !326
  store i64 %46, ptr %36, align 8, !tbaa !326, !alias.scope !554
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !277
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !277, !alias.scope !554
  store ptr %38, ptr %34, align 8, !tbaa !274
  store i64 0, ptr %48, align 8, !tbaa !277
  store i8 0, ptr %38, align 8, !tbaa !326
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #39
  %52 = load ptr, ptr %3, align 8, !tbaa !274
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !277
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #38
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !274
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !277
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #38
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !274
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !277
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #38
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !274
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !277
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #38
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !274
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !277
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #38
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !557, !range !322, !noundef !323
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !295 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !295 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !274
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !295 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !558
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #28

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !559 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4, !prof !560

4:                                                ; preds = %2, %19
  %5 = phi ptr [ %9, %19 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !539
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !540
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !274
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %5, i64 0, i32 1, i32 0, i64 16
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18, !prof !561

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %5, i64 0, i32 1, i32 0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !277
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %4
  tail call void @_ZdlPv(ptr noundef %11) #38
  br label %19

19:                                               ; preds = %14, %18
  tail call void @_ZdlPv(ptr noundef %5) #38
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %4, !prof !358, !llvm.loop !562

21:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #29

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #29

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #30

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #31

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #12 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !563 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !503
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !564

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !274
  %11 = load i64, ptr %4, align 8, !tbaa !503
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !326
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !274
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !565

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !326
  store i8 %16, ptr %14, align 1, !tbaa !326
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !566
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !503
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !277
  %21 = load ptr, ptr %0, align 8, !tbaa !274
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !567 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !503
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !568

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !274
  %11 = load i64, ptr %4, align 8, !tbaa !503
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !326
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !274
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !569

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !326
  store i8 %16, ptr %14, align 1, !tbaa !326
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !570
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !503
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !277
  %21 = load ptr, ptr %0, align 8, !tbaa !274
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !571 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !572

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !277
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !277
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !573

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !274
  %18 = load ptr, ptr %1, align 8, !tbaa !274
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #39, !prof !574
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !575

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !573
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !571 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %41, label %6, !prof !572

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !277
  br label %9

9:                                                ; preds = %6, %36
  %10 = phi ptr [ %1, %6 ], [ %39, %36 ]
  %11 = phi ptr [ %2, %6 ], [ %37, %36 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %10, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !277
  %14 = tail call i64 @llvm.umin.i64(i64 %8, i64 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16, !prof !573

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !274
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %17, i64 noundef %14) #39, !prof !574
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ %20, %16 ], [ 0, %9 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !575

24:                                               ; preds = %21
  %25 = sub i64 %13, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32, !prof !573

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %11, %34 ], [ %10, %32 ]
  %38 = phi ptr [ %35, %34 ], [ %33, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !224
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %9, !prof !575, !llvm.loop !576

41:                                               ; preds = %36, %4
  %42 = phi ptr [ %2, %4 ], [ %37, %36 ]
  ret ptr %42
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 !prof !508 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  %4 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %5 = extractvalue { ptr, ptr } %4, 0
  %6 = extractvalue { ptr, ptr } %4, 1
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !509

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39
  store ptr %0, ptr %3, align 8, !tbaa !224
  %9 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %5, %2 ]
  %12 = phi i8 [ 1, %8 ], [ 0, %2 ]
  %13 = insertvalue { ptr, i8 } poison, ptr %11, 0
  %14 = insertvalue { ptr, i8 } %13, i8 %12, 1
  ret { ptr, i8 } %14
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !577 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !224
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7, !prof !223

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !277
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %11, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !277
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %9)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !274
  %20 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %19, i64 noundef %14) #39
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ %20, %16 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %9, %13
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %34 = select i1 %31, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !224
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %10, !prof !223, !llvm.loop !578

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %11, %29 ]
  %39 = phi i1 [ true, %2 ], [ %31, %29 ]
  %40 = phi ptr [ %5, %2 ], [ %35, %29 ]
  br i1 %39, label %41, label %47, !prof !358

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !340
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %73, label %45, !prof !358

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %38) #42
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi ptr [ %46, %45 ], [ %38, %37 ]
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %48, i64 0, i32 1, i32 0, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !277
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !277
  %53 = tail call i64 @llvm.umin.i64(i64 %52, i64 %50)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %1, align 8, !tbaa !274
  %58 = load ptr, ptr %56, align 8, !tbaa !274
  %59 = tail call i32 @memcmp(ptr noundef %58, ptr noundef %57, i64 noundef %53) #39
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %59, %55 ], [ 0, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = sub i64 %50, %52
  %65 = tail call i64 @llvm.smax.i64(i64 %64, i64 -2147483648)
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 2147483647)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %61, %60 ], [ %67, %63 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, ptr %40, ptr %48
  %72 = select i1 %70, ptr %38, ptr null
  br label %73

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %40, %41 ], [ %71, %68 ]
  %75 = phi ptr [ %38, %41 ], [ %72, %68 ]
  %76 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %75, 1
  ret { ptr, ptr } %77
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !508 {
  %6 = icmp ne ptr %1, null
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = icmp eq ptr %7, %2
  %9 = select i1 %6, i1 true, i1 %8, !prof !509
  br i1 %9, label %33, label %10, !prof !365

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !277
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %2, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !277
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %12)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !274
  %20 = load ptr, ptr %3, align 8, !tbaa !274
  %21 = tail call i32 @memcmp(ptr noundef %20, ptr noundef %19, i64 noundef %15) #39
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i32 [ %21, %17 ], [ 0, %10 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = sub i64 %12, %14
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 -2147483648)
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 2147483647)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i32 [ %23, %22 ], [ %29, %25 ]
  %32 = icmp slt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi i1 [ true, %5 ], [ %32, %30 ]
  %35 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %35, i64 0, i32 1
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %35, i64 0, i32 1, i32 0, i64 16
  store ptr %37, ptr %36, align 8, !tbaa !329
  %38 = load ptr, ptr %3, align 8, !tbaa !274
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %46, !prof !509

41:                                               ; preds = %33
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !277
  %44 = icmp ult i64 %43, 16
  tail call void @llvm.assume(i1 %44)
  %45 = add nuw nsw i64 %43, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(1) %39, i64 %45, i1 false)
  br label %48

46:                                               ; preds = %33
  store ptr %38, ptr %36, align 8, !tbaa !274
  %47 = load i64, ptr %39, align 8, !tbaa !326
  store i64 %47, ptr %37, align 8, !tbaa !326
  br label %48

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !277
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %35, i64 0, i32 1, i32 0, i64 8
  store i64 %50, ptr %51, align 8, !tbaa !277
  store ptr %39, ptr %3, align 8, !tbaa !274
  store i64 0, ptr %49, align 8, !tbaa !277
  store i8 0, ptr %39, align 8, !tbaa !326
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %34, ptr noundef nonnull %35, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7) #39
  %52 = getelementptr inbounds i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !342
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8, !tbaa !342
  ret ptr %35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #29

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_envirbase.cc() #32 section ".text.startup" !prof !221 !PGOFuncName !579 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_91E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_91Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_91E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_92E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_92Ev)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_92E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_93E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_93Ev)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_93E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_94E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_94Ev)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_94E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_95E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_95Ev)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_95E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_96E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_96Ev)
  %7 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_96E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_97E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_97Ev)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_97E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_98E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_98Ev)
  %9 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_98E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_99E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_99Ev)
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_99E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_100E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_100Ev)
  %11 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_100E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_101E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_101Ev)
  %12 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_101E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_102E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_102Ev)
  %13 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_102E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_103E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_103Ev)
  %14 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_103E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_105E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_105Ev)
  %15 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_105E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_106E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_106Ev)
  %16 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_106E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_107E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_107Ev)
  %17 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_107E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_108E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_108Ev)
  %18 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_108E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_109E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_109Ev)
  %19 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_109E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_110E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_110Ev)
  %20 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_110E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_111E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_111Ev)
  %21 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_111E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_112E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_112Ev)
  %22 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_112E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_113E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_113Ev)
  %23 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_113E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_114E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_114Ev)
  %24 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_114E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_115E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_115Ev)
  %25 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_115E, ptr nonnull @__dso_handle) #39
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_116E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_116Ev)
  %26 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_116E, ptr nonnull @__dso_handle) #39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #35

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #36

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { builtin nounwind }
attributes #39 = { nounwind }
attributes #40 = { noreturn nounwind }
attributes #41 = { noreturn }
attributes #42 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!220}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!45 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_Znwm, i64 1}
!46 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!47 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!48 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_Znwm, i64 1}
!49 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!50 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!51 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_Znwm, i64 1}
!52 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!53 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!54 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_Znwm, i64 1}
!55 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!56 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!57 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_Znwm, i64 1}
!58 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!59 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!60 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_Znwm, i64 1}
!61 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!62 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!63 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_Znwm, i64 1}
!64 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!65 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!66 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_Znwm, i64 1}
!67 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!68 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!69 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_Znwm, i64 1}
!70 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!71 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!72 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_Znwm, i64 1}
!73 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!74 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!75 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_Znwm, i64 1}
!76 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!77 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!78 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_Znwm, i64 1}
!79 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!80 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!81 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_Znwm, i64 1}
!82 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!83 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!84 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_Znwm, i64 1}
!85 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!86 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!87 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_Znwm, i64 1}
!88 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!89 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!90 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_Znwm, i64 1}
!91 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!92 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!93 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_Znwm, i64 1}
!94 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!95 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!96 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_Znwm, i64 1}
!97 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!98 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!99 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_Znwm, i64 1}
!100 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!101 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!102 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_Znwm, i64 1}
!103 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!104 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!105 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_Znwm, i64 1}
!106 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!107 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!108 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_Znwm, i64 1}
!109 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!110 = !{ptr @_ZN9EnvirBaseC2Ev, ptr @_ZN6cEnvirC2Ev, i64 1}
!111 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 1}
!112 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 1}
!113 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 1}
!114 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZdlPv, i64 2}
!115 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZdaPv, i64 8}
!116 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN6cEnvirD2Ev, i64 1}
!117 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_Znwm, i64 1}
!118 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN7ArgListC1Ev, i64 1}
!119 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN7ArgList5parseEiPPcPKc, i64 1}
!120 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @__dynamic_cast, i64 1}
!121 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN9EnvirBase18simulationRequiredEv, i64 1}
!122 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN9EnvirBase5setupEv, i64 1}
!123 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN9EnvirBase8shutdownEv, i64 1}
!124 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNK7ArgList11optionGivenEc, i64 3}
!125 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZN9EnvirBase11getConfigExEv, i64 1}
!126 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNK7ArgList11optionValueEci, i64 1}
!127 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!128 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Z14setPosixLocalev, i64 1}
!129 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN10cCoroutine4initEjj, i64 1}
!130 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Znwm, i64 1}
!131 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN12cXMLDocCacheC1Ev, i64 1}
!132 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN13cClassFactory9createOneEPKc, i64 4}
!133 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN11cSimulation12setSchedulerEP10cScheduler, i64 1}
!134 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNK7ArgList11optionValueEci, i64 1}
!135 = !{ptr @_ZN9EnvirBase5setupEv, ptr @getenv, i64 1}
!136 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN9EnvirBase9getConfigEv, i64 1}
!137 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Z8opp_joinB5cxx11PKcS0_S0_, i64 1}
!138 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN15StringTokenizerC1EPKcS1_, i64 1}
!139 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN15StringTokenizer13hasMoreTokensEv, i64 2}
!140 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN15StringTokenizer9nextTokenEv, i64 1}
!141 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 2}
!142 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, i64 1}
!143 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZdlPv, i64 3}
!144 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN6cEnvir6printfEPKcz, i64 2}
!145 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN11cSimulation19loadNedSourceFolderEPKc, i64 1}
!146 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, i64 1}
!147 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN11cSimulation19doneLoadingNedFilesEv, i64 1}
!148 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, i64 1}
!149 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN15StringTokenizerD1Ev, i64 1}
!150 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @strlen, i64 1136}
!151 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm, i64 1136}
!152 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 2272}
!153 = !{ptr @_ZN10opp_stringC2EPKc, ptr @strlen, i64 4934}
!154 = !{ptr @_ZN10opp_stringC2EPKc, ptr @_Znam, i64 4934}
!155 = !{ptr @_ZN10opp_stringC2EPKc, ptr @strcpy, i64 4934}
!156 = !{ptr @_ZN9EnvirBase8shutdownEv, ptr @_ZN11cSimulation13deleteNetworkEv, i64 1}
!157 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN11cSimulation8startRunEv, i64 1}
!158 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN6cEnvir13flushLastLineEv, i64 1}
!159 = !{ptr @_ZN9EnvirBase6endRunEv, ptr @_ZN11cSimulation6endRunEv, i64 1}
!160 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN9EnvirBase11getConfigExEv, i64 114192}
!161 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZNK4cPar13containsValueEv, i64 224202}
!162 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @strcmp, i64 50512}
!163 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN4cPar5parseEPKc, i64 4182}
!164 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN4cPar13acceptDefaultEv, i64 110010}
!165 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZdlPv, i64 114176}
!166 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @strlen, i64 3}
!167 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 3}
!168 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZN10opp_stringaSEPKc, i64 3}
!169 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZdlPv, i64 1}
!170 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 4}
!171 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strlen, i64 325614}
!172 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Znam, i64 325614}
!173 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strcpy, i64 325614}
!174 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN9EnvirBase9getConfigEv, i64 1}
!175 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN10opp_stringaSEPKc, i64 5}
!176 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZdlPv, i64 4}
!177 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN7SimTime11setScaleExpEi, i64 1}
!178 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN9EnvirBase9getConfigEv, i64 2}
!179 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN10opp_stringaSEPKc, i64 4}
!180 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN7SimTimeaSEd, i64 1}
!181 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZdlPv, i64 1}
!182 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN11cSimulation9setHasherEP7cHasher, i64 1}
!183 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN13cClassFactory9createOneEPKc, i64 2}
!184 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_Znam, i64 1}
!185 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZNK9EnvirBase15getParsimProcIdEv, i64 1}
!186 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZNK9EnvirBase22getParsimNumPartitionsEv, i64 1}
!187 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZN9EnvirBase11getConfigExEv, i64 39185}
!188 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZdlPv, i64 39184}
!189 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @__dynamic_cast, i64 1}
!190 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @_ZNK10cException10hasContextEv, i64 1}
!191 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @_ZNK10cException4whatEv, i64 1}
!192 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @_ZN6cEnvir9printfmsgEPKcz, i64 1}
!193 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @__cxa_allocate_exception, i64 1}
!194 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZN21cTerminationExceptionC1E12OppErrorCodez, i64 1}
!195 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @__cxa_throw, i64 1}
!196 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!197 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!198 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc, i64 1}
!199 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZN11cModuleType4findEPKc, i64 1}
!200 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 33}
!201 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!202 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZdlPv, i64 38}
!203 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 2}
!204 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 2}
!205 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZdlPv, i64 2}
!206 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, i64 5}
!207 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZdlPv, i64 9}
!208 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!209 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!210 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, i64 103}
!211 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @memcmp, i64 98}
!212 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @memcmp, i64 98}
!213 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, i64 2}
!214 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, i64 2}
!215 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_Znwm, i64 2}
!216 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 2}
!217 = !{ptr @_GLOBAL__sub_I_envirbase.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!218 = !{ptr @_GLOBAL__sub_I_envirbase.cc, ptr @__cxa_atexit, i64 26}
!219 = !{ptr @_GLOBAL__sub_I_envirbase.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 25}
!220 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!221 = !{!"function_entry_count", i64 1}
!222 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_91Ev"}
!223 = !{!"branch_weights", i32 1, i32 0}
!224 = !{!225, !225, i64 0}
!225 = !{!"any pointer", !226, i64 0}
!226 = !{!"omnipotent char", !227, i64 0}
!227 = !{!"Simple C++ TBAA"}
!228 = !{!229, !229, i64 0}
!229 = !{!"vtable pointer", !227, i64 0}
!230 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!231 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_92Ev"}
!232 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_93Ev"}
!233 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_94Ev"}
!234 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_95Ev"}
!235 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_96Ev"}
!236 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_97Ev"}
!237 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_98Ev"}
!238 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_119__onstartup_func_99Ev"}
!239 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_100Ev"}
!240 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_101Ev"}
!241 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_102Ev"}
!242 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_103Ev"}
!243 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_105Ev"}
!244 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_106Ev"}
!245 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_107Ev"}
!246 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_108Ev"}
!247 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_109Ev"}
!248 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_110Ev"}
!249 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_111Ev"}
!250 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_112Ev"}
!251 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_113Ev"}
!252 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_114Ev"}
!253 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_115Ev"}
!254 = !{!"simulator/envirbase.cc;_ZN12_GLOBAL__N_120__onstartup_func_116Ev"}
!255 = !{!256, !225, i64 0}
!256 = !{!"_ZTS10opp_string", !225, i64 0}
!257 = !{!258, !259, i64 0}
!258 = !{!"_ZTS7SimTime", !259, i64 0}
!259 = !{!"long", !226, i64 0}
!260 = !{!261, !266, i64 472}
!261 = !{!"_ZTS9EnvirBase", !262, i64 0, !225, i64 288, !225, i64 296, !225, i64 304, !266, i64 312, !259, i64 320, !256, i64 328, !264, i64 336, !256, i64 344, !256, i64 352, !256, i64 360, !256, i64 368, !266, i64 376, !256, i64 384, !266, i64 392, !256, i64 400, !256, i64 408, !256, i64 416, !264, i64 424, !264, i64 425, !264, i64 426, !264, i64 427, !258, i64 432, !259, i64 440, !256, i64 448, !225, i64 456, !225, i64 464, !266, i64 472, !225, i64 480, !225, i64 488, !225, i64 496, !225, i64 504, !225, i64 512, !259, i64 520, !267, i64 528, !267, i64 544, !267, i64 560, !267, i64 576, !258, i64 592}
!262 = !{!"_ZTS14cRunnableEnvir", !263, i64 0}
!263 = !{!"_ZTS6cEnvir", !264, i64 8, !264, i64 9, !264, i64 10, !265, i64 16}
!264 = !{!"bool", !226, i64 0}
!265 = !{!"_ZTSSo"}
!266 = !{!"int", !226, i64 0}
!267 = !{!"_ZTS7timeval", !259, i64 0, !259, i64 8}
!268 = !{!261, !225, i64 296}
!269 = !{!"branch_weights", i32 0, i32 1}
!270 = !{!271, !225, i64 8}
!271 = !{!"_ZTSSt15_Rb_tree_header", !272, i64 0, !259, i64 32}
!272 = !{!"_ZTSSt18_Rb_tree_node_base", !273, i64 0, !225, i64 8, !225, i64 16, !225, i64 24}
!273 = !{!"_ZTSSt14_Rb_tree_color", !226, i64 0}
!274 = !{!275, !225, i64 0}
!275 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !276, i64 0, !259, i64 8, !226, i64 16}
!276 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !225, i64 0}
!277 = !{!275, !259, i64 8}
!278 = !{!261, !225, i64 288}
!279 = !{!"VP", i32 0, i64 1, i64 7614432713512393503, i64 1}
!280 = !{!261, !225, i64 304}
!281 = !{!"VP", i32 0, i64 1, i64 6345214829158493273, i64 1}
!282 = !{!261, !225, i64 496}
!283 = !{!"VP", i32 0, i64 1, i64 -1356191990872201765, i64 1}
!284 = !{!261, !225, i64 504}
!285 = !{!"VP", i32 0, i64 1, i64 2758535655689253636, i64 1}
!286 = !{!261, !225, i64 512}
!287 = !{!"VP", i32 0, i64 1, i64 5187752894901371703, i64 1}
!288 = !{!"branch_weights", i32 127, i32 1}
!289 = !{!261, !225, i64 480}
!290 = !{!"VP", i32 0, i64 1, i64 1818402875267860018, i64 1}
!291 = !{!"branch_weights", i32 1, i32 127}
!292 = distinct !{!292, !293, !294}
!293 = !{!"llvm.loop.mustprogress"}
!294 = !{!"llvm.loop.unroll.disable"}
!295 = !{!"function_entry_count", i64 0}
!296 = !{!"VP", i32 0, i64 1, i64 -8953521337749842206, i64 1}
!297 = !{!"VP", i32 0, i64 1, i64 4057078978856665243, i64 1}
!298 = !{!"VP", i32 0, i64 1, i64 -3747140740523737760, i64 1}
!299 = !{!"VP", i32 0, i64 1, i64 896426058542957596, i64 1}
!300 = !{!261, !266, i64 312}
!301 = !{!"VP", i32 0, i64 1, i64 5977083319438428675, i64 1}
!302 = !{!303, !225, i64 8}
!303 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !225, i64 0, !225, i64 8, !225, i64 16}
!304 = !{!303, !225, i64 0}
!305 = distinct !{!305, !293, !294}
!306 = distinct !{!306, !293, !294}
!307 = distinct !{!307, !293, !294}
!308 = !{!309, !225, i64 40}
!309 = !{!"_ZTS21cOmnetAppRegistration", !310, i64 0, !225, i64 40, !275, i64 48, !266, i64 80}
!310 = !{!"_ZTS12cOwnedObject", !311, i64 0, !225, i64 24, !266, i64 32}
!311 = !{!"_ZTS12cNamedObject", !312, i64 0, !225, i64 8, !313, i64 16, !313, i64 18}
!312 = !{!"_ZTS7cObject"}
!313 = !{!"short", !226, i64 0}
!314 = distinct !{!314, !293, !294}
!315 = !{!316, !225, i64 8}
!316 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !225, i64 0, !225, i64 8, !225, i64 16}
!317 = !{!316, !225, i64 0}
!318 = !{!319, !264, i64 36}
!319 = !{!"_ZTS13cConfigOption", !320, i64 0, !264, i64 36, !264, i64 37, !321, i64 40, !275, i64 48, !275, i64 80, !275, i64 112}
!320 = !{!"_ZTS23cNoncopyableOwnedObject", !310, i64 0}
!321 = !{!"_ZTSN13cConfigOption4TypeE", !226, i64 0}
!322 = !{i8 0, i8 2}
!323 = !{}
!324 = !{!319, !321, i64 40}
!325 = !{!319, !264, i64 37}
!326 = !{!226, !226, i64 0}
!327 = distinct !{!327, !293, !294}
!328 = distinct !{!328, !293, !294}
!329 = !{!276, !225, i64 0}
!330 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!331 = distinct !{!331, !293, !294}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!334 = distinct !{!334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!335 = distinct !{!335, !293, !294}
!336 = distinct !{!336, !293, !294}
!337 = distinct !{!337, !293, !294}
!338 = distinct !{!338, !293, !294}
!339 = !{!271, !273, i64 0}
!340 = !{!271, !225, i64 16}
!341 = !{!271, !225, i64 24}
!342 = !{!271, !259, i64 32}
!343 = distinct !{!343, !293, !294}
!344 = distinct !{!344, !293, !294}
!345 = distinct !{!345, !293, !294}
!346 = distinct !{!346, !293, !294}
!347 = distinct !{!347, !293, !294}
!348 = distinct !{!348, !293, !294}
!349 = !{!350, !352, i64 32}
!350 = !{!"_ZTSSt8ios_base", !259, i64 8, !259, i64 16, !351, i64 24, !352, i64 28, !352, i64 32, !225, i64 40, !353, i64 48, !226, i64 64, !266, i64 192, !225, i64 200, !354, i64 208}
!351 = !{!"_ZTSSt13_Ios_Fmtflags", !226, i64 0}
!352 = !{!"_ZTSSt12_Ios_Iostate", !226, i64 0}
!353 = !{!"_ZTSNSt8ios_base6_WordsE", !225, i64 0, !259, i64 8}
!354 = !{!"_ZTSSt6locale", !225, i64 0}
!355 = !{!"function_entry_count", i64 55}
!356 = !{!"branch_weights", i32 50, i32 5}
!357 = !{!"branch_weights", i32 4, i32 1}
!358 = !{!"branch_weights", i32 5, i32 0}
!359 = !{!"branch_weights", i32 46, i32 9}
!360 = !{!"VP", i32 0, i64 1, i64 189007272969464806, i64 1}
!361 = !{!261, !259, i64 320}
!362 = !{!261, !264, i64 336}
!363 = !{!"VP", i32 0, i64 1, i64 5711233572888515993, i64 1}
!364 = !{!"VP", i32 0, i64 1, i64 6801335834817386679, i64 1}
!365 = !{!"branch_weights", i32 2, i32 0}
!366 = !{!"branch_weights", i32 1, i32 1}
!367 = !{!"VP", i32 0, i64 1, i64 -1917123576463361350, i64 1}
!368 = !{!"VP", i32 0, i64 1, i64 7109307874427164921, i64 1}
!369 = distinct !{!369, !293, !294}
!370 = !{!"function_entry_count", i64 1136}
!371 = !{!"branch_weights", i32 1136, i32 0}
!372 = !{!"branch_weights", i32 0, i32 1136}
!373 = !{!"function_entry_count", i64 4934}
!374 = !{!"branch_weights", i32 0, i32 4934}
!375 = !{!"VP", i32 0, i64 1, i64 5682347891235182423, i64 1}
!376 = !{!"VP", i32 0, i64 1, i64 -6761796472008469555, i64 1}
!377 = !{!"VP", i32 0, i64 1, i64 5034376707315338690, i64 1}
!378 = !{!261, !225, i64 488}
!379 = !{!"VP", i32 0, i64 1, i64 227644166942278491, i64 1}
!380 = !{!"VP", i32 0, i64 1, i64 4204131098730657668, i64 1}
!381 = !{!"VP", i32 0, i64 1, i64 6582747090459765748, i64 1}
!382 = !{!"function_entry_count", i64 114192}
!383 = !{!"VP", i32 0, i64 114192, i64 -6326536534725982768, i64 114192}
!384 = !{!"VP", i32 0, i64 114192, i64 712553159999434609, i64 75144, i64 6956040363907110454, i64 39048}
!385 = !{!"VP", i32 0, i64 114192, i64 5977083319438428675, i64 114192}
!386 = !{!"VP", i32 0, i64 114192, i64 8390818187414654894, i64 114192}
!387 = !{!"branch_weights", i32 114192, i32 0}
!388 = !{!"VP", i32 0, i64 114192, i64 8214874037449750533, i64 114192}
!389 = !{!"branch_weights", i32 76272, i32 37920}
!390 = !{!"branch_weights", i32 0, i32 114192}
!391 = !{!"branch_weights", i32 0, i32 37920}
!392 = !{!"branch_weights", i32 37920, i32 0}
!393 = !{!"branch_weights", i32 76272, i32 0}
!394 = !{!"branch_weights", i32 16, i32 114176}
!395 = !{!396, !225, i64 8}
!396 = !{!"_ZTS20ModNameParamResolver", !397, i64 0, !225, i64 8}
!397 = !{!"_ZTSN11cXMLElement13ParamResolverE"}
!398 = !{!"function_entry_count", i64 889905}
!399 = !{!"function_entry_count", i64 153380}
!400 = !{!"function_entry_count", i64 189091134}
!401 = !{!"function_entry_count", i64 467312602}
!402 = !{!"branch_weights", i32 467312602, i32 0}
!403 = !{!"function_entry_count", i64 202389109}
!404 = !{!"branch_weights", i32 202389109, i32 0}
!405 = !{!"function_entry_count", i64 265916806}
!406 = !{!"branch_weights", i32 265916806, i32 0}
!407 = !{!"function_entry_count", i64 988392}
!408 = !{!"branch_weights", i32 988392, i32 0}
!409 = !{!"function_entry_count", i64 289503849}
!410 = !{!"branch_weights", i32 289503849, i32 0}
!411 = !{!"function_entry_count", i64 107255799}
!412 = !{!"branch_weights", i32 107255799, i32 0}
!413 = !{!"function_entry_count", i64 187873355}
!414 = !{!"branch_weights", i32 187873355, i32 0}
!415 = !{!"function_entry_count", i64 34346}
!416 = !{!"branch_weights", i32 34346, i32 0}
!417 = !{!"function_entry_count", i64 29423}
!418 = !{!"branch_weights", i32 29423, i32 0}
!419 = !{!"function_entry_count", i64 113504}
!420 = !{!"branch_weights", i32 113504, i32 0}
!421 = !{!"function_entry_count", i64 65602}
!422 = !{!"branch_weights", i32 65602, i32 0}
!423 = !{!261, !264, i64 427}
!424 = !{!"function_entry_count", i64 3}
!425 = !{!"branch_weights", i32 0, i32 3}
!426 = !{!261, !264, i64 425}
!427 = !{!"branch_weights", i32 3, i32 0}
!428 = !{!"branch_weights", i32 2, i32 1}
!429 = !{!"function_entry_count", i64 325620}
!430 = !{!"branch_weights", i32 325616, i32 4}
!431 = !{!"branch_weights", i32 0, i32 325620}
!432 = !{!"branch_weights", i32 6, i32 325614}
!433 = !{!"VP", i32 0, i64 1, i64 -612227676016800152, i64 1}
!434 = !{!"VP", i32 0, i64 1, i64 -3673875820843190650, i64 1}
!435 = !{!"VP", i32 0, i64 1, i64 1490196442286634196, i64 1}
!436 = !{!263, !264, i64 10}
!437 = !{!"VP", i32 0, i64 1, i64 8183421150609379983, i64 1}
!438 = !{!"VP", i32 0, i64 1, i64 -1846066915438621208, i64 1}
!439 = !{!"VP", i32 0, i64 1, i64 757112140975147491, i64 1}
!440 = !{!"VP", i32 0, i64 1, i64 9210391634245380122, i64 1}
!441 = !{!261, !264, i64 426}
!442 = !{!261, !259, i64 440}
!443 = !{!261, !266, i64 376}
!444 = !{!261, !266, i64 392}
!445 = !{!261, !264, i64 424}
!446 = !{!447, !266, i64 0}
!447 = !{!"_ZTS7cHasher", !266, i64 0}
!448 = !{!"VP", i32 0, i64 1, i64 6534790339630285461, i64 1}
!449 = distinct !{!449, !293, !294}
!450 = !{!"VP", i32 0, i64 1, i64 -1667902185277077902, i64 1}
!451 = !{!"VP", i32 0, i64 1, i64 -7237045761545953673, i64 1}
!452 = !{!"VP", i32 0, i64 1, i64 8593467513653683962, i64 1}
!453 = distinct !{!453, !293, !294}
!454 = !{!261, !259, i64 520}
!455 = !{!"function_entry_count", i64 512903181}
!456 = !{!266, !266, i64 0}
!457 = !{!"branch_weights", i32 0, i32 980215783}
!458 = !{!459, !459, i64 0}
!459 = !{!"double", !226, i64 0}
!460 = !{!"function_entry_count", i64 212014}
!461 = !{!"branch_weights", i32 212014, i32 0}
!462 = !{!"function_entry_count", i64 39185}
!463 = !{!"VP", i32 0, i64 39185, i64 5977083319438428675, i64 39185}
!464 = !{!"VP", i32 0, i64 39185, i64 712553159999434609, i64 29423, i64 6956040363907110454, i64 9762}
!465 = !{!"VP", i32 0, i64 39185, i64 -8420235151501795370, i64 39185}
!466 = !{!"branch_weights", i32 39185, i32 0}
!467 = distinct !{!467, !293, !294}
!468 = distinct !{!468, !293, !294}
!469 = !{!470, !313, i64 64}
!470 = !{!"_ZTS10cComponent", !471, i64 0, !225, i64 56, !313, i64 64, !225, i64 72, !313, i64 80, !313, i64 82, !225, i64 88, !225, i64 96}
!471 = !{!"_ZTS12cDefaultList", !320, i64 0, !225, i64 40, !266, i64 48, !266, i64 52}
!472 = !{!470, !225, i64 72}
!473 = !{!"branch_weights", i32 1, i32 39184}
!474 = !{!"function_entry_count", i64 112694}
!475 = !{!"VP", i32 0, i64 112694, i64 -3787639404447659650, i64 112694}
!476 = !{!"VP", i32 0, i64 112694, i64 3641946512799742407, i64 112694}
!477 = !{!"function_entry_count", i64 494191607}
!478 = !{!"VP", i32 0, i64 494191607, i64 -2195460705406849527, i64 494191607}
!479 = !{!"function_entry_count", i64 272154}
!480 = !{!"VP", i32 0, i64 272154, i64 368609267129716833, i64 272154}
!481 = !{!"VP", i32 0, i64 1, i64 -3929639963959246098, i64 1}
!482 = !{!"VP", i32 0, i64 1, i64 -1586078022496301896, i64 1}
!483 = !{!"VP", i32 0, i64 1, i64 3066148125282208470, i64 1}
!484 = !{!485, !266, i64 0}
!485 = !{!"_ZTS7ArgList", !266, i64 0, !225, i64 8, !275, i64 16, !486, i64 48, !491, i64 96, !496, i64 144}
!486 = !{!"_ZTSSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEE", !487, i64 0}
!487 = !{!"_ZTSSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE", !488, i64 0}
!488 = !{!"_ZTSNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE13_Rb_tree_implISF_Lb1EEE", !489, i64 0, !271, i64 8}
!489 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIcEE", !490, i64 0}
!490 = !{!"_ZTSSt4lessIcE"}
!491 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !492, i64 0}
!492 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !493, i64 0}
!493 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !494, i64 0, !271, i64 8}
!494 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !495, i64 0}
!495 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!496 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !497, i64 0}
!497 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !498, i64 0}
!498 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !303, i64 0}
!499 = !{!485, !225, i64 8}
!500 = !{!267, !259, i64 0}
!501 = !{!267, !259, i64 8}
!502 = !{i64 0, i64 8, !503, i64 8, i64 8, !503}
!503 = !{!259, !259, i64 0}
!504 = !{i64 0, i64 8, !503}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!507 = distinct !{!507, !"_ZNK11cSimulation10getSimTimeEv"}
!508 = !{!"function_entry_count", i64 2}
!509 = !{!"branch_weights", i32 0, i32 2}
!510 = !{!"branch_weights", i32 0, i32 467312602}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!513 = distinct !{!513, !"_ZNK11cSimulation10getSimTimeEv"}
!514 = !{!"branch_weights", i32 467312601, i32 1}
!515 = !{!"branch_weights", i32 467312601, i32 0}
!516 = !{!263, !264, i64 8}
!517 = !{!518, !259, i64 128}
!518 = !{!"_ZTS11cSimulation", !320, i64 0, !266, i64 36, !266, i64 40, !225, i64 48, !266, i64 56, !225, i64 64, !225, i64 72, !225, i64 80, !225, i64 88, !266, i64 96, !225, i64 104, !225, i64 112, !258, i64 120, !259, i64 128, !225, i64 136, !225, i64 144, !225, i64 152, !519, i64 160}
!519 = !{!"_ZTS12cMessageHeap", !310, i64 0, !225, i64 40, !266, i64 48, !266, i64 52, !259, i64 56}
!520 = !{!261, !259, i64 560}
!521 = !{!261, !259, i64 576}
!522 = !{!518, !225, i64 152}
!523 = distinct !{!523, !293, !294}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!526 = distinct !{!526, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!527 = !{!528}
!528 = distinct !{!528, !529, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!529 = distinct !{!529, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!530 = !{!531}
!531 = distinct !{!531, !532, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!532 = distinct !{!532, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!535 = distinct !{!535, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!536 = !{!"VP", i32 0, i64 1, i64 -5447649856236546587, i64 1}
!537 = !{!"function_entry_count", i64 41}
!538 = !{!"branch_weights", i32 8, i32 33}
!539 = !{!272, !225, i64 24}
!540 = !{!272, !225, i64 16}
!541 = !{!"branch_weights", i32 33, i32 0}
!542 = distinct !{!542, !293, !294}
!543 = !{!"function_entry_count", i64 33}
!544 = !{!"branch_weights", i32 29, i32 4}
!545 = !{!"branch_weights", i32 32, i32 1}
!546 = !{!"branch_weights", i32 1, i32 2}
!547 = distinct !{!547, !293, !294}
!548 = !{!549, !266, i64 8}
!549 = !{!"_ZTS10cException", !550, i64 0, !266, i64 8, !275, i64 16, !264, i64 48, !275, i64 56, !275, i64 88, !266, i64 120}
!550 = !{!"_ZTSSt9exception"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!553 = distinct !{!553, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!556 = distinct !{!556, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!557 = !{!549, !264, i64 48}
!558 = !{!549, !266, i64 120}
!559 = !{!"function_entry_count", i64 11}
!560 = !{!"branch_weights", i32 6, i32 5}
!561 = !{!"branch_weights", i32 1, i32 4}
!562 = distinct !{!562, !293, !294}
!563 = !{!"function_entry_count", i64 1974042}
!564 = !{!"branch_weights", i32 1399683, i32 574359}
!565 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!566 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!567 = !{!"function_entry_count", i64 1889443}
!568 = !{!"branch_weights", i32 1257662, i32 631781}
!569 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!570 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!571 = !{!"function_entry_count", i64 103}
!572 = !{!"branch_weights", i32 5, i32 98}
!573 = !{!"branch_weights", i32 0, i32 98}
!574 = !{!"VP", i32 1, i64 98, i64 65, i64 97, i64 129, i64 1}
!575 = !{!"branch_weights", i32 98, i32 0}
!576 = distinct !{!576, !293, !294}
!577 = !{!"function_entry_count", i64 5}
!578 = distinct !{!578, !293, !294}
!579 = !{!"simulator/envirbase.cc;_GLOBAL__sub_I_envirbase.cc"}
