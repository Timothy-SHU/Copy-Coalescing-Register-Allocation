; ModuleID = 'simulator/eventlogfilemgr.cc'
source_filename = "simulator/eventlogfilemgr.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.EventlogFileManager = type <{ ptr, %class.opp_string, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%class.opp_string = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.SimTime = type { i64 }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cPacket = type <{ %class.cMessage, i64, %class.SimTime, ptr, i16, [6 x i8] }>
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.5" = type { i8 }
%struct._Guard = type { ptr }
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }

$_ZN10opp_stringC2Ev = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZNK10opp_string5c_strEv = comdat any

$_ZN7SimTimeC2Ed = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK11cSimulation15getSystemModuleEv = comdat any

$_ZNK7cModule5getIdEv = comdat any

$_ZNK7cModule14isRecordEventsEv = comdat any

$_ZNK11cSimulation10getSimTimeEv = comdat any

$_ZNK11cSimulation14getEventNumberEv = comdat any

$_ZNK8cMessage22getPreviousEventNumberEv = comdat any

$_ZNK8cMessage5getIdEv = comdat any

$_ZNK8cMessage9getTreeIdEv = comdat any

$_ZNK8cMessage7getKindEv = comdat any

$_ZNK8cMessage21getSchedulingPriorityEv = comdat any

$_ZNK7cPacket12getBitLengthEv = comdat any

$_ZNK7cPacket11hasBitErrorEv = comdat any

$_ZNK8cMessage17getSenderModuleIdEv = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZNK7cPacket16isReceptionStartEv = comdat any

$_ZNK8cMessage14getArrivalTimeEv = comdat any

$_ZN7cModule15setRecordEventsEb = comdat any

$_ZNK5cGate8isVectorEv = comdat any

$_ZNK5cGate8getIndexEv = comdat any

$_ZNK5cGate7getTypeEv = comdat any

$_ZNK5cGate11getNextGateEv = comdat any

$_ZNK8cChannel13getSourceGateEv = comdat any

$_Z10opp_strdupPKc = comdat any

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

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN7SimTime5checkIdEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZN12cNamedObject7setFlagEib = comdat any

$_ZNK5cGate4Desc8isVectorEv = comdat any

$_ZNK5cGate4Desc7indexOfEPKS_ = comdat any

