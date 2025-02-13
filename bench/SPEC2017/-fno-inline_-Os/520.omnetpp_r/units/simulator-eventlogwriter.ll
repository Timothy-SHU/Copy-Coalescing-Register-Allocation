; ModuleID = 'simulator/eventlogwriter.cc'
source_filename = "simulator/eventlogwriter.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.SimTime = type { i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }

$_ZNK7SimTimeneERKS_ = comdat any

$_ZN7SimTimeC2Ed = comdat any

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

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot write event log file, disk full?\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"SB v %d rid %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SE\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"BU id %d txt %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"MB sm %d tm %d m %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ME\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"MC id %d c %s t %s n %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"MC id %d c %s t %s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" pid %d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" n %s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" cm %d\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MD id %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"MR id %d p %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"GC m %d g %d n %s o %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"GC m %d g %d n %s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" i %d\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" o %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GD m %d g %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"CC sm %d sg %d dm %d dg %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"CD sm %d sg %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"CS sm %d sg %d d %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"MS id %d d %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\0AE # %ld t %s m %d msg %ld\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\0AE # %ld t %s m %d\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" ce %ld\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" msg %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"CE id %ld\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"CE id %ld\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" pe %ld\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"BS id %ld tid %ld c %s n %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"BS id %ld tid %ld\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c" eid %ld\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c" etid %ld\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c" c %s n %s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" k %d\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c" p %d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" l %ld\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c" er %d\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" d %s\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ES t %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"ES t %s\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c" is %d\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"SD sm %d dm %d dg %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"SD sm %d dm %d dg %d\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c" pd %s\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c" td %s\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"SH sm %d sg %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"SH sm %d sg %d\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"DM id %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"DM id %d\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.52 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_eventlogwriter.cc, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  %12 = sext i32 %2 to i64
  %13 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %12, ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %2) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %18

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2) #14
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %10) #14
  %12 = icmp slt i32 %11, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br i1 %12, label %13, label %18

13:                                               ; preds = %6, %9
  %14 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.1) #14
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr nocapture noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3) #14
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.1) #14
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef %2) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %18

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2) #14
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef %10) #14
  %12 = icmp slt i32 %11, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br i1 %12, label %13, label %18

13:                                               ; preds = %6, %9
  %14 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.1) #14
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %19

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %3) #14
  %11 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2, ptr noundef %11) #14
  %13 = icmp slt i32 %12, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br i1 %13, label %14, label %19

14:                                               ; preds = %7, %10
  %15 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.1) #14
          to label %16 unwind label %17

16:                                               ; preds = %14
  call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #15
  resume { ptr, i32 } %18

19:                                               ; preds = %7, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr nocapture noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6) #14
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.1) #14
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter33recordModuleCreatedEntry_id_c_t_nEP8_IO_FILEiPKcS3_S3_(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2) #14
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %2) #14
  %11 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ %2, %5 ]
  %14 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
          to label %15 unwind label %39

15:                                               ; preds = %12
  br i1 %14, label %16, label %19

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %3) #14
          to label %17 unwind label %41

17:                                               ; preds = %16
  %18 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi ptr [ %18, %17 ], [ %3, %15 ]
  %21 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %4) #14
          to label %22 unwind label %43

22:                                               ; preds = %19
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %4) #14
          to label %26 unwind label %45

24:                                               ; preds = %22
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %13, ptr noundef %20, ptr noundef %4) #14
  br label %29

26:                                               ; preds = %23
  %27 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %13, ptr noundef %20, ptr noundef %27) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %29

29:                                               ; preds = %24, %26
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ]
  %31 = icmp slt i32 %30, 0
  br i1 %14, label %32, label %33

32:                                               ; preds = %29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %33

33:                                               ; preds = %29, %32
  br i1 %9, label %34, label %35

34:                                               ; preds = %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %35

35:                                               ; preds = %33, %34
  br i1 %31, label %36, label %57

36:                                               ; preds = %35
  %37 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.1) #14
          to label %38 unwind label %55

38:                                               ; preds = %36
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

39:                                               ; preds = %12
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %52

