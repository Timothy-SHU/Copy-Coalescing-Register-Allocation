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
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.5" = type { i8 }

$_ZN10opp_stringaSEPKc = comdat any

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

$_ZN7SimTimeaSEd = comdat any

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
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_eventlogfilemgr.cc, ptr null }]

@_ZN19EventlogFileManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19EventlogFileManagerC2Ev
@_ZN19EventlogFileManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19EventlogFileManagerD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_37Ev() #3 personality ptr @__gxx_personality_v0 !prof !57 !PGOFuncName !58 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.9, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
          to label %3 unwind label %7, !prof !59

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_FILE, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !66
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #24
  resume { ptr, i32 } %8
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_55Ev() #3 personality ptr @__gxx_personality_v0 !prof !57 !PGOFuncName !67 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.12, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 7, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13)
          to label %3 unwind label %7, !prof !59

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_MESSAGE_DETAIL_PATTERN, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !66
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_56Ev() #3 personality ptr @__gxx_personality_v0 !prof !57 !PGOFuncName !68 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 7, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15)
          to label %3 unwind label %7, !prof !59

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_EVENTLOG_RECORDING_INTERVALS, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !66
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_57Ev() #3 personality ptr @__gxx_personality_v0 !prof !57 !PGOFuncName !69 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions)
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.16, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18)
          to label %3 unwind label %7, !prof !59

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_MODULE_EVENTLOG_RECORDING, align 8, !tbaa !60
  %4 = load ptr, ptr %1, align 8, !tbaa !64
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !66
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #24
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19EventlogFileManagerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(43) %0) unnamed_addr #4 align 2 !prof !70 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV19EventlogFileManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  store i8 1, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 7
  store i8 1, ptr %4, align 2, !tbaa !75
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 6
  store i8 1, ptr %5, align 1, !tbaa !76
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN19EventlogFileManagerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #5 align 2 !prof !70 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV19EventlogFileManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080) %3) #25
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN9IntervalsD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  tail call void @_ZdlPv(ptr noundef %8) #24
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZdaPv(ptr noundef %13) #24
  br label %16

16:                                               ; preds = %11, %15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN9IntervalsD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN19EventlogFileManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #5 align 2 !prof !70 {
  tail call void @_ZN19EventlogFileManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(43) %0) #25
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager5setupEv(ptr noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_ZN13ObjectPrinterD1Ev(ptr noundef nonnull align 8 dereferenceable(1080) %5) #25
  tail call void @_ZdlPv(ptr noundef %5) #24
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !77
  %9 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds ptr, ptr %10, i64 31
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(288) %9)
  %14 = load ptr, ptr @CFGID_EVENTLOG_MESSAGE_DETAIL_PATTERN, align 8, !tbaa !60
  %15 = load ptr, ptr %13, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %14, ptr noundef null)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %8
  %21 = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #23
  invoke void @_ZN13ObjectPrinterC1EPKci(ptr noundef nonnull align 8 dereferenceable(1080) %21, ptr noundef nonnull %18, i32 noundef 3)
          to label %22 unwind label %23

22:                                               ; preds = %20
  store ptr %21, ptr %4, align 8, !tbaa !77
  br label %25

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %21) #24
  br label %126

25:                                               ; preds = %22, %8
  %26 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = getelementptr inbounds ptr, ptr %27, i64 31
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(288) %26)
  %31 = load ptr, ptr @CFGID_EVENTLOG_RECORDING_INTERVALS, align 8, !tbaa !60
  %32 = load ptr, ptr %30, align 8, !tbaa !64
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31, ptr noundef null)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %25
  %38 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
  invoke void @_ZN9IntervalsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %39 unwind label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  store ptr %38, ptr %40, align 8, !tbaa !78
  tail call void @_ZN9Intervals5parseEPKc(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %35)
  br label %43

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %38) #24
  br label %126

43:                                               ; preds = %39, %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  %44 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = getelementptr inbounds ptr, ptr %45, i64 31
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(288) %44)
  %49 = load ptr, ptr @CFGID_EVENTLOG_FILE, align 8, !tbaa !60
  %50 = load ptr, ptr %48, align 8, !tbaa !64
  %51 = getelementptr inbounds ptr, ptr %50, i64 29
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %49)
  %53 = load ptr, ptr %2, align 8, !tbaa !80
  %54 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 1
  %55 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53)
          to label %56 unwind label %79