$_ZNK5cGate4Desc9getTypeOfEPKS_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_EVENTLOG_FILE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_37E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_EVENTLOG_MESSAGE_DETAIL_PATTERN = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_55E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_EVENTLOG_RECORDING_INTERVALS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_56E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_MODULE_EVENTLOG_RECORDING = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_57E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV19EventlogFileManager = dso_local unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTI19EventlogFileManager, ptr @_ZN19EventlogFileManagerD2Ev, ptr @_ZN19EventlogFileManagerD0Ev, ptr @_ZN19EventlogFileManager5setupEv, ptr @_ZN19EventlogFileManager8startRunEv, ptr @_ZN19EventlogFileManager6endRunEv, ptr @_ZN19EventlogFileManager5flushEv, ptr @_ZN19EventlogFileManager15simulationEventEP8cMessage, ptr @_ZN19EventlogFileManager6bubbleEP10cComponentPKc, ptr @_ZN19EventlogFileManager16messageScheduledEP8cMessage, ptr @_ZN19EventlogFileManager16messageCancelledEP8cMessage, ptr @_ZN19EventlogFileManager9beginSendEP8cMessage, ptr @_ZN19EventlogFileManager17messageSendDirectEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate, ptr @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN19EventlogFileManager7endSendEP8cMessage, ptr @_ZN19EventlogFileManager14messageDeletedEP8cMessage, ptr @_ZN19EventlogFileManager16moduleReparentedEP7cModuleS1_, ptr @_ZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag, ptr @_ZN19EventlogFileManager18componentMethodEndEv, ptr @_ZN19EventlogFileManager13moduleCreatedEP7cModule, ptr @_ZN19EventlogFileManager13moduleDeletedEP7cModule, ptr @_ZN19EventlogFileManager11gateCreatedEP5cGate, ptr @_ZN19EventlogFileManager11gateDeletedEP5cGate, ptr @_ZN19EventlogFileManager17connectionCreatedEP5cGate, ptr @_ZN19EventlogFileManager17connectionDeletedEP5cGate, ptr @_ZN19EventlogFileManager20displayStringChangedEP10cComponent, ptr @_ZN19EventlogFileManager5sputnEPKci] }, align 8
@_ZTI6cEnvir = external constant ptr
@_ZTI9EnvirBase = external constant ptr
@.str = private unnamed_addr constant [37 x i8] c"Recording event log to file `%s'...\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Cannot open eventlog file `%s' for write\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"runid\00", align 1
@_ZTI10cComponent = external constant ptr
@_ZTI7cModule = external constant ptr
@_ZTI8cChannel = external constant ptr
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf = internal global [1024 x i8] zeroinitializer, align 16
@_ZTI15cCompoundModule = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS19EventlogFileManager = dso_local constant [22 x i8] c"19EventlogFileManager\00", align 1
@_ZTI19EventlogFileManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS19EventlogFileManager }, align 8
@configOptions = external global %class.cGlobalRegistrationList, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"eventlog-file\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"${resultdir}/${configname}-${runnumber}.elog\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Name of the event log file to generate.\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"eventlog-message-detail-pattern\00", align 1
@.str.13 = private unnamed_addr constant [1269 x i8] c"A list of patterns separated by '|' character which will be used to write message detail information into the event log for each message sent during the simulation. The message detail will be presented in the sequence chart tool. Each pattern starts with an object pattern optionally followed by ':' character and a comma separated list of field patterns. In both patterns and/or/not/* and various field match expressions can be used. The object pattern matches to class name, the field pattern matches to field name by default.\0A  EVENTLOG-MESSAGE-DETAIL-PATTERN := ( DETAIL-PATTERN '|' )* DETAIL_PATTERN\0A  DETAIL-PATTERN := OBJECT-PATTERN [ ':' FIELD-PATTERNS ]\0A  OBJECT-PATTERN := MATCH-EXPRESSION\0A  FIELD-PATTERNS := ( FIELD-PATTERN ',' )* FIELD_PATTERN\0A  FIELD-PATTERN := MATCH-EXPRESSION\0AExamples (enter them without quotes):\0A  \22*\22: captures all fields of all messages\0A  \22*Frame:*Address,*Id\22: captures all fields named somethingAddress and somethingId from messages of any class named somethingFrame\0A  \22MyMessage:declaredOn(MyMessage)\22: captures instances of MyMessage recording the fields declared on the MyMessage class\0A  \22*:(not declaredOn(cMessage) and not declaredOn(cNamedObject) and not declaredOn(cObject))\22: records user-defined fields from all messages\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"eventlog-recording-intervals\00", align 1
@.str.15 = private unnamed_addr constant [220 x i8] c"Simulation time interval(s) when events should be recorded. Syntax: [<from>]..[<to>],... That is, both start and end of an interval are optional, and intervals are separated by comma. Example: ..10.2, 22.2..100, 233.3..\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"module-eventlog-recording\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [195 x i8] c"Enables recording events on a per module basis. This is meaningful for simple modules only. \0AExample:\0A **.router[10..20].**.module-eventlog-recording = true\0A **.module-eventlog-recording = false\00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_eventlogfilemgr.cc, ptr null }]

@_ZN19EventlogFileManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19EventlogFileManagerC2Ev
@_ZN19EventlogFileManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19EventlogFileManagerD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
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
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_37E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_37Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_37E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_37Ev() #4 personality ptr @__gxx_personality_v0 !prof !85 !PGOFuncName !86 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #19
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.9, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #19
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_FILE, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_55E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_55Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_55E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_55Ev() #4 personality ptr @__gxx_personality_v0 !prof !85 !PGOFuncName !93 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #19
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.12, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 7, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13) #19
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_MESSAGE_DETAIL_PATTERN, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_56E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_56Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_56E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_56Ev() #4 personality ptr @__gxx_personality_v0 !prof !85 !PGOFuncName !94 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #19
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 7, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #19
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_RECORDING_INTERVALS, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_57E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_57Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_57E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_57Ev() #4 personality ptr @__gxx_personality_v0 !prof !85 !PGOFuncName !95 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #19
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #21
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.16, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #19
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_MODULE_EVENTLOG_RECORDING, align 8, !tbaa !87
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN19EventlogFileManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #5 align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV19EventlogFileManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i8 1, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 7
  store i8 1, ptr %5, align 2, !tbaa !101
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 6
  store i8 1, ptr %6, align 1, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !103 {
  store ptr null, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN19EventlogFileManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #5 align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV19EventlogFileManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080) %3) #23
  tail call void @_ZdlPv(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN9IntervalsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  tail call void @_ZdlPv(ptr noundef nonnull %8) #22
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #23
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN9IntervalsD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN19EventlogFileManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN19EventlogFileManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager5setupEv(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080) %5) #23
  tail call void @_ZdlPv(ptr noundef nonnull %5) #22
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !105
  %9 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 31
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(288) %9) #19
  %14 = load ptr, ptr @CFGID_EVENTLOG_MESSAGE_DETAIL_PATTERN, align 8, !tbaa !87
  %15 = load ptr, ptr %13, align 8, !tbaa !91
  %16 = getelementptr inbounds ptr, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14, ptr noundef null) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %8
  %21 = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #21
  invoke void @_ZN13ObjectPrinterC1EPKci(ptr noundef nonnull align 8 dereferenceable(1080) %21, ptr noundef nonnull %18, i32 noundef 3) #19
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr %21, ptr %4, align 8, !tbaa !105
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %21) #22
  br label %83