41:                                               ; preds = %16
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %50

43:                                               ; preds = %19
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %23
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  br i1 %14, label %49, label %52

49:                                               ; preds = %47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi { ptr, i32 } [ %42, %41 ], [ %48, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %52

52:                                               ; preds = %47, %50, %39
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %40, %39 ], [ %48, %47 ]
  br i1 %9, label %54, label %58

54:                                               ; preds = %52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %58

55:                                               ; preds = %36
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %37) #15
  br label %58

57:                                               ; preds = %35
  ret void

58:                                               ; preds = %52, %54, %55
  %59 = phi { ptr, i32 } [ %56, %55 ], [ %53, %54 ], [ %53, %52 ]
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2) #14
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %2) #14
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %13, %12 ], [ %2, %7 ]
  %16 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
          to label %17 unwind label %32

17:                                               ; preds = %14
  br i1 %16, label %18, label %19

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %3) #14
          to label %21 unwind label %34

19:                                               ; preds = %17
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef %15, ptr noundef %3) #14
  br label %24

21:                                               ; preds = %18
  %22 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef %15, ptr noundef %22) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = icmp slt i32 %25, 0
  br i1 %11, label %27, label %28

27:                                               ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %28

28:                                               ; preds = %24, %27
  br i1 %26, label %29, label %41

29:                                               ; preds = %28
  %30 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.1) #14
          to label %31 unwind label %39

31:                                               ; preds = %29
  call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %14
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %18
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  br i1 %11, label %38, label %83

38:                                               ; preds = %36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %83

39:                                               ; preds = %29
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #15
  br label %83

41:                                               ; preds = %28
  %42 = icmp eq i32 %4, -1
  br i1 %42, label %51, label %43

43:                                               ; preds = %41
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %4) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %47, ptr noundef nonnull @.str.1) #14
          to label %48 unwind label %49

48:                                               ; preds = %46
  call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %47) #15
  br label %83

51:                                               ; preds = %43, %41
  %52 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %5) #14
  br i1 %52, label %56, label %53

53:                                               ; preds = %51
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %5) #14
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %65

56:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %5) #14
  %57 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %57) #14
  %59 = icmp slt i32 %58, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %56
  %61 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %61, ptr noundef nonnull @.str.1) #14
          to label %62 unwind label %63

62:                                               ; preds = %60
  call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %61) #15
  br label %83

65:                                               ; preds = %53, %56
  br i1 %6, label %66, label %74

66:                                               ; preds = %65
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 1) #14
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %70, ptr noundef nonnull @.str.1) #14
          to label %71 unwind label %72

71:                                               ; preds = %69
  call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

72:                                               ; preds = %69
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %70) #15
  br label %83

74:                                               ; preds = %66, %65
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %78, ptr noundef nonnull @.str.1) #14
          to label %79 unwind label %80

79:                                               ; preds = %77
  call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

80:                                               ; preds = %77
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %78) #15
  br label %83

82:                                               ; preds = %74
  ret void

83:                                               ; preds = %36, %38, %80, %72, %63, %49, %39
  %84 = phi { ptr, i32 } [ %40, %39 ], [ %50, %49 ], [ %64, %63 ], [ %73, %72 ], [ %81, %80 ], [ %37, %38 ], [ %37, %36 ]
  resume { ptr, i32 } %84
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1) #14
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %2) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter30recordGateCreatedEntry_m_g_n_oEP8_IO_FILEiiPKcb(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = zext i1 %4 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %9) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %22

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %3) #14
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  %14 = zext i1 %4 to i32
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %2, ptr noundef %13, i32 noundef %14) #14
  %16 = icmp slt i32 %15, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br i1 %16, label %17, label %22

17:                                               ; preds = %8, %12
  %18 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.1) #14
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #15
  resume { ptr, i32 } %21

22:                                               ; preds = %8, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %21

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %3) #14
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %2, ptr noundef %13) #14
  %15 = icmp slt i32 %14, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br i1 %15, label %16, label %21

16:                                               ; preds = %9, %12
  %17 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1) #14
          to label %18 unwind label %19