56:                                               ; preds = %43
  %57 = load ptr, ptr %2, align 8, !tbaa !80
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !84
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %57) #24
  br label %65

65:                                               ; preds = %60, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  %66 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60, !nonnull !85, !noundef !85
  %67 = call ptr @__dynamic_cast(ptr nonnull %66, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #25
  %68 = load ptr, ptr %67, align 8, !tbaa !64
  %69 = getelementptr inbounds ptr, ptr %68, i64 68
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(600) %67, ptr noundef nonnull align 8 dereferenceable(8) %54)
  %71 = load ptr, ptr %54, align 8, !tbaa !79
  %72 = icmp eq ptr %71, null
  %73 = select i1 %72, ptr @.str.8, ptr %71
  %74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %73)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %75 = load ptr, ptr %54, align 8, !tbaa !79
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr @.str.8, ptr %75
  call void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %77)
  %78 = load ptr, ptr %3, align 8, !tbaa !80
  invoke void @_Z6mkPathPKc(ptr noundef %78)
          to label %90 unwind label %111

79:                                               ; preds = %43
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load ptr, ptr %2, align 8, !tbaa !80
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !84
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %81) #24
  br label %89

89:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  br label %126

90:                                               ; preds = %65
  %91 = load ptr, ptr %3, align 8, !tbaa !80
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !84
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #24
  br label %99

99:                                               ; preds = %94, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  %100 = load ptr, ptr %54, align 8, !tbaa !79
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, ptr @.str.8, ptr %100
  %103 = call noalias ptr @fopen(ptr noundef nonnull %102, ptr noundef nonnull @.str.5)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = call ptr @__cxa_allocate_exception(i64 128) #25
  %107 = load ptr, ptr %54, align 8, !tbaa !79
  %108 = icmp eq ptr %107, null
  %109 = select i1 %108, ptr @.str.8, ptr %107
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %106, ptr noundef nonnull @.str.6, ptr noundef nonnull %109)
          to label %110 unwind label %122

110:                                              ; preds = %105
  call void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #26
  unreachable

111:                                              ; preds = %65
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = load ptr, ptr %3, align 8, !tbaa !80
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !84
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %121

120:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %113) #24
  br label %121

121:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %126

122:                                              ; preds = %105
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %106) #25
  br label %126

124:                                              ; preds = %99
  %125 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  store ptr %103, ptr %125, align 8, !tbaa !86
  ret void

126:                                              ; preds = %41, %89, %121, %122, %23
  %127 = phi { ptr, i32 } [ %24, %23 ], [ %123, %122 ], [ %112, %121 ], [ %80, %89 ], [ %42, %41 ]
  resume { ptr, i32 } %127
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN13ObjectPrinterC1EPKci(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef, i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN9IntervalsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN9Intervals5parseEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 !prof !87 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !88

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef %3) #24
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %16, label %8, !prof !89

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1, !tbaa !90
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !91

11:                                               ; preds = %8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %13 = add i64 %12, 1
  %14 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %13) #23
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %16

16:                                               ; preds = %6, %8, %11
  %17 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  store ptr %17, ptr %0, align 8, !tbaa !79
  ret ptr %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

declare void @_Z6mkPathPKc(ptr noundef) local_unnamed_addr #0

declare void @_Z11directoryOfB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager8startRunEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #3 align 2 !prof !70 {
  %2 = alloca %class.SimTime, align 8
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(288) %7)
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds ptr, ptr %12, i64 51
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.7)
  %16 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00)
  %19 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !60
  %20 = getelementptr inbounds %class.cSimulation, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = getelementptr inbounds %class.cModule, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !103
  call void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr noundef %17, i64 noundef 0, ptr noundef nonnull %2, i32 noundef %23, i64 noundef -1)
  %24 = load ptr, ptr %16, align 8, !tbaa !86
  call void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr noundef %24, i32 noundef 1024, ptr noundef %15)
  %25 = load ptr, ptr %16, align 8, !tbaa !86
  %26 = call i32 @fflush(ptr noundef %25)
  br label %27

27:                                               ; preds = %6, %1
  ret void
}