25:                                               ; preds = %22, %8
  %26 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = getelementptr inbounds ptr, ptr %27, i64 31
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(288) %26) #19
  %31 = load ptr, ptr @CFGID_EVENTLOG_RECORDING_INTERVALS, align 8, !tbaa !87
  %32 = load ptr, ptr %30, align 8, !tbaa !91
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef null) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
  invoke void @_ZN9IntervalsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38) #19
          to label %39 unwind label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  store ptr %38, ptr %40, align 8, !tbaa !106
  tail call void @_ZN9Intervals5parseEPKc(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %35) #19
  br label %43

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %38) #22
  br label %83

43:                                               ; preds = %39, %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  %44 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = getelementptr inbounds ptr, ptr %45, i64 31
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(288) %44) #19
  %49 = load ptr, ptr @CFGID_EVENTLOG_FILE, align 8, !tbaa !87
  %50 = load ptr, ptr %48, align 8, !tbaa !91
  %51 = getelementptr inbounds ptr, ptr %50, i64 29
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %49) #19
  %53 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %54 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  %55 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53) #19
          to label %56 unwind label %67

56:                                               ; preds = %43
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  %57 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %58 = icmp ne ptr %57, null
  call void @llvm.assume(i1 %58)
  %59 = call ptr @__dynamic_cast(ptr nonnull %57, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #20
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = getelementptr inbounds ptr, ptr %60, i64 68
  %62 = load ptr, ptr %61, align 8
  call void %62(ptr noundef nonnull align 8 dereferenceable(600) %59, ptr noundef nonnull align 8 dereferenceable(8) %54) #19
  %63 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #19
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %63) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %65 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #19
  call void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %65) #19
  %66 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  invoke void @_Z6mkPathPKc(ptr noundef %66) #19
          to label %69 unwind label %77

67:                                               ; preds = %43
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  br label %83

69:                                               ; preds = %56
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  %70 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #19
  %71 = call noalias ptr @fopen(ptr noundef %70, ptr noundef nonnull @.str.5) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = call ptr @__cxa_allocate_exception(i64 128) #20
  %75 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %54) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %74, ptr noundef nonnull @.str.6, ptr noundef %75) #19
          to label %76 unwind label %79

76:                                               ; preds = %73
  call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
  unreachable

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %83

79:                                               ; preds = %73
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %74) #20
  br label %83

81:                                               ; preds = %69
  %82 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  store ptr %71, ptr %82, align 8, !tbaa !108
  ret void

83:                                               ; preds = %41, %67, %77, %79, %23
  %84 = phi { ptr, i32 } [ %24, %23 ], [ %80, %79 ], [ %78, %77 ], [ %68, %67 ], [ %42, %41 ]
  resume { ptr, i32 } %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !109 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !87
  ret ptr %1
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN13ObjectPrinterC1EPKci(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN9IntervalsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9Intervals5parseEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !110 {
  %3 = load ptr, ptr %0, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #19
  store ptr %7, ptr %0, align 8, !tbaa !104
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.8, ptr %2, !prof !112
  ret ptr %4
}

; Function Attrs: optsize
declare void @_Z6mkPathPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager8startRunEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #4 align 2 !prof !96 {
  %2 = alloca %class.SimTime, align 8
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds ptr, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(288) %7) #19
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds ptr, ptr %12, i64 51
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.7) #19
  %16 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00) #19
  %18 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %19 = call noundef ptr @_ZNK11cSimulation15getSystemModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %18) #19
  %20 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %19) #19
  call void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr noundef %17, i64 noundef 0, ptr noundef nonnull %2, i32 noundef %20, i64 noundef -1) #19
  %21 = load ptr, ptr %16, align 8, !tbaa !108
  call void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr noundef %21, i32 noundef 1024, ptr noundef %15) #19
  %22 = load ptr, ptr %16, align 8, !tbaa !108
  %23 = call i32 @fflush(ptr noundef %22) #19
  br label %24

24:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !115 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #5 comdat align 2 !prof !116 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !87
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation15getSystemModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !130
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #4 align 2 !prof !96 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !97, !range !113, !noundef !114
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  tail call void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr noundef %7) #19
  %8 = load ptr, ptr %6, align 8, !tbaa !108
  %9 = tail call i32 @fclose(ptr noundef %8) #19
  store ptr null, ptr %6, align 8, !tbaa !108
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local void @_ZN19EventlogFileManager5flushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #11 align 2 !prof !96 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !97, !range !113, !noundef !114
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = tail call i32 @fflush(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager15simulationEventEP8cMessage(ptr nocapture noundef nonnull align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = alloca %class.SimTime, align 8
  %4 = alloca %class.SimTime, align 8
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !97, !range !113, !noundef !114
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %10 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %9) #19
  %11 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %12 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %11) #19
  %13 = tail call noundef zeroext i1 @_ZNK7cModule14isRecordEventsEv(ptr noundef nonnull align 8 dereferenceable(176) %12) #19
  %14 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 6
  %15 = zext i1 %13 to i8
  store i8 %15, ptr %14, align 1, !tbaa !102
  %16 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %8
  %20 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %20) #19
  %21 = call noundef zeroext i1 @_ZN9Intervals8containsE7SimTime(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %3) #19
  %22 = zext i1 %21 to i8
  %23 = load i8, ptr %14, align 1, !tbaa !102, !range !113
  br label %24

24:                                               ; preds = %19, %8
  %25 = phi i8 [ %15, %8 ], [ %23, %19 ]
  %26 = phi i8 [ 1, %8 ], [ %22, %19 ]
  %27 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 7
  store i8 %26, ptr %27, align 2, !tbaa !101
  %28 = icmp eq i8 %25, 0
  %29 = select i1 %28, i8 0, i8 %26
  store i8 %29, ptr %5, align 8, !tbaa !97
  %30 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %33 = call noundef i64 @_ZNK11cSimulation14getEventNumberEv(ptr noundef nonnull align 8 dereferenceable(224) %32) #19
  %34 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %34) #19
  %35 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %10) #19
  %36 = call noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %37 = call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  call void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr noundef %31, i64 noundef %33, ptr noundef nonnull %4, i32 noundef %35, i64 noundef %36, i64 noundef %37) #19
  br label %38

38:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule14isRecordEventsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !134
  %4 = and i16 %3, 256
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9Intervals8containsE7SimTime(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #4 comdat align 2 !prof !135 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 12
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11cSimulation14getEventNumberEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !136 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %3 = load i64, ptr %2, align 8, !tbaa !137
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  %3 = load i64, ptr %2, align 8, !tbaa !138
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  %3 = load i64, ptr %2, align 8, !tbaa !140
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager6bubbleEP10cComponentPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !96 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  %7 = icmp eq ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  tail call void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr noundef %14, i32 noundef %15, ptr noundef %2) #19
  br label %18

16:                                               ; preds = %9
  %17 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI8cChannel, i64 0) #20
  br label %18

18:                                               ; preds = %16, %12, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager9beginSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !97, !range !113, !noundef !114
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %13 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = tail call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %16 = tail call noundef i64 @_ZNK8cMessage9getTreeIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  br i1 %12, label %17, label %45

17:                                               ; preds = %8
  %18 = tail call noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #19
  %19 = tail call noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !91
  %21 = getelementptr inbounds ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %24 = load ptr, ptr %1, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 7
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %28 = tail call noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %29 = tail call noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %30 = tail call noundef signext i16 @_ZNK8cMessage21getSchedulingPriorityEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %31 = tail call noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #19
  %32 = tail call noundef zeroext i1 @_ZNK7cPacket11hasBitErrorEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #19
  %33 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !105
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1080) %34, ptr noundef nonnull %1) #19
  %37 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  br label %38

38:                                               ; preds = %17, %36
  %39 = phi ptr [ %37, %36 ], [ null, %17 ]
  invoke void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %18, i64 noundef %19, ptr noundef %23, ptr noundef %27, i64 noundef %28, i16 noundef signext %29, i16 noundef signext %30, i64 noundef %31, i1 noundef zeroext %32, ptr noundef %39) #19
          to label %40 unwind label %42

40:                                               ; preds = %38
  br i1 %35, label %71, label %41

41:                                               ; preds = %40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %71

42:                                               ; preds = %38
  %43 = landingpad { ptr, i32 }
          cleanup
  br i1 %35, label %72, label %44

44:                                               ; preds = %42
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %72

45:                                               ; preds = %8
  %46 = tail call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %47 = tail call noundef i64 @_ZNK8cMessage9getTreeIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %48 = load ptr, ptr %1, align 8, !tbaa !91
  %49 = getelementptr inbounds ptr, ptr %48, i64 5
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %52 = load ptr, ptr %1, align 8, !tbaa !91
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %56 = tail call noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %57 = tail call noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %58 = tail call noundef signext i16 @_ZNK8cMessage21getSchedulingPriorityEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %59 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !105
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1080) %60, ptr noundef nonnull %1) #19
  %63 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  br label %64