18:                                               ; preds = %16
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %41

21:                                               ; preds = %9, %12
  %22 = icmp eq i32 %4, -1
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %4) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.1) #14
          to label %28 unwind label %29

28:                                               ; preds = %26
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %41

31:                                               ; preds = %23, %21
  %32 = zext i1 %5 to i32
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %32) #14
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.1) #14
          to label %37 unwind label %38

37:                                               ; preds = %35
  call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %41

40:                                               ; preds = %31
  ret void

41:                                               ; preds = %38, %29, %19
  %42 = phi ptr [ %36, %38 ], [ %27, %29 ], [ %17, %19 ]
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %30, %29 ], [ %20, %19 ]
  call void @__cxa_free_exception(ptr %42) #15
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %2) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.1) #14
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %2) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %2, ptr noundef %3) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %19

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %3) #14
  %11 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %2, ptr noundef %11) #14
  %13 = icmp slt i32 %12, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br i1 %13, label %14, label %19

14:                                               ; preds = %7, %10
  %15 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.1) #14
          to label %16 unwind label %17

16:                                               ; preds = %14
  call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #15
  resume { ptr, i32 } %18

19:                                               ; preds = %7, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2) #14
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef %2) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %18

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2) #14
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef %10) #14
  %12 = icmp slt i32 %11, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br i1 %12, label %13, label %18

13:                                               ; preds = %6, %9
  %14 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.1) #14
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr nocapture noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %7 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef %1, ptr noundef %7, i32 noundef %3, i64 noundef %4) #14
  %9 = icmp slt i32 %8, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull @.str.1) #14
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  ret void
}

; Function Attrs: optsize
declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr nocapture noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  %8 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef %1, ptr noundef %8, i32 noundef %3) #14
  %10 = icmp slt i32 %9, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull @.str.1) #14
          to label %13 unwind label %14

13:                                               ; preds = %11
  call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %35

16:                                               ; preds = %6
  %17 = icmp eq i64 %4, -1
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %4) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull @.str.1) #14
          to label %23 unwind label %24

23:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %35

26:                                               ; preds = %18, %16
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %5) #14
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.1) #14
          to label %31 unwind label %32

31:                                               ; preds = %29
  call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %32, %24, %14
  %36 = phi ptr [ %30, %32 ], [ %22, %24 ], [ %12, %14 ]
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %25, %24 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %36) #15
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter25recordCancelEventEntry_idEP8_IO_FILEl(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1) #14
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %1) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %3
  %12 = icmp eq i64 %2, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %2) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1) #14
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %30

21:                                               ; preds = %13, %11
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1) #14
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %30

29:                                               ; preds = %21
  ret void

30:                                               ; preds = %27, %19, %9
  %31 = phi ptr [ %25, %27 ], [ %17, %19 ], [ %7, %9 ]
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %20, %19 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %31) #15
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter31recordBeginSendEntry_id_tid_c_nEP8_IO_FILEllPKcS3_(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3) #14
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %3) #14
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ]
  %13 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %4) #14
          to label %14 unwind label %29

14:                                               ; preds = %11
  br i1 %13, label %15, label %16

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %4) #14
          to label %18 unwind label %31

16:                                               ; preds = %14
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %1, i64 noundef %2, ptr noundef %12, ptr noundef %4) #14
  br label %21

18:                                               ; preds = %15
  %19 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %1, i64 noundef %2, ptr noundef %12, ptr noundef %19) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  %23 = icmp slt i32 %22, 0
  br i1 %8, label %24, label %25

24:                                               ; preds = %21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %25

25:                                               ; preds = %21, %24
  br i1 %23, label %26, label %38

26:                                               ; preds = %25
  %27 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.1) #14
          to label %28 unwind label %36

28:                                               ; preds = %26
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

29:                                               ; preds = %11
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  br i1 %8, label %35, label %39

35:                                               ; preds = %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %39

36:                                               ; preds = %26
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #15
  br label %39

38:                                               ; preds = %25
  ret void