declare void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(43) %0) unnamed_addr #3 align 2 !prof !70 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !71, !range !92, !noundef !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  tail call void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr noundef %7)
  %8 = load ptr, ptr %6, align 8, !tbaa !86
  %9 = tail call i32 @fclose(ptr noundef %8)
  store ptr null, ptr %6, align 8, !tbaa !86
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

declare void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN19EventlogFileManager5flushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #12 align 2 !prof !70 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !71, !range !92, !noundef !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = tail call i32 @fflush(ptr noundef %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager15simulationEventEP8cMessage(ptr nocapture noundef nonnull align 8 dereferenceable(43) %0, ptr nocapture noundef readonly %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = alloca %class.SimTime, align 8
  %4 = alloca %class.SimTime, align 8
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !71, !range !92, !noundef !85
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !60
  %10 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %9)
  %11 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !60
  %12 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %11)
  %13 = getelementptr inbounds %class.cNamedObject, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !107
  %15 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 6
  %16 = lshr i16 %14, 8
  %17 = trunc i16 %16 to i8
  %18 = and i8 %17, 1
  store i8 %18, ptr %15, align 1, !tbaa !76
  %19 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %24 = getelementptr inbounds %class.cSimulation, ptr %23, i64 0, i32 12
  %25 = load i64, ptr %24, align 8, !tbaa !111, !noalias !108
  store i64 %25, ptr %3, align 8, !tbaa !111, !alias.scope !108
  %26 = call noundef zeroext i1 @_ZN9Intervals8containsE7SimTime(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %3)
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %22, %8
  %29 = phi i8 [ 1, %8 ], [ %27, %22 ]
  %30 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 7
  store i8 %29, ptr %30, align 2, !tbaa !75
  %31 = load i8, ptr %15, align 1, !tbaa !76, !range !92, !noundef !85
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 0, i8 %29
  store i8 %33, ptr %5, align 8, !tbaa !71
  %34 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !60
  %37 = getelementptr inbounds %class.cSimulation, ptr %36, i64 0, i32 13
  %38 = load i64, ptr %37, align 8, !tbaa !112
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %39 = getelementptr inbounds %class.cSimulation, ptr %36, i64 0, i32 12
  %40 = load i64, ptr %39, align 8, !tbaa !111, !noalias !113
  store i64 %40, ptr %4, align 8, !tbaa !111, !alias.scope !113
  %41 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !103
  %43 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 18
  %46 = load i64, ptr %45, align 8, !tbaa !118
  call void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr noundef %35, i64 noundef %38, ptr noundef nonnull %4, i32 noundef %42, i64 noundef %44, i64 noundef %46)
  br label %47

47:                                               ; preds = %28, %2
  ret void
}

declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN9Intervals8containsE7SimTime(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

declare void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager6bubbleEP10cComponentPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !70 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  %7 = icmp eq ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !103
  tail call void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr noundef %14, i32 noundef %16, ptr noundef %2)
  br label %19

17:                                               ; preds = %9
  %18 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI8cChannel, i64 0) #25
  br label %19

19:                                               ; preds = %17, %12, %3
  ret void
}

declare void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager9beginSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !71, !range !92, !noundef !85
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %117, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(160) %1)
  %13 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 18
  %16 = load i64, ptr %15, align 8, !tbaa !118
  %17 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 19
  %18 = load i64, ptr %17, align 8, !tbaa !119
  br i1 %12, label %19, label %72

19:                                               ; preds = %8
  %20 = tail call noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr noundef nonnull align 8 dereferenceable(186) %1)
  %21 = tail call noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr noundef nonnull align 8 dereferenceable(186) %1)
  %22 = load ptr, ptr %1, align 8, !tbaa !64
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %26 = load ptr, ptr %1, align 8, !tbaa !64
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %30 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  %31 = load i64, ptr %30, align 8, !tbaa !116
  %32 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %33 = load i16, ptr %32, align 4, !tbaa !120
  %34 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !121
  %36 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !122
  %38 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !107
  %40 = and i16 %39, 8
  %41 = icmp ne i16 %40, 0
  %42 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1080) %43, ptr noundef nonnull %1)
  %46 = load ptr, ptr %3, align 8, !tbaa !80
  br label %47