64:                                               ; preds = %45, %62
  %65 = phi ptr [ %63, %62 ], [ null, %45 ]
  invoke void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %46, i64 noundef %47, ptr noundef %51, ptr noundef %55, i64 noundef %56, i16 noundef signext %57, i16 noundef signext %58, i64 noundef 0, i1 noundef zeroext false, ptr noundef %65) #19
          to label %66 unwind label %68

66:                                               ; preds = %64
  br i1 %61, label %71, label %67

67:                                               ; preds = %66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %71

68:                                               ; preds = %64
  %69 = landingpad { ptr, i32 }
          cleanup
  br i1 %61, label %72, label %70

70:                                               ; preds = %68
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %72

71:                                               ; preds = %66, %41, %40, %67, %2
  ret void

72:                                               ; preds = %68, %44, %42, %70
  %73 = phi { ptr, i32 } [ %69, %70 ], [ %43, %42 ], [ %43, %44 ], [ %69, %68 ]
  resume { ptr, i32 } %73
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8cMessage9getTreeIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  %3 = load i64, ptr %2, align 8, !tbaa !141
  ret i64 %3
}

; Function Attrs: optsize
declare noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 4, !tbaa !143
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK8cMessage21getSchedulingPriorityEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !145
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !147
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cPacket11hasBitErrorEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !149 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !134
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager16messageScheduledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN19EventlogFileManager9beginSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(43) %0, ptr noundef %1) #19
  tail call void @_ZN19EventlogFileManager7endSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(43) %0, ptr noundef %1) #19
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager7endSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = alloca %class.SimTime, align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !91
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call noundef zeroext i1 @_ZNK7cPacket16isReceptionStartEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #19
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi i1 [ %13, %12 ], [ false, %7 ]
  %16 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  call void @_ZNK8cMessage14getArrivalTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  call void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr noundef %17, ptr noundef nonnull %3, i1 noundef zeroext %15) #19
  br label %18

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager16messageCancelledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %10 = tail call noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  tail call void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr noundef %8, i64 noundef %9, i64 noundef %10) #19
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !96 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !97, !range !113, !noundef !114
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call noundef i32 @_ZNK8cMessage17getSenderModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %15 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  %16 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %15) #19
  %17 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  br label %18

18:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8cMessage17getSenderModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !150
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !151 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture readnone %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !96 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  %11 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %10) #19
  %12 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  tail call void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr noundef %9, i32 noundef %11, i32 noundef %12) #19
  br label %13

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !96 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !97, !range !113, !noundef !114
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  %15 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %14) #19
  %16 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr noundef %13, i32 noundef %15, i32 noundef %16, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  br label %17

17:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cPacket16isReceptionStartEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !134
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK8cMessage14getArrivalTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #4 comdat align 2 !prof !152 {
  %3 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager14messageDeletedEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %10 = trunc i64 %9 to i32
  %11 = tail call noundef i64 @_ZNK8cMessage22getPreviousEventNumberEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  tail call void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr noundef %8, i32 noundef %10, i64 noundef %11) #19
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !96 {
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !97, !range !113, !noundef !114
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 36
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(104) %1) #19
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !tbaa !91
  %16 = getelementptr inbounds ptr, ptr %15, i64 36
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(104) %2) #19
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = icmp eq ptr %3, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @vsnprintf(ptr noundef nonnull @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, i64 noundef 1024, ptr noundef nonnull %3, ptr noundef %4) #23
  store i8 0, ptr getelementptr inbounds ([1024 x i8], ptr @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, i64 0, i64 1023), align 1, !tbaa !153
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, %21 ], [ @.str.8, %19 ]
  %25 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !108
  %27 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %28 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %2) #19
  tail call void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef nonnull %24) #19
  br label %29

29:                                               ; preds = %9, %14, %23, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager18componentMethodEndEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #4 align 2 !prof !96 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !97, !range !113, !noundef !114
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  tail call void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr noundef %7) #19
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager13moduleCreatedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 31
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(288) %8) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %13 = load ptr, ptr %1, align 8, !tbaa !91
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %16 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %17 = load ptr, ptr @CFGID_MODULE_EVENTLOG_RECORDING, align 8, !tbaa !87
  %18 = load ptr, ptr %12, align 8, !tbaa !91
  %19 = getelementptr inbounds ptr, ptr %18, i64 33
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %16, ptr noundef %17, i1 noundef zeroext false) #19
          to label %22 unwind label %41