39:                                               ; preds = %33, %35, %36
  %40 = phi { ptr, i32 } [ %37, %36 ], [ %34, %35 ], [ %34, %33 ]
  resume { ptr, i32 } %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i16 noundef signext %8, i16 noundef signext %9, i64 noundef %10, i1 noundef zeroext %11, ptr noundef %12) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %1, i64 noundef %2) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.1) #14
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #15
  br label %151

24:                                               ; preds = %13
  %25 = icmp eq i64 %3, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef %3) #14
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.1) #14
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #15
  br label %151

34:                                               ; preds = %26, %24
  %35 = icmp eq i64 %4, -1
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %4) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %40, ptr noundef nonnull @.str.1) #14
          to label %41 unwind label %42

41:                                               ; preds = %39
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %40) #15
  br label %151

44:                                               ; preds = %36, %34
  %45 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %5) #14
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %5) #14
  %47 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi ptr [ %47, %46 ], [ %5, %44 ]
  %50 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %6) #14
          to label %51 unwind label %66

51:                                               ; preds = %48
  br i1 %50, label %52, label %53

52:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #15
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %6) #14
          to label %55 unwind label %68

53:                                               ; preds = %51
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %49, ptr noundef %6) #14
  br label %58

55:                                               ; preds = %52
  %56 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %49, ptr noundef %56) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #15
  br label %58

58:                                               ; preds = %53, %55
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  %60 = icmp slt i32 %59, 0
  br i1 %45, label %61, label %62

61:                                               ; preds = %58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #15
  br label %62

62:                                               ; preds = %58, %61
  br i1 %60, label %63, label %75

63:                                               ; preds = %62
  %64 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %64, ptr noundef nonnull @.str.1) #14
          to label %65 unwind label %73

65:                                               ; preds = %63
  call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

66:                                               ; preds = %48
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %70

68:                                               ; preds = %52
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #15
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %67, %66 ]
  br i1 %45, label %72, label %151

72:                                               ; preds = %70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #15
  br label %151

73:                                               ; preds = %63
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %64) #15
  br label %151

75:                                               ; preds = %62
  %76 = icmp eq i64 %7, -1
  br i1 %76, label %85, label %77

77:                                               ; preds = %75
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %7) #14
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %81, ptr noundef nonnull @.str.1) #14
          to label %82 unwind label %83

82:                                               ; preds = %80
  call void @__cxa_throw(ptr nonnull %81, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

83:                                               ; preds = %80
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %81) #15
  br label %151

85:                                               ; preds = %77, %75
  %86 = icmp eq i16 %8, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %85
  %88 = sext i16 %8 to i32
  %89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %88) #14
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %92, ptr noundef nonnull @.str.1) #14
          to label %93 unwind label %94

93:                                               ; preds = %91
  call void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

94:                                               ; preds = %91
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %92) #15
  br label %151

96:                                               ; preds = %87, %85
  %97 = icmp eq i16 %9, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %96
  %99 = sext i16 %9 to i32
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %99) #14
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %103, ptr noundef nonnull @.str.1) #14
          to label %104 unwind label %105

104:                                              ; preds = %102
  call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %103) #15
  br label %151

107:                                              ; preds = %98, %96
  %108 = icmp eq i64 %10, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %107
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %10) #14
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %113, ptr noundef nonnull @.str.1) #14
          to label %114 unwind label %115

114:                                              ; preds = %112
  call void @__cxa_throw(ptr nonnull %113, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

115:                                              ; preds = %112
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %113) #15
  br label %151

117:                                              ; preds = %109, %107
  br i1 %11, label %118, label %126

118:                                              ; preds = %117
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef 1) #14
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %122, ptr noundef nonnull @.str.1) #14
          to label %123 unwind label %124

123:                                              ; preds = %121
  call void @__cxa_throw(ptr nonnull %122, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

124:                                              ; preds = %121
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %122) #15
  br label %151

126:                                              ; preds = %118, %117
  %127 = icmp eq ptr %12, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %126
  %129 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %12) #14
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull %12) #14
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %137, label %142

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #15
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull %12) #14
  %134 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %134) #14
  %136 = icmp slt i32 %135, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #15
  br i1 %136, label %137, label %142