47:                                               ; preds = %19, %45
  %48 = phi ptr [ %46, %45 ], [ null, %19 ]
  invoke void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %20, i64 noundef %21, ptr noundef %25, ptr noundef %29, i64 noundef %31, i16 noundef signext %33, i16 noundef signext %35, i64 noundef %37, i1 noundef zeroext %41, ptr noundef %48)
          to label %49 unwind label %60

49:                                               ; preds = %47
  br i1 %44, label %117, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %3, align 8, !tbaa !80
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !84
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %51) #24
  br label %59

59:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %117

60:                                               ; preds = %47
  %61 = landingpad { ptr, i32 }
          cleanup
  br i1 %44, label %118, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %3, align 8, !tbaa !80
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !84
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #24
  br label %71

71:                                               ; preds = %66, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %118

72:                                               ; preds = %8
  %73 = load ptr, ptr %1, align 8, !tbaa !64
  %74 = getelementptr inbounds ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %77 = load ptr, ptr %1, align 8, !tbaa !64
  %78 = getelementptr inbounds ptr, ptr %77, i64 7
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %81 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  %82 = load i64, ptr %81, align 8, !tbaa !116
  %83 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %84 = load i16, ptr %83, align 4, !tbaa !120
  %85 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !121
  %87 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !77
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1080) %88, ptr noundef nonnull %1)
  %91 = load ptr, ptr %4, align 8, !tbaa !80
  br label %92

92:                                               ; preds = %72, %90
  %93 = phi ptr [ %91, %90 ], [ null, %72 ]
  invoke void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %16, i64 noundef %18, ptr noundef %76, ptr noundef %80, i64 noundef %82, i16 noundef signext %84, i16 noundef signext %86, i64 noundef 0, i1 noundef zeroext false, ptr noundef %93)
          to label %94 unwind label %105

94:                                               ; preds = %92
  br i1 %89, label %117, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %4, align 8, !tbaa !80
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !84
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  br label %104

103:                                              ; preds = %95
  call void @_ZdlPv(ptr noundef %96) #24
  br label %104

104:                                              ; preds = %99, %103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %117

105:                                              ; preds = %92
  %106 = landingpad { ptr, i32 }
          cleanup
  br i1 %89, label %118, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %4, align 8, !tbaa !80
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !84
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %107
  call void @_ZdlPv(ptr noundef %108) #24
  br label %116

116:                                              ; preds = %111, %115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %118

117:                                              ; preds = %94, %59, %49, %104, %2
  ret void

118:                                              ; preds = %105, %71, %60, %116
  %119 = phi { ptr, i32 } [ %106, %116 ], [ %61, %60 ], [ %61, %71 ], [ %106, %105 ]
  resume { ptr, i32 } %119
}

declare void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

declare noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #0

declare noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr noundef nonnull align 8 dereferenceable(186)) local_unnamed_addr #0

declare void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager16messageScheduledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN19EventlogFileManager9beginSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(43) %0, ptr noundef %1)
  tail call void @_ZN19EventlogFileManager7endSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(43) %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager7endSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = alloca %class.SimTime, align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !64
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(160) %1)
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !107
  %15 = and i16 %14, 4
  %16 = icmp ne i16 %15, 0
  br label %17

17:                                               ; preds = %7, %12
  %18 = phi i1 [ %16, %12 ], [ false, %7 ]
  %19 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %21 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  %22 = load i64, ptr %21, align 8, !tbaa !111, !noalias !124
  store i64 %22, ptr %3, align 8, !tbaa !111, !alias.scope !124
  call void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr noundef %20, ptr noundef nonnull %3, i1 noundef zeroext %18)
  br label %23

23:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager16messageCancelledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture noundef readonly %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 18
  %10 = load i64, ptr %9, align 8, !tbaa !118
  %11 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  %12 = load i64, ptr %11, align 8, !tbaa !116
  tail call void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr noundef %8, i64 noundef %10, i64 noundef %12)
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #3 align 2 !prof !70 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !71, !range !92, !noundef !85
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !127
  %16 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %17 = getelementptr inbounds %class.cModule, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %20 = load i64, ptr %3, align 8, !tbaa !111
  store i64 %20, ptr %6, align 8, !tbaa !111
  %21 = load i64, ptr %4, align 8, !tbaa !111
  store i64 %21, ptr %7, align 8, !tbaa !111
  call void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %19, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %22