22:                                               ; preds = %7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @_ZN7cModule15setRecordEventsEb(ptr noundef nonnull align 8 dereferenceable(176) %1, i1 noundef zeroext %21) #19
  %23 = call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI7cModule, ptr nonnull @_ZTI15cCompoundModule, i64 0) #20
  %24 = icmp ne ptr %23, null
  %25 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !108
  %27 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %28 = load ptr, ptr %1, align 8, !tbaa !91
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %32 = load ptr, ptr %1, align 8, !tbaa !91
  %33 = getelementptr inbounds ptr, ptr %32, i64 35
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(104) %1) #19
  %36 = load ptr, ptr %1, align 8, !tbaa !91
  %37 = getelementptr inbounds ptr, ptr %36, i64 37
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %43

41:                                               ; preds = %7
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %42

43:                                               ; preds = %22
  %44 = load ptr, ptr %1, align 8, !tbaa !91
  %45 = getelementptr inbounds ptr, ptr %44, i64 37
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %48 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %47) #19
  br label %49

49:                                               ; preds = %22, %43
  %50 = phi i32 [ %48, %43 ], [ -1, %22 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !91
  %52 = getelementptr inbounds ptr, ptr %51, i64 7
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  call void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr noundef %26, i32 noundef %27, ptr noundef %31, ptr noundef %35, i32 noundef %50, ptr noundef %54, i1 noundef zeroext %24) #19
  br label %55

55:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule15setRecordEventsEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !96 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 256, i1 noundef zeroext %1) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager13moduleDeletedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  tail call void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr noundef %8, i32 noundef %9) #19
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager16moduleReparentedEP7cModuleS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr nocapture readnone %2) unnamed_addr #4 align 2 !prof !96 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %11 = load ptr, ptr %1, align 8, !tbaa !91
  %12 = getelementptr inbounds ptr, ptr %11, i64 37
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %15 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %14) #19
  tail call void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr noundef %9, i32 noundef %10, i32 noundef %15) #19
  br label %16

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager11gateCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %10 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #19
  %11 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %12 = load ptr, ptr %1, align 8, !tbaa !91
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %16 = tail call noundef zeroext i1 @_ZNK5cGate8isVectorEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  br label %19

19:                                               ; preds = %6, %17
  %20 = phi i32 [ %18, %17 ], [ -1, %6 ]
  %21 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %22 = icmp eq i32 %21, 79
  tail call void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr noundef %8, i32 noundef %10, i32 noundef %11, ptr noundef %15, i32 noundef %20, i1 noundef zeroext %22) #19
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate8isVectorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !154 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #19
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #19
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #19
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager11gateDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %10 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #19
  %11 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  tail call void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr noundef %8, i32 noundef %10, i32 noundef %11) #19
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager17connectionCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %11 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %10) #19
  %12 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %13 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  %14 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %13) #19
  %15 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  tail call void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr noundef %9, i32 noundef %11, i32 noundef %12, i32 noundef %14, i32 noundef %15) #19
  br label %16

16:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !159 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager17connectionDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  %10 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #19
  %11 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  tail call void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr noundef %8, i32 noundef %10, i32 noundef %11) #19
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager20displayStringChangedEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !96 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !97, !range !113, !noundef !114
  %5 = icmp eq i8 %4, 0
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %15 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #19
  %16 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #19
  tail call void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr noundef %13, i32 noundef %14, ptr noundef %16) #19
  br label %29