137:                                              ; preds = %130, %133
  %138 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %138, ptr noundef nonnull @.str.1) #14
          to label %139 unwind label %140

139:                                              ; preds = %137
  call void @__cxa_throw(ptr nonnull %138, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

140:                                              ; preds = %137
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %138) #15
  br label %151

142:                                              ; preds = %130, %133, %126
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %146, ptr noundef nonnull @.str.1) #14
          to label %147 unwind label %148

147:                                              ; preds = %145
  call void @__cxa_throw(ptr nonnull %146, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

148:                                              ; preds = %145
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %146) #15
  br label %151

150:                                              ; preds = %142
  ret void

151:                                              ; preds = %70, %72, %148, %140, %124, %115, %105, %94, %83, %73, %42, %32, %22
  %152 = phi { ptr, i32 } [ %23, %22 ], [ %33, %32 ], [ %43, %42 ], [ %74, %73 ], [ %84, %83 ], [ %95, %94 ], [ %106, %105 ], [ %116, %115 ], [ %125, %124 ], [ %141, %140 ], [ %149, %148 ], [ %71, %72 ], [ %71, %70 ]
  resume { ptr, i32 } %152
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter20recordEndSendEntry_tEP8_IO_FILE7SimTime(ptr nocapture noundef %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %4 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %4) #14
  %6 = icmp slt i32 %5, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull @.str.1) #14
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr nocapture noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %5 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %5) #14
  %7 = icmp slt i32 %6, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.1) #14
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %31

13:                                               ; preds = %3
  br i1 %2, label %14, label %22

14:                                               ; preds = %13
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 1) #14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.1) #14
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %31

22:                                               ; preds = %14, %13
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %26, ptr noundef nonnull @.str.1) #14
          to label %27 unwind label %28

27:                                               ; preds = %25
  call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %31

30:                                               ; preds = %22
  ret void

31:                                               ; preds = %28, %20, %11
  %32 = phi ptr [ %26, %28 ], [ %18, %20 ], [ %9, %11 ]
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %21, %20 ], [ %12, %11 ]
  call void @__cxa_free_exception(ptr %32) #15
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter30recordSendDirectEntry_sm_dm_dgEP8_IO_FILEiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull @.str.1) #14
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %7 = alloca %class.SimTime, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %class.SimTime, align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.1) #14
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #15
  br label %49

18:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef 0.000000e+00) #14
  %19 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %21 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %21) #14
  %23 = icmp slt i32 %22, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1) #14
          to label %26 unwind label %27

26:                                               ; preds = %24
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #15
  br label %49

29:                                               ; preds = %20, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef 0.000000e+00) #14
  %30 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  %32 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %32) #14
  %34 = icmp slt i32 %33, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.1) #14
          to label %37 unwind label %38

37:                                               ; preds = %35
  call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %36) #15
  br label %49

40:                                               ; preds = %31, %29
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %44, ptr noundef nonnull @.str.1) #14
          to label %45 unwind label %46

45:                                               ; preds = %43
  call void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %44) #15
  br label %49

48:                                               ; preds = %40
  ret void

49:                                               ; preds = %46, %38, %27, %16
  %50 = phi { ptr, i32 } [ %17, %16 ], [ %28, %27 ], [ %39, %38 ], [ %47, %46 ]
  resume { ptr, i32 } %50
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 !prof !62 {
  %3 = load i64, ptr %0, align 8, !tbaa !63
  %4 = load i64, ptr %1, align 8, !tbaa !63
  %5 = icmp ne i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !68 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef %2) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.SimTime, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %1, i32 noundef %2) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull @.str.1) #14
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #15
  br label %48

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef 0.000000e+00) #14
  %18 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %20 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %20) #14
  %22 = icmp slt i32 %21, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.1) #14
          to label %25 unwind label %26

25:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #15
  br label %48