22:                                               ; preds = %11, %5
  ret void
}

declare void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

declare noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture readnone %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !70 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %11 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  tail call void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr noundef %9, i32 noundef %12, i32 noundef %13)
  br label %14

14:                                               ; preds = %7, %3
  ret void
}

declare void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #3 align 2 !prof !70 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !71, !range !92, !noundef !85
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %15 = getelementptr inbounds %class.cModule, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !103
  %17 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %18 = load i64, ptr %3, align 8, !tbaa !111
  store i64 %18, ptr %6, align 8, !tbaa !111
  %19 = load i64, ptr %4, align 8, !tbaa !111
  store i64 %19, ptr %7, align 8, !tbaa !111
  call void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr noundef %13, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %20

20:                                               ; preds = %11, %5
  ret void
}

declare void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager14messageDeletedEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture noundef readonly %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 18
  %10 = load i64, ptr %9, align 8, !tbaa !118
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  %13 = load i64, ptr %12, align 8, !tbaa !116
  tail call void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr noundef %8, i32 noundef %11, i64 noundef %13)
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #3 align 2 !prof !70 {
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !71, !range !92, !noundef !85
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !64
  %11 = getelementptr inbounds ptr, ptr %10, i64 36
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(104) %1)
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !tbaa !64
  %16 = getelementptr inbounds ptr, ptr %15, i64 36
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = icmp eq ptr %3, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @vsnprintf(ptr noundef nonnull @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, i64 noundef 1024, ptr noundef nonnull %3, ptr noundef %4) #25
  store i8 0, ptr getelementptr inbounds ([1024 x i8], ptr @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, i64 0, i64 1023), align 1, !tbaa !90
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ @_ZZN19EventlogFileManager20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tagE13methodTextBuf, %21 ], [ @.str.8, %19 ]
  %25 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !103
  %29 = getelementptr inbounds %class.cModule, ptr %2, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !103
  tail call void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %24)
  br label %31

31:                                               ; preds = %9, %14, %23, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #11

declare void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager18componentMethodEndEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0) unnamed_addr #3 align 2 !prof !70 {
  %2 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !71, !range !92, !noundef !85
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  tail call void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager13moduleCreatedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %80, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !60
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds ptr, ptr %9, i64 31
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(288) %8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %13 = load ptr, ptr %1, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1)
  %16 = load ptr, ptr %3, align 8, !tbaa !80
  %17 = load ptr, ptr @CFGID_MODULE_EVENTLOG_RECORDING, align 8, !tbaa !60
  %18 = load ptr, ptr %12, align 8, !tbaa !64
  %19 = getelementptr inbounds ptr, ptr %18, i64 33
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %16, ptr noundef %17, i1 noundef zeroext false)
          to label %22 unwind label %56

22:                                               ; preds = %7
  %23 = load ptr, ptr %3, align 8, !tbaa !80
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !84
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %23) #24
  br label %31

31:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  %32 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !107
  %34 = and i16 %33, -257
  %35 = select i1 %21, i16 256, i16 0
  %36 = or disjoint i16 %34, %35
  store i16 %36, ptr %32, align 8, !tbaa !107
  %37 = call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI7cModule, ptr nonnull @_ZTI15cCompoundModule, i64 0) #25
  %38 = icmp ne ptr %37, null
  %39 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !103
  %43 = load ptr, ptr %1, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %47 = load ptr, ptr %1, align 8, !tbaa !64
  %48 = getelementptr inbounds ptr, ptr %47, i64 35
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %51 = load ptr, ptr %1, align 8, !tbaa !64
  %52 = getelementptr inbounds ptr, ptr %51, i64 37
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %67

56:                                               ; preds = %7
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = load ptr, ptr %3, align 8, !tbaa !80
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !84
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %66

65:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %58) #24
  br label %66

66:                                               ; preds = %61, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  resume { ptr, i32 } %57

67:                                               ; preds = %31
  %68 = load ptr, ptr %1, align 8, !tbaa !64
  %69 = getelementptr inbounds ptr, ptr %68, i64 37
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %72 = getelementptr inbounds %class.cModule, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !103
  br label %74