17:                                               ; preds = %8
  %18 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI8cChannel, i64 0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = tail call noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %1) #19
  %22 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %21) #19
  %25 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %24) #19
  %26 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %21) #19
  %27 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #19
  %28 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #19
  tail call void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr noundef %23, i32 noundef %25, i32 noundef %26, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %11, %20, %17, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #5 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cChannel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN19EventlogFileManager5sputnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !96 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !97, !range !113, !noundef !114
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  tail call void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr noundef %9, ptr noundef %1, i32 noundef %2) #19
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !164 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !165

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !153
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !166

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #21
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #23
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !167
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #19
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19) #19
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !172, !range !113, !noundef !114
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !173
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !174 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !175 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #19
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #19
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !176 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !177 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  store i64 %6, ptr %4, align 8, !tbaa !178
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !179

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #19
  %10 = load i64, ptr %4, align 8, !tbaa !178
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #19
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #19
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #23
  store ptr null, ptr %5, align 8, !tbaa !180
  %15 = load i64, ptr %4, align 8, !tbaa !178
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #19
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !177 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !87
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #19
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !177 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !182

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #27
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !177 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !177 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !183 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #19
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !184
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #19
  store i64 %5, ptr %0, align 8, !tbaa !186
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !183 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !187
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !188

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #19
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !189 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !190

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !191 {
  %3 = load i64, ptr %1, align 8, !tbaa !186
  store i64 %3, ptr %0, align 8, !tbaa !186
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 !prof !192 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !134
  %6 = trunc i32 %1 to i16
  br i1 %2, label %7, label %9, !prof !193

7:                                                ; preds = %3
  %8 = or i16 %5, %6
  br label %12

9:                                                ; preds = %3
  %10 = xor i16 %6, -1
  %11 = and i16 %5, %10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i16 [ %11, %9 ], [ %8, %7 ]
  store i16 %13, ptr %4, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !194 {
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !195
  %4 = icmp sgt i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !157 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !197
  %5 = ashr i32 %4, 2
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5, !prof !198
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !158 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !197
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 73, i32 79
  ret i32 %7
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_eventlogfilemgr.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { noreturn }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { noreturn optsize }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!84}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_37Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_37Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_37Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_55Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_55Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_55Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_56Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_56Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_56Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_57Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!45 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_57Ev, ptr @_Znwm, i64 1}
!46 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_57Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!47 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!48 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 203513}
!49 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Z10opp_strdupPKc, i64 325620}
!50 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!51 = !{ptr @_ZNK11cSimulation10getSimTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 3302180619}
!52 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!53 = !{ptr @_ZNK8cMessage14getArrivalTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 48398671114}
!54 = !{ptr @_ZNK5cGate8isVectorEv, ptr @_ZNK5cGate4Desc8isVectorEv, i64 87858}
!55 = !{ptr @_ZNK5cGate8getIndexEv, ptr @_ZNK5cGate4Desc7indexOfEPKS_, i64 14375669}
!56 = !{ptr @_ZNK5cGate7getTypeEv, ptr @_ZNK5cGate4Desc9getTypeOfEPKS_, i64 202685165}
!57 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!58 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!59 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!60 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!61 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!62 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!63 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!64 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!65 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!66 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!67 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!68 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!69 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!70 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!71 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!72 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!73 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!74 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!75 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!76 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!77 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!78 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!79 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!80 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!81 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!82 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!83 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 1}
!86 = !{!"eventlogfilemgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_37Ev"}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C++ TBAA"}
!91 = !{!92, !92, i64 0}
!92 = !{!"vtable pointer", !90, i64 0}
!93 = !{!"eventlogfilemgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_55Ev"}
!94 = !{!"eventlogfilemgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_56Ev"}
!95 = !{!"eventlogfilemgr.cc:_ZN12_GLOBAL__N_119__onstartup_func_57Ev"}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !100, i64 40}
!98 = !{!"_ZTS19EventlogFileManager", !99, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !100, i64 40, !100, i64 41, !100, i64 42}
!99 = !{!"_ZTS10opp_string", !88, i64 0}
!100 = !{!"bool", !89, i64 0}
!101 = !{!98, !100, i64 42}
!102 = !{!98, !100, i64 41}
!103 = !{!"function_entry_count", i64 439586}
!104 = !{!99, !88, i64 0}
!105 = !{!98, !88, i64 24}
!106 = !{!98, !88, i64 32}
!107 = !{!"function_entry_count", i64 444560}
!108 = !{!98, !88, i64 16}
!109 = !{!"function_entry_count", i64 21674314260}
!110 = !{!"function_entry_count", i64 325620}
!111 = !{!"function_entry_count", i64 397759682}
!112 = !{!"branch_weights", i32 51305, i32 397708379}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !{!"function_entry_count", i64 980188428}
!116 = !{!"function_entry_count", i64 5379836753}
!117 = !{!"function_entry_count", i64 4920}
!118 = !{!119, !88, i64 72}
!119 = !{!"_ZTS11cSimulation", !120, i64 0, !125, i64 36, !125, i64 40, !88, i64 48, !125, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !125, i64 96, !88, i64 104, !88, i64 112, !126, i64 120, !127, i64 128, !88, i64 136, !88, i64 144, !88, i64 152, !128, i64 160}
!120 = !{!"_ZTS23cNoncopyableOwnedObject", !121, i64 0}
!121 = !{!"_ZTS12cOwnedObject", !122, i64 0, !88, i64 24, !125, i64 32}
!122 = !{!"_ZTS12cNamedObject", !123, i64 0, !88, i64 8, !124, i64 16, !124, i64 18}
!123 = !{!"_ZTS7cObject"}
!124 = !{!"short", !89, i64 0}
!125 = !{!"int", !89, i64 0}
!126 = !{!"_ZTS7SimTime", !127, i64 0}
!127 = !{!"long", !89, i64 0}
!128 = !{!"_ZTS12cMessageHeap", !121, i64 0, !88, i64 40, !125, i64 48, !125, i64 52, !127, i64 56}
!129 = !{!"function_entry_count", i64 936672086}
!130 = !{!131, !125, i64 112}
!131 = !{!"_ZTS7cModule", !132, i64 0, !88, i64 104, !125, i64 112, !88, i64 120, !88, i64 128, !88, i64 136, !88, i64 144, !125, i64 152, !88, i64 160, !125, i64 168, !125, i64 172}
!132 = !{!"_ZTS10cComponent", !133, i64 0, !88, i64 56, !124, i64 64, !88, i64 72, !124, i64 80, !124, i64 82, !88, i64 88, !88, i64 96}
!133 = !{!"_ZTS12cDefaultList", !120, i64 0, !88, i64 40, !125, i64 48, !125, i64 52}
!134 = !{!122, !124, i64 16}
!135 = !{!"function_entry_count", i64 3302180619}
!136 = !{!"function_entry_count", i64 988394}
!137 = !{!119, !127, i64 128}
!138 = !{!139, !127, i64 136}
!139 = !{!"_ZTS8cMessage", !121, i64 0, !124, i64 36, !124, i64 38, !124, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !125, i64 72, !125, i64 76, !125, i64 80, !125, i64 84, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !125, i64 120, !127, i64 128, !127, i64 136, !127, i64 144, !127, i64 152}
!140 = !{!139, !127, i64 144}
!141 = !{!139, !127, i64 152}
!142 = !{!"function_entry_count", i64 265000013}
!143 = !{!139, !124, i64 36}
!144 = !{!"function_entry_count", i64 6629884608}
!145 = !{!139, !124, i64 38}
!146 = !{!"function_entry_count", i64 300053514}
!147 = !{!148, !127, i64 160}
!148 = !{!"_ZTS7cPacket", !139, i64 0, !127, i64 160, !126, i64 168, !88, i64 176, !124, i64 184}
!149 = !{!"function_entry_count", i64 111944031}
!150 = !{!139, !125, i64 72}
!151 = !{!"function_entry_count", i64 57319387120}
!152 = !{!"function_entry_count", i64 48398671114}
!153 = !{!89, !89, i64 0}
!154 = !{!"function_entry_count", i64 87858}
!155 = !{!156, !88, i64 8}
!156 = !{!"_ZTS5cGate", !123, i64 0, !88, i64 8, !125, i64 16, !88, i64 24, !88, i64 32, !88, i64 40}
!157 = !{!"function_entry_count", i64 14375669}
!158 = !{!"function_entry_count", i64 202685165}
!159 = !{!"function_entry_count", i64 309856362}
!160 = !{!156, !88, i64 40}
!161 = !{!"function_entry_count", i64 214511598}
!162 = !{!163, !88, i64 104}
!163 = !{!"_ZTS8cChannel", !132, i64 0, !88, i64 104, !125, i64 112}
!164 = !{!"function_entry_count", i64 188204319}
!165 = !{!"branch_weights", i32 13, i32 188204308}
!166 = !{!"branch_weights", i32 7, i32 188204302}
!167 = !{!168, !125, i64 8}
!168 = !{!"_ZTS10cException", !169, i64 0, !125, i64 8, !170, i64 16, !100, i64 48, !170, i64 56, !170, i64 88, !125, i64 120}
!169 = !{!"_ZTSSt9exception"}
!170 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !171, i64 0, !127, i64 8, !89, i64 16}
!171 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !88, i64 0}
!172 = !{!168, !100, i64 48}
!173 = !{!168, !125, i64 120}
!174 = !{!"function_entry_count", i64 2}
!175 = !{!"function_entry_count", i64 2107073}
!176 = !{!"function_entry_count", i64 1891507}
!177 = !{!"function_entry_count", i64 1889443}
!178 = !{!127, !127, i64 0}
!179 = !{!"branch_weights", i32 1257663, i32 631782}
!180 = !{!181, !88, i64 0}
!181 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !88, i64 0}
!182 = !{!"branch_weights", i32 1889444, i32 1}
!183 = !{!"function_entry_count", i64 980215783}
!184 = !{!185, !185, i64 0}
!185 = !{!"double", !89, i64 0}
!186 = !{!126, !127, i64 0}
!187 = !{!125, !125, i64 0}
!188 = !{!"branch_weights", i32 1, i32 980215784}
!189 = !{!"function_entry_count", i64 1656274258}
!190 = !{!"branch_weights", i32 1, i32 1656274259}
!191 = !{!"function_entry_count", i64 61624744013}
!192 = !{!"function_entry_count", i64 202993470}
!193 = !{!"branch_weights", i32 380268, i32 202613204}
!194 = !{!"function_entry_count", i64 926392781}
!195 = !{!196, !125, i64 16}
!196 = !{!"_ZTSN5cGate4DescE", !88, i64 0, !88, i64 8, !125, i64 16, !89, i64 24, !89, i64 32}
!197 = !{!156, !125, i64 16}
!198 = !{!"branch_weights", i32 1, i32 14375670}