28:                                               ; preds = %19, %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %8, double noundef 0.000000e+00) #14
  %29 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %31 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %31) #14
  %33 = icmp slt i32 %32, 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %35, ptr noundef nonnull @.str.1) #14
          to label %36 unwind label %37

36:                                               ; preds = %34
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #15
  br label %48

39:                                               ; preds = %30, %28
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.1) #14
          to label %44 unwind label %45

44:                                               ; preds = %42
  call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %43) #15
  br label %48

47:                                               ; preds = %39
  ret void

48:                                               ; preds = %45, %37, %26, %15
  %49 = phi { ptr, i32 } [ %16, %15 ], [ %27, %26 ], [ %38, %37 ], [ %46, %45 ]
  resume { ptr, i32 } %49
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter27recordDeleteMessageEntry_idEP8_IO_FILEi(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %1) #14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1) #14
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %1) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1) #14
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %3
  %12 = icmp eq i64 %2, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %2) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1) #14
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %30

21:                                               ; preds = %13, %11
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1) #14
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #16
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %30

29:                                               ; preds = %21
  ret void

30:                                               ; preds = %27, %19, %9
  %31 = phi ptr [ %25, %27 ], [ %17, %19 ], [ %7, %9 ]
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %20, %19 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %31) #15
  resume { ptr, i32 } %32
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !69 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #19
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !72
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !61 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.52) #14
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !80, !range !81, !noundef !82
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !83
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !84 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !85 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #20
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #14
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #14
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 !prof !86 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #14
  store i64 %6, ptr %4, align 8, !tbaa !88
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !89

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #14
  %10 = load i64, ptr %4, align 8, !tbaa !88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #14
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #14
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #17
  store ptr null, ptr %5, align 8, !tbaa !90
  %15 = load i64, ptr %4, align 8, !tbaa !88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #14
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !87 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !92
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #14
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 !prof !87 {
  store ptr %1, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !93

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !87 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat !prof !87 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !94 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #14
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !95
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #14
  store i64 %5, ptr %0, align 8, !tbaa !63
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !94 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !97
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !98

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #14
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !99 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !100

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #14
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_eventlogwriter.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind optsize }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { noreturn optsize }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!36 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!37 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!38 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!39 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!40 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!41 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!42 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!43 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!44 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!45 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!46 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!47 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!49 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!51 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!52 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!53 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!54 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!55 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!56 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!57 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!58 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!59 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!"function_entry_count", i64 467322366}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTS7SimTime", !65, i64 0}
!65 = !{!"long", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"function_entry_count", i64 980188428}
!69 = !{!"function_entry_count", i64 1}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !67, i64 0}
!72 = !{!73, !75, i64 8}
!73 = !{!"_ZTS10cException", !74, i64 0, !75, i64 8, !76, i64 16, !79, i64 48, !76, i64 56, !76, i64 88, !75, i64 120}
!74 = !{!"_ZTSSt9exception"}
!75 = !{!"int", !66, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !77, i64 0, !65, i64 8, !66, i64 16}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !78, i64 0}
!78 = !{!"any pointer", !66, i64 0}
!79 = !{!"bool", !66, i64 0}
!80 = !{!73, !79, i64 48}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!73, !75, i64 120}
!84 = !{!"function_entry_count", i64 2}
!85 = !{!"function_entry_count", i64 2107073}
!86 = !{!"function_entry_count", i64 1891507}
!87 = !{!"function_entry_count", i64 1889443}
!88 = !{!65, !65, i64 0}
!89 = !{!"branch_weights", i32 1257663, i32 631782}
!90 = !{!91, !78, i64 0}
!91 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !78, i64 0}
!92 = !{!78, !78, i64 0}
!93 = !{!"branch_weights", i32 1889444, i32 1}
!94 = !{!"function_entry_count", i64 980215783}
!95 = !{!96, !96, i64 0}
!96 = !{!"double", !66, i64 0}
!97 = !{!75, !75, i64 0}
!98 = !{!"branch_weights", i32 1, i32 980215784}
!99 = !{!"function_entry_count", i64 1656274258}
!100 = !{!"branch_weights", i32 1, i32 1656274259}