74:                                               ; preds = %31, %67
  %75 = phi i32 [ %73, %67 ], [ -1, %31 ]
  %76 = load ptr, ptr %1, align 8, !tbaa !64
  %77 = getelementptr inbounds ptr, ptr %76, i64 7
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(176) %1)
  call void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr noundef %40, i32 noundef %42, ptr noundef %46, ptr noundef %50, i32 noundef %75, ptr noundef %79, i1 noundef zeroext %38)
  br label %80

80:                                               ; preds = %74, %2
  ret void
}

declare void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager13moduleDeletedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr nocapture noundef readonly %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !103
  tail call void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr noundef %8, i32 noundef %10)
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager16moduleReparentedEP7cModuleS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 !prof !70 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = load ptr, ptr %1, align 8, !tbaa !64
  %13 = getelementptr inbounds ptr, ptr %12, i64 37
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(176) %1)
  %16 = getelementptr inbounds %class.cModule, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !103
  tail call void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr noundef %9, i32 noundef %11, i32 noundef %17)
  br label %18

18:                                               ; preds = %7, %3
  ret void
}

declare void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager11gateCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %10 = getelementptr inbounds %class.cModule, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %13 = load ptr, ptr %1, align 8, !tbaa !64
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %17 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %"struct.cGate::Desc", ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !130
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !132
  %25 = ashr i32 %24, 2
  %26 = icmp eq i32 %25, -1
  %27 = select i1 %26, i32 0, i32 %25
  br label %28

28:                                               ; preds = %6, %22
  %29 = phi i32 [ %27, %22 ], [ -1, %6 ]
  %30 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !132
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  tail call void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr noundef %8, i32 noundef %11, i32 noundef %12, ptr noundef %16, i32 noundef %29, i1 noundef zeroext %33)
  br label %34

34:                                               ; preds = %28, %2
  ret void
}

declare void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager11gateDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %10 = getelementptr inbounds %class.cModule, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr noundef %8, i32 noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager17connectionCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %12 = getelementptr inbounds %class.cModule, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !103
  %14 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %15 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  %16 = getelementptr inbounds %class.cModule, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !103
  %18 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  tail call void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr noundef %10, i32 noundef %13, i32 noundef %14, i32 noundef %17, i32 noundef %18)
  br label %19

19:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager17connectionDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %10 = getelementptr inbounds %class.cModule, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr noundef %8, i32 noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager20displayStringChangedEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !70 {
  %3 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !71, !range !92, !noundef !85
  %5 = icmp eq i8 %4, 0
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI7cModule, i64 0) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !103
  %16 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %17 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %16)
  tail call void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr noundef %13, i32 noundef %15, ptr noundef %17)
  br label %32

18:                                               ; preds = %8
  %19 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI10cComponent, ptr nonnull @_ZTI8cChannel, i64 0) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %class.cChannel, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %23)
  %27 = getelementptr inbounds %class.cModule, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !103
  %29 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %23)
  %30 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %31 = tail call noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56) %30)
  tail call void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr noundef %25, i32 noundef %28, i32 noundef %29, ptr noundef %31)
  br label %32

32:                                               ; preds = %11, %21, %18, %2
  ret void
}

declare void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

declare noundef ptr @_ZNK14cDisplayString3strEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

declare void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN19EventlogFileManager5sputnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(43) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 !prof !70 {
  %4 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !71, !range !92, !noundef !85
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.EventlogFileManager, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr noundef %9, ptr noundef %1, i32 noundef %2)
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

declare void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !59

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !84
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #24
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !59

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !84
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #24
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !136

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !84
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #24
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !70 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #25
  tail call void @_ZdlPv(ptr noundef %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #23
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !137
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !70 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !84
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !140, !alias.scope !141
  %10 = load ptr, ptr %7, align 8, !tbaa !80
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !84
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !80, !alias.scope !141
  %19 = load i64, ptr %11, align 8, !tbaa !90
  store i64 %19, ptr %9, align 8, !tbaa !90, !alias.scope !141
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !84, !alias.scope !141
  store ptr %11, ptr %7, align 8, !tbaa !80
  store i64 0, ptr %21, align 8, !tbaa !84
  store i8 0, ptr %11, align 8, !tbaa !90
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !84, !noalias !144
  %27 = load i64, ptr %23, align 8, !tbaa !84, !noalias !144
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !80, !noalias !144
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !140, !alias.scope !144
  %37 = load ptr, ptr %34, align 8, !tbaa !80
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !84
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !80, !alias.scope !144
  %46 = load i64, ptr %38, align 8, !tbaa !90
  store i64 %46, ptr %36, align 8, !tbaa !90, !alias.scope !144
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !84
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !84, !alias.scope !144
  store ptr %38, ptr %34, align 8, !tbaa !80
  store i64 0, ptr %48, align 8, !tbaa !84
  store i8 0, ptr %38, align 8, !tbaa !90
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  %52 = load ptr, ptr %3, align 8, !tbaa !80
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !84
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #24
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !80
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !84
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #24
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !80
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !84
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #24
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !80
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !84
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #24
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !80
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !84
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #24
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !147, !range !92, !noundef !85
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !148
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !140
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.21) #26
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %9, ptr %4, align 8, !tbaa !149
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !150

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !80
  %13 = load i64, ptr %4, align 8, !tbaa !149
  store i64 %13, ptr %5, align 8, !tbaa !90
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !80
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !151

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !90
  store i8 %17, ptr %15, align 1, !tbaa !90
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !152
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !149
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !84
  %22 = load ptr, ptr %0, align 8, !tbaa !80
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #17 comdat align 2 !prof !153 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !154
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !155

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !156
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !155

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !111
  ret ptr %0
}

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_eventlogfilemgr.cc() #19 section ".text.startup" !prof !57 !PGOFuncName !158 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_37E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_37Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_37E, ptr nonnull @__dso_handle) #25
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_55E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_55Ev)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_55E, ptr nonnull @__dso_handle) #25
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_56E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_56Ev)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_56E, ptr nonnull @__dso_handle) #25
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_57E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_57Ev)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_57E, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
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
!47 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 4}
!48 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strlen, i64 325614}
!49 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Znam, i64 325614}
!50 = !{ptr @_ZN10opp_stringaSEPKc, ptr @strcpy, i64 325614}
!51 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!52 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!53 = !{ptr @_GLOBAL__sub_I_eventlogfilemgr.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_eventlogfilemgr.cc, ptr @__cxa_atexit, i64 5}
!55 = !{ptr @_GLOBAL__sub_I_eventlogfilemgr.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 4}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"simulator/eventlogfilemgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_37Ev"}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !63, i64 0}
!66 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!67 = !{!"simulator/eventlogfilemgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_55Ev"}
!68 = !{!"simulator/eventlogfilemgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_56Ev"}
!69 = !{!"simulator/eventlogfilemgr.cc;_ZN12_GLOBAL__N_119__onstartup_func_57Ev"}
!70 = !{!"function_entry_count", i64 0}
!71 = !{!72, !74, i64 40}
!72 = !{!"_ZTS19EventlogFileManager", !73, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !74, i64 40, !74, i64 41, !74, i64 42}
!73 = !{!"_ZTS10opp_string", !61, i64 0}
!74 = !{!"bool", !62, i64 0}
!75 = !{!72, !74, i64 42}
!76 = !{!72, !74, i64 41}
!77 = !{!72, !61, i64 24}
!78 = !{!72, !61, i64 32}
!79 = !{!73, !61, i64 0}
!80 = !{!81, !61, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !83, i64 8, !62, i64 16}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!83 = !{!"long", !62, i64 0}
!84 = !{!81, !83, i64 8}
!85 = !{}
!86 = !{!72, !61, i64 16}
!87 = !{!"function_entry_count", i64 325620}
!88 = !{!"branch_weights", i32 325616, i32 4}
!89 = !{!"branch_weights", i32 0, i32 325620}
!90 = !{!62, !62, i64 0}
!91 = !{!"branch_weights", i32 6, i32 325614}
!92 = !{i8 0, i8 2}
!93 = !{!94, !61, i64 72}
!94 = !{!"_ZTS11cSimulation", !95, i64 0, !100, i64 36, !100, i64 40, !61, i64 48, !100, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !100, i64 96, !61, i64 104, !61, i64 112, !101, i64 120, !83, i64 128, !61, i64 136, !61, i64 144, !61, i64 152, !102, i64 160}
!95 = !{!"_ZTS23cNoncopyableOwnedObject", !96, i64 0}
!96 = !{!"_ZTS12cOwnedObject", !97, i64 0, !61, i64 24, !100, i64 32}
!97 = !{!"_ZTS12cNamedObject", !98, i64 0, !61, i64 8, !99, i64 16, !99, i64 18}
!98 = !{!"_ZTS7cObject"}
!99 = !{!"short", !62, i64 0}
!100 = !{!"int", !62, i64 0}
!101 = !{!"_ZTS7SimTime", !83, i64 0}
!102 = !{!"_ZTS12cMessageHeap", !96, i64 0, !61, i64 40, !100, i64 48, !100, i64 52, !83, i64 56}
!103 = !{!104, !100, i64 112}
!104 = !{!"_ZTS7cModule", !105, i64 0, !61, i64 104, !100, i64 112, !61, i64 120, !61, i64 128, !61, i64 136, !61, i64 144, !100, i64 152, !61, i64 160, !100, i64 168, !100, i64 172}
!105 = !{!"_ZTS10cComponent", !106, i64 0, !61, i64 56, !99, i64 64, !61, i64 72, !99, i64 80, !99, i64 82, !61, i64 88, !61, i64 96}
!106 = !{!"_ZTS12cDefaultList", !95, i64 0, !61, i64 40, !100, i64 48, !100, i64 52}
!107 = !{!97, !99, i64 16}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!110 = distinct !{!110, !"_ZNK11cSimulation10getSimTimeEv"}
!111 = !{!101, !83, i64 0}
!112 = !{!94, !83, i64 128}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!115 = distinct !{!115, !"_ZNK11cSimulation10getSimTimeEv"}
!116 = !{!117, !83, i64 136}
!117 = !{!"_ZTS8cMessage", !96, i64 0, !99, i64 36, !99, i64 38, !99, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !100, i64 72, !100, i64 76, !100, i64 80, !100, i64 84, !101, i64 88, !101, i64 96, !101, i64 104, !101, i64 112, !100, i64 120, !83, i64 128, !83, i64 136, !83, i64 144, !83, i64 152}
!118 = !{!117, !83, i64 144}
!119 = !{!117, !83, i64 152}
!120 = !{!117, !99, i64 36}
!121 = !{!117, !99, i64 38}
!122 = !{!123, !83, i64 160}
!123 = !{!"_ZTS7cPacket", !117, i64 0, !83, i64 160, !101, i64 168, !61, i64 176, !99, i64 184}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK8cMessage14getArrivalTimeEv: argument 0"}
!126 = distinct !{!126, !"_ZNK8cMessage14getArrivalTimeEv"}
!127 = !{!117, !100, i64 72}
!128 = !{!129, !61, i64 8}
!129 = !{!"_ZTS5cGate", !98, i64 0, !61, i64 8, !100, i64 16, !61, i64 24, !61, i64 32, !61, i64 40}
!130 = !{!131, !100, i64 16}
!131 = !{!"_ZTSN5cGate4DescE", !61, i64 0, !61, i64 8, !100, i64 16, !62, i64 24, !62, i64 32}
!132 = !{!129, !100, i64 16}
!133 = !{!129, !61, i64 40}
!134 = !{!135, !61, i64 104}
!135 = !{!"_ZTS8cChannel", !105, i64 0, !61, i64 104, !100, i64 112}
!136 = !{!"branch_weights", i32 0, i32 1}
!137 = !{!138, !100, i64 8}
!138 = !{!"_ZTS10cException", !139, i64 0, !100, i64 8, !81, i64 16, !74, i64 48, !81, i64 56, !81, i64 88, !100, i64 120}
!139 = !{!"_ZTSSt9exception"}
!140 = !{!82, !61, i64 0}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!143 = distinct !{!143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!146 = distinct !{!146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!147 = !{!138, !74, i64 48}
!148 = !{!138, !100, i64 120}
!149 = !{!83, !83, i64 0}
!150 = !{!"branch_weights", i32 1257662, i32 631781}
!151 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!152 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!153 = !{!"function_entry_count", i64 980215783}
!154 = !{!100, !100, i64 0}
!155 = !{!"branch_weights", i32 0, i32 980215783}
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !62, i64 0}
!158 = !{!"simulator/eventlogfilemgr.cc;_GLOBAL__sub_I_eventlogfilemgr.cc"}
