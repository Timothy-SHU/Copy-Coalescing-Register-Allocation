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
@.str.53 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_eventlogwriter.cc, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter13recordLogLineEP8_IO_FILEPKci(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  %12 = sext i32 %2 to i64
  %13 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %12, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter32recordSimulationBeginEntry_v_ridEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2)
  %7 = load ptr, ptr %4, align 8, !tbaa !41
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %3 ]
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef %9)
  %11 = icmp slt i32 %10, 0
  br i1 %5, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %22

22:                                               ; preds = %8, %21
  br i1 %11, label %23, label %28

23:                                               ; preds = %22
  %24 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.1)
          to label %25 unwind label %26

25:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #18
  resume { ptr, i32 } %27

28:                                               ; preds = %22
  ret void
}

declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter24recordSimulationEndEntryEP8_IO_FILE(ptr nocapture noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.1)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #18
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter24recordBubbleEntry_id_txtEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2)
  %7 = load ptr, ptr %4, align 8, !tbaa !41
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %3 ]
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef %9)
  %11 = icmp slt i32 %10, 0
  br i1 %5, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %22

22:                                               ; preds = %8, %21
  br i1 %11, label %23, label %28

23:                                               ; preds = %22
  %24 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.1)
          to label %25 unwind label %26

25:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #18
  resume { ptr, i32 } %27

28:                                               ; preds = %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter36recordModuleMethodBeginEntry_sm_tm_mEP8_IO_FILEiiPKc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %3)
  %8 = load ptr, ptr %5, align 8, !tbaa !41
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %3, %4 ]
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2, ptr noundef %10)
  %12 = icmp slt i32 %11, 0
  br i1 %6, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  call void @_ZdlPv(ptr noundef %14) #20
  br label %22

22:                                               ; preds = %17, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %23

23:                                               ; preds = %9, %22
  br i1 %12, label %24, label %29

24:                                               ; preds = %23
  %25 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1)
          to label %26 unwind label %27

26:                                               ; preds = %24
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #18
  resume { ptr, i32 } %28

29:                                               ; preds = %23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter26recordModuleMethodEndEntryEP8_IO_FILE(ptr nocapture noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.1)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #18
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter33recordModuleCreatedEntry_id_c_t_nEP8_IO_FILEiPKcS3_S3_(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %11, %10 ], [ %2, %5 ]
  %14 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
          to label %15 unwind label %66

15:                                               ; preds = %12
  br i1 %14, label %16, label %19

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %3)
          to label %17 unwind label %68

17:                                               ; preds = %16
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi ptr [ %18, %17 ], [ %3, %15 ]
  %21 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %4)
          to label %22 unwind label %70

22:                                               ; preds = %19
  br i1 %21, label %23, label %26

23:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %4)
          to label %24 unwind label %72

24:                                               ; preds = %23
  %25 = load ptr, ptr %8, align 8, !tbaa !41
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi ptr [ %25, %24 ], [ %4, %22 ]
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1, ptr noundef %13, ptr noundef %20, ptr noundef %27)
  %29 = icmp slt i32 %28, 0
  br i1 %21, label %30, label %40

30:                                               ; preds = %26
  %31 = load ptr, ptr %8, align 8, !tbaa !41
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !48
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %39

38:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %31) #20
  br label %39

39:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %40

40:                                               ; preds = %26, %39
  br i1 %14, label %41, label %51

41:                                               ; preds = %40
  %42 = load ptr, ptr %7, align 8, !tbaa !41
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !48
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #20
  br label %50

50:                                               ; preds = %45, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %51

51:                                               ; preds = %40, %50
  br i1 %9, label %52, label %62

52:                                               ; preds = %51
  %53 = load ptr, ptr %6, align 8, !tbaa !41
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !48
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %61

60:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #20
  br label %61

61:                                               ; preds = %56, %60
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %62

62:                                               ; preds = %51, %61
  br i1 %29, label %63, label %103

63:                                               ; preds = %62
  %64 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %64, ptr noundef nonnull @.str.1)
          to label %65 unwind label %101

65:                                               ; preds = %63
  call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

66:                                               ; preds = %12
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %89

68:                                               ; preds = %16
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %85

70:                                               ; preds = %19
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %74

72:                                               ; preds = %23
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ]
  br i1 %14, label %76, label %85

76:                                               ; preds = %74
  %77 = load ptr, ptr %7, align 8, !tbaa !41
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !48
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %77) #20
  br label %85

85:                                               ; preds = %84, %80, %74, %68
  %86 = phi { ptr, i32 } [ %75, %74 ], [ %69, %68 ], [ %75, %80 ], [ %75, %84 ]
  %87 = phi i1 [ %14, %74 ], [ true, %68 ], [ %14, %80 ], [ %14, %84 ]
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %89

89:                                               ; preds = %85, %88, %66
  %90 = phi { ptr, i32 } [ %86, %88 ], [ %86, %85 ], [ %67, %66 ]
  br i1 %9, label %91, label %104

91:                                               ; preds = %89
  %92 = load ptr, ptr %6, align 8, !tbaa !41
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !48
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %100

99:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %92) #20
  br label %100

100:                                              ; preds = %95, %99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %104

101:                                              ; preds = %63
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %64) #18
  br label %104

103:                                              ; preds = %62
  ret void

104:                                              ; preds = %89, %100, %101
  %105 = phi { ptr, i32 } [ %102, %101 ], [ %90, %100 ], [ %90, %89 ]
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter40recordModuleCreatedEntry_id_c_t_pid_n_cmEP8_IO_FILEiPKcS3_iS3_b(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %2)
  %13 = load ptr, ptr %8, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %13, %12 ], [ %2, %7 ]
  %16 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
          to label %17 unwind label %50

17:                                               ; preds = %14
  br i1 %16, label %18, label %21

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %3)
          to label %19 unwind label %52

19:                                               ; preds = %18
  %20 = load ptr, ptr %9, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi ptr [ %20, %19 ], [ %3, %17 ]
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef %15, ptr noundef %22)
  %24 = icmp slt i32 %23, 0
  br i1 %16, label %25, label %35

25:                                               ; preds = %21
  %26 = load ptr, ptr %9, align 8, !tbaa !41
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !48
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %34

33:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %26) #20
  br label %34

34:                                               ; preds = %29, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %35

35:                                               ; preds = %21, %34
  br i1 %11, label %36, label %46

36:                                               ; preds = %35
  %37 = load ptr, ptr %8, align 8, !tbaa !41
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !48
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  br label %45

44:                                               ; preds = %36
  call void @_ZdlPv(ptr noundef %37) #20
  br label %45

45:                                               ; preds = %40, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %46

46:                                               ; preds = %35, %45
  br i1 %24, label %47, label %68

47:                                               ; preds = %46
  %48 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %48, ptr noundef nonnull @.str.1)
          to label %49 unwind label %66

49:                                               ; preds = %47
  call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

50:                                               ; preds = %14
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %54

52:                                               ; preds = %18
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  br i1 %11, label %56, label %121

56:                                               ; preds = %54
  %57 = load ptr, ptr %8, align 8, !tbaa !41
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !48
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %57) #20
  br label %65

65:                                               ; preds = %60, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %47
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %48) #18
  br label %121

68:                                               ; preds = %46
  %69 = icmp eq i32 %4, -1
  br i1 %69, label %78, label %70

70:                                               ; preds = %68
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %4)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %74, ptr noundef nonnull @.str.1)
          to label %75 unwind label %76

75:                                               ; preds = %73
  call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

76:                                               ; preds = %73
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %74) #18
  br label %121

78:                                               ; preds = %70, %68
  %79 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %5)
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %5)
  %81 = load ptr, ptr %10, align 8, !tbaa !41
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi ptr [ %81, %80 ], [ %5, %78 ]
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %83)
  %85 = icmp slt i32 %84, 0
  br i1 %79, label %86, label %96

86:                                               ; preds = %82
  %87 = load ptr, ptr %10, align 8, !tbaa !41
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !48
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %86
  call void @_ZdlPv(ptr noundef %87) #20
  br label %95

95:                                               ; preds = %90, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  br label %96

96:                                               ; preds = %82, %95
  br i1 %85, label %97, label %102

97:                                               ; preds = %96
  %98 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %98, ptr noundef nonnull @.str.1)
          to label %99 unwind label %100

99:                                               ; preds = %97
  call void @__cxa_throw(ptr nonnull %98, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

100:                                              ; preds = %97
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %98) #18
  br label %121

102:                                              ; preds = %96
  br i1 %6, label %103, label %112

103:                                              ; preds = %102
  %104 = zext i1 %6 to i32
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %108, ptr noundef nonnull @.str.1)
          to label %109 unwind label %110

109:                                              ; preds = %107
  call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %108) #18
  br label %121

112:                                              ; preds = %103, %102
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %116, ptr noundef nonnull @.str.1)
          to label %117 unwind label %118

117:                                              ; preds = %115
  call void @__cxa_throw(ptr nonnull %116, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

118:                                              ; preds = %115
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %116) #18
  br label %121

120:                                              ; preds = %112
  ret void

121:                                              ; preds = %54, %65, %118, %110, %100, %76, %66
  %122 = phi { ptr, i32 } [ %67, %66 ], [ %77, %76 ], [ %101, %100 ], [ %111, %110 ], [ %119, %118 ], [ %55, %65 ], [ %55, %54 ]
  resume { ptr, i32 } %122
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter27recordModuleDeletedEntry_idEP8_IO_FILEi(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter32recordModuleReparentedEntry_id_pEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter30recordGateCreatedEntry_m_g_n_oEP8_IO_FILEiiPKcb(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %3)
  %9 = load ptr, ptr %6, align 8, !tbaa !41
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ]
  %12 = zext i1 %4 to i32
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %2, ptr noundef %11, i32 noundef %12)
  %14 = icmp slt i32 %13, 0
  br i1 %7, label %15, label %25

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !tbaa !41
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !48
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #20
  br label %24

24:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %25

25:                                               ; preds = %10, %24
  br i1 %14, label %26, label %31

26:                                               ; preds = %25
  %27 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.1)
          to label %28 unwind label %29

28:                                               ; preds = %26
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #18
  resume { ptr, i32 } %30

31:                                               ; preds = %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter32recordGateCreatedEntry_m_g_n_i_oEP8_IO_FILEiiPKcib(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %3)
  %10 = load ptr, ptr %7, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ %3, %6 ]
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %2, ptr noundef %12)
  %14 = icmp slt i32 %13, 0
  br i1 %8, label %15, label %25

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !41
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !48
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #20
  br label %24

24:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %25

25:                                               ; preds = %11, %24
  br i1 %14, label %26, label %31

26:                                               ; preds = %25
  %27 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.1)
          to label %28 unwind label %29

28:                                               ; preds = %26
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %51

31:                                               ; preds = %25
  %32 = icmp eq i32 %4, -1
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %4)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.1)
          to label %38 unwind label %39

38:                                               ; preds = %36
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %51

41:                                               ; preds = %33, %31
  %42 = zext i1 %5 to i32
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %46, ptr noundef nonnull @.str.1)
          to label %47 unwind label %48

47:                                               ; preds = %45
  call void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

48:                                               ; preds = %45
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %51

50:                                               ; preds = %41
  ret void

51:                                               ; preds = %48, %39, %29
  %52 = phi ptr [ %46, %48 ], [ %37, %39 ], [ %27, %29 ]
  %53 = phi { ptr, i32 } [ %49, %48 ], [ %40, %39 ], [ %30, %29 ]
  call void @__cxa_free_exception(ptr %52) #18
  resume { ptr, i32 } %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter26recordGateDeletedEntry_m_gEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter40recordConnectionCreatedEntry_sm_sg_dm_dgEP8_IO_FILEiiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.1)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #18
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter34recordConnectionDeletedEntry_sm_sgEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter49recordConnectionDisplayStringChangedEntry_sm_sg_dEP8_IO_FILEiiPKc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %3)
  %8 = load ptr, ptr %5, align 8, !tbaa !41
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %3, %4 ]
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1, i32 noundef %2, ptr noundef %10)
  %12 = icmp slt i32 %11, 0
  br i1 %6, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %13
  call void @_ZdlPv(ptr noundef %14) #20
  br label %22

22:                                               ; preds = %17, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %23

23:                                               ; preds = %9, %22
  br i1 %12, label %24, label %29

24:                                               ; preds = %23
  %25 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1)
          to label %26 unwind label %27

26:                                               ; preds = %24
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #18
  resume { ptr, i32 } %28

29:                                               ; preds = %23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter42recordModuleDisplayStringChangedEntry_id_dEP8_IO_FILEiPKc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %2)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2)
  %7 = load ptr, ptr %4, align 8, !tbaa !41
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %3 ]
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef %9)
  %11 = icmp slt i32 %10, 0
  br i1 %5, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !41
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %22

22:                                               ; preds = %8, %21
  br i1 %11, label %23, label %28

23:                                               ; preds = %22
  %24 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.1)
          to label %25 unwind label %26

25:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #18
  resume { ptr, i32 } %27

28:                                               ; preds = %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter26recordEventEntry_e_t_m_msgEP8_IO_FILEl7SimTimeil(ptr nocapture noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef %1, ptr noundef %7, i32 noundef %3, i64 noundef %4)
  %9 = icmp slt i32 %8, 0
  %10 = load ptr, ptr %6, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !48
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %5
  call void @_ZdlPv(ptr noundef %10) #20
  br label %18

18:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br i1 %9, label %19, label %24

19:                                               ; preds = %18
  %20 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.1)
          to label %21 unwind label %22

21:                                               ; preds = %19
  call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #18
  resume { ptr, i32 } %23

24:                                               ; preds = %18
  ret void
}

declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter29recordEventEntry_e_t_m_ce_msgEP8_IO_FILEl7SimTimeill(ptr nocapture noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef %1, ptr noundef %8, i32 noundef %3)
  %10 = icmp slt i32 %9, 0
  %11 = load ptr, ptr %7, align 8, !tbaa !41
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !48
  %17 = icmp ult i64 %16, 16
  call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %6
  call void @_ZdlPv(ptr noundef %11) #20
  br label %19

19:                                               ; preds = %14, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br i1 %10, label %20, label %25

20:                                               ; preds = %19
  %21 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef nonnull @.str.1)
          to label %22 unwind label %23

22:                                               ; preds = %20
  call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %44

25:                                               ; preds = %19
  %26 = icmp eq i64 %4, -1
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %4)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.1)
          to label %32 unwind label %33

32:                                               ; preds = %30
  call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %44

35:                                               ; preds = %27, %25
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %5)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %39, ptr noundef nonnull @.str.1)
          to label %40 unwind label %41

40:                                               ; preds = %38
  call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %44

43:                                               ; preds = %35
  ret void

44:                                               ; preds = %41, %33, %23
  %45 = phi ptr [ %39, %41 ], [ %31, %33 ], [ %21, %23 ]
  %46 = phi { ptr, i32 } [ %42, %41 ], [ %34, %33 ], [ %24, %23 ]
  call void @__cxa_free_exception(ptr %45) #18
  resume { ptr, i32 } %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter25recordCancelEventEntry_idEP8_IO_FILEl(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter28recordCancelEventEntry_id_peEP8_IO_FILEll(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %3
  %12 = icmp eq i64 %2, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %2)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %30

21:                                               ; preds = %13, %11
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1)
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
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
  tail call void @__cxa_free_exception(ptr %31) #18
  resume { ptr, i32 } %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter31recordBeginSendEntry_id_tid_c_nEP8_IO_FILEllPKcS3_(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %3)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %3)
  %10 = load ptr, ptr %6, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ]
  %13 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %4)
          to label %14 unwind label %47

14:                                               ; preds = %11
  br i1 %13, label %15, label %18

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %4)
          to label %16 unwind label %49

16:                                               ; preds = %15
  %17 = load ptr, ptr %7, align 8, !tbaa !41
  br label %18

18:                                               ; preds = %14, %16
  %19 = phi ptr [ %17, %16 ], [ %4, %14 ]
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %1, i64 noundef %2, ptr noundef %12, ptr noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %13, label %22, label %32

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !48
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %23) #20
  br label %31

31:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %32

32:                                               ; preds = %18, %31
  br i1 %8, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr %6, align 8, !tbaa !41
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !48
  %40 = icmp ult i64 %39, 16
  call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %33
  call void @_ZdlPv(ptr noundef %34) #20
  br label %42

42:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %43

43:                                               ; preds = %32, %42
  br i1 %21, label %44, label %65

44:                                               ; preds = %43
  %45 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %45, ptr noundef nonnull @.str.1)
          to label %46 unwind label %63

46:                                               ; preds = %44
  call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

47:                                               ; preds = %11
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %51

49:                                               ; preds = %15
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  br i1 %8, label %53, label %66

53:                                               ; preds = %51
  %54 = load ptr, ptr %6, align 8, !tbaa !41
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !48
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %53
  call void @_ZdlPv(ptr noundef %54) #20
  br label %62

62:                                               ; preds = %57, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %66

63:                                               ; preds = %44
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %45) #18
  br label %66

65:                                               ; preds = %43
  ret void

66:                                               ; preds = %51, %62, %63
  %67 = phi { ptr, i32 } [ %64, %63 ], [ %52, %62 ], [ %52, %51 ]
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter54recordBeginSendEntry_id_tid_eid_etid_c_n_pe_k_p_l_er_dEP8_IO_FILEllllPKcS3_lsslbS3_(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i16 noundef signext %8, i16 noundef signext %9, i64 noundef %10, i1 noundef zeroext %11, ptr noundef %12) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %1, i64 noundef %2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.1)
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #18
  br label %189

24:                                               ; preds = %13
  %25 = icmp eq i64 %3, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef %3)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.1)
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #18
  br label %189

34:                                               ; preds = %26, %24
  %35 = icmp eq i64 %4, -1
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %4)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %40, ptr noundef nonnull @.str.1)
          to label %41 unwind label %42

41:                                               ; preds = %39
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %40) #18
  br label %189

44:                                               ; preds = %36, %34
  %45 = tail call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %5)
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %5)
  %47 = load ptr, ptr %14, align 8, !tbaa !41
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi ptr [ %47, %46 ], [ %5, %44 ]
  %50 = invoke noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef %6)
          to label %51 unwind label %84

51:                                               ; preds = %48
  br i1 %50, label %52, label %55

52:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #18
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %6)
          to label %53 unwind label %86

53:                                               ; preds = %52
  %54 = load ptr, ptr %15, align 8, !tbaa !41
  br label %55

55:                                               ; preds = %51, %53
  %56 = phi ptr [ %54, %53 ], [ %6, %51 ]
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %49, ptr noundef %56)
  %58 = icmp slt i32 %57, 0
  br i1 %50, label %59, label %69

59:                                               ; preds = %55
  %60 = load ptr, ptr %15, align 8, !tbaa !41
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !48
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  br label %68

67:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %60) #20
  br label %68

68:                                               ; preds = %63, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #18
  br label %69

69:                                               ; preds = %55, %68
  br i1 %45, label %70, label %80

70:                                               ; preds = %69
  %71 = load ptr, ptr %14, align 8, !tbaa !41
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !48
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %71) #20
  br label %79

79:                                               ; preds = %74, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #18
  br label %80

80:                                               ; preds = %69, %79
  br i1 %58, label %81, label %102

81:                                               ; preds = %80
  %82 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %82, ptr noundef nonnull @.str.1)
          to label %83 unwind label %100

83:                                               ; preds = %81
  call void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

84:                                               ; preds = %48
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %88

86:                                               ; preds = %52
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #18
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %85, %84 ]
  br i1 %45, label %90, label %189

90:                                               ; preds = %88
  %91 = load ptr, ptr %14, align 8, !tbaa !41
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !48
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #20
  br label %99

99:                                               ; preds = %94, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #18
  br label %189

100:                                              ; preds = %81
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %82) #18
  br label %189

102:                                              ; preds = %80
  %103 = icmp eq i64 %7, -1
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %7)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %108, ptr noundef nonnull @.str.1)
          to label %109 unwind label %110

109:                                              ; preds = %107
  call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %108) #18
  br label %189

112:                                              ; preds = %104, %102
  %113 = icmp eq i16 %8, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %112
  %115 = sext i16 %8 to i32
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %115)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %119, ptr noundef nonnull @.str.1)
          to label %120 unwind label %121

120:                                              ; preds = %118
  call void @__cxa_throw(ptr nonnull %119, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

121:                                              ; preds = %118
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %119) #18
  br label %189

123:                                              ; preds = %114, %112
  %124 = icmp eq i16 %9, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %123
  %126 = sext i16 %9 to i32
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %126)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %130, ptr noundef nonnull @.str.1)
          to label %131 unwind label %132

131:                                              ; preds = %129
  call void @__cxa_throw(ptr nonnull %130, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

132:                                              ; preds = %129
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %130) #18
  br label %189

134:                                              ; preds = %125, %123
  %135 = icmp eq i64 %10, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %134
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %10)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %140, ptr noundef nonnull @.str.1)
          to label %141 unwind label %142

141:                                              ; preds = %139
  call void @__cxa_throw(ptr nonnull %140, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

142:                                              ; preds = %139
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %140) #18
  br label %189

144:                                              ; preds = %136, %134
  br i1 %11, label %145, label %154

145:                                              ; preds = %144
  %146 = zext i1 %11 to i32
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %146)
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %150, ptr noundef nonnull @.str.1)
          to label %151 unwind label %152

151:                                              ; preds = %149
  call void @__cxa_throw(ptr nonnull %150, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

152:                                              ; preds = %149
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %150) #18
  br label %189

154:                                              ; preds = %145, %144
  %155 = icmp eq ptr %12, null
  br i1 %155, label %180, label %156

156:                                              ; preds = %154
  %157 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %12)
  br i1 %157, label %158, label %160

158:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull %12)
  %159 = load ptr, ptr %16, align 8, !tbaa !41
  br label %160

160:                                              ; preds = %156, %158
  %161 = phi ptr [ %159, %158 ], [ %12, %156 ]
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %161)
  %163 = icmp slt i32 %162, 0
  br i1 %157, label %164, label %174

164:                                              ; preds = %160
  %165 = load ptr, ptr %16, align 8, !tbaa !41
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !48
  %171 = icmp ult i64 %170, 16
  call void @llvm.assume(i1 %171)
  br label %173

172:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %165) #20
  br label %173

173:                                              ; preds = %168, %172
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #18
  br label %174

174:                                              ; preds = %160, %173
  br i1 %163, label %175, label %180

175:                                              ; preds = %174
  %176 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %176, ptr noundef nonnull @.str.1)
          to label %177 unwind label %178

177:                                              ; preds = %175
  call void @__cxa_throw(ptr nonnull %176, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

178:                                              ; preds = %175
  %179 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %176) #18
  br label %189

180:                                              ; preds = %174, %154
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %184, ptr noundef nonnull @.str.1)
          to label %185 unwind label %186

185:                                              ; preds = %183
  call void @__cxa_throw(ptr nonnull %184, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

186:                                              ; preds = %183
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %184) #18
  br label %189

188:                                              ; preds = %180
  ret void

189:                                              ; preds = %88, %99, %186, %178, %152, %142, %132, %121, %110, %100, %42, %32, %22
  %190 = phi { ptr, i32 } [ %23, %22 ], [ %33, %32 ], [ %43, %42 ], [ %101, %100 ], [ %111, %110 ], [ %122, %121 ], [ %133, %132 ], [ %143, %142 ], [ %153, %152 ], [ %179, %178 ], [ %187, %186 ], [ %89, %99 ], [ %89, %88 ]
  resume { ptr, i32 } %190
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter20recordEndSendEntry_tEP8_IO_FILE7SimTime(ptr nocapture noundef %0, ptr noundef nonnull %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %4)
  %6 = icmp slt i32 %5, 0
  %7 = load ptr, ptr %3, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !48
  %13 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %2
  call void @_ZdlPv(ptr noundef %7) #20
  br label %15

15:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br i1 %6, label %16, label %21

16:                                               ; preds = %15
  %17 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1)
          to label %18 unwind label %19

18:                                               ; preds = %16
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter23recordEndSendEntry_t_isEP8_IO_FILE7SimTimeb(ptr nocapture noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %5)
  %7 = icmp slt i32 %6, 0
  %8 = load ptr, ptr %4, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !48
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %3
  call void @_ZdlPv(ptr noundef %8) #20
  br label %16

16:                                               ; preds = %11, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br i1 %7, label %17, label %22

17:                                               ; preds = %16
  %18 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.1)
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %41

22:                                               ; preds = %16
  br i1 %2, label %23, label %32

23:                                               ; preds = %22
  %24 = zext i1 %2 to i32
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef nonnull @.str.1)
          to label %29 unwind label %30

29:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

30:                                               ; preds = %27
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %41

32:                                               ; preds = %23, %22
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.1)
          to label %37 unwind label %38

37:                                               ; preds = %35
  call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %41

40:                                               ; preds = %32
  ret void

41:                                               ; preds = %38, %30, %20
  %42 = phi ptr [ %36, %38 ], [ %28, %30 ], [ %18, %20 ]
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %31, %30 ], [ %21, %20 ]
  call void @__cxa_free_exception(ptr %42) #18
  resume { ptr, i32 } %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter30recordSendDirectEntry_sm_dm_dgEP8_IO_FILEiii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull @.str.1)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #18
  resume { ptr, i32 } %11

12:                                               ; preds = %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter36recordSendDirectEntry_sm_dm_dg_pd_tdEP8_IO_FILEiii7SimTimeS2_(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca %class.SimTime, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %class.SimTime, align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %73

18:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef 0.000000e+00)
  %20 = load i64, ptr %4, align 8, !tbaa !49
  %21 = load i64, ptr %7, align 8, !tbaa !49
  %22 = icmp eq i64 %20, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %24 = load ptr, ptr %8, align 8, !tbaa !41
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %24)
  %26 = icmp slt i32 %25, 0
  %27 = load ptr, ptr %8, align 8, !tbaa !41
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !48
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %27) #20
  br label %35

35:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  br i1 %26, label %36, label %41

36:                                               ; preds = %35
  %37 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.1)
          to label %38 unwind label %39

38:                                               ; preds = %36
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %73

41:                                               ; preds = %35, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef 0.000000e+00)
  %43 = load i64, ptr %5, align 8, !tbaa !49
  %44 = load i64, ptr %9, align 8, !tbaa !49
  %45 = icmp eq i64 %43, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %47 = load ptr, ptr %10, align 8, !tbaa !41
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %47)
  %49 = icmp slt i32 %48, 0
  %50 = load ptr, ptr %10, align 8, !tbaa !41
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !48
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %50) #20
  br label %58

58:                                               ; preds = %53, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #18
  br i1 %49, label %59, label %64

59:                                               ; preds = %58
  %60 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %60, ptr noundef nonnull @.str.1)
          to label %61 unwind label %62

61:                                               ; preds = %59
  call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

62:                                               ; preds = %59
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %73

64:                                               ; preds = %58, %41
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %68, ptr noundef nonnull @.str.1)
          to label %69 unwind label %70

69:                                               ; preds = %67
  call void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %73

72:                                               ; preds = %64
  ret void

73:                                               ; preds = %70, %62, %39, %16
  %74 = phi ptr [ %68, %70 ], [ %60, %62 ], [ %37, %39 ], [ %14, %16 ]
  %75 = phi { ptr, i32 } [ %71, %70 ], [ %63, %62 ], [ %40, %39 ], [ %17, %16 ]
  call void @__cxa_free_exception(ptr %74) #18
  resume { ptr, i32 } %75
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter24recordSendHopEntry_sm_sgEP8_IO_FILEii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter30recordSendHopEntry_sm_sg_pd_tdEP8_IO_FILEii7SimTimeS2_(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %class.SimTime, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %1, i32 noundef %2)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull @.str.1)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %72

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef 0.000000e+00)
  %19 = load i64, ptr %3, align 8, !tbaa !49
  %20 = load i64, ptr %6, align 8, !tbaa !49
  %21 = icmp eq i64 %19, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %23 = load ptr, ptr %7, align 8, !tbaa !41
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef %23)
  %25 = icmp slt i32 %24, 0
  %26 = load ptr, ptr %7, align 8, !tbaa !41
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !48
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %34

33:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %26) #20
  br label %34

34:                                               ; preds = %29, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br i1 %25, label %35, label %40

35:                                               ; preds = %34
  %36 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.1)
          to label %37 unwind label %38

37:                                               ; preds = %35
  call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %72

40:                                               ; preds = %34, %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %8, double noundef 0.000000e+00)
  %42 = load i64, ptr %4, align 8, !tbaa !49
  %43 = load i64, ptr %8, align 8, !tbaa !49
  %44 = icmp eq i64 %42, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br i1 %44, label %63, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %46 = load ptr, ptr %9, align 8, !tbaa !41
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %46)
  %48 = icmp slt i32 %47, 0
  %49 = load ptr, ptr %9, align 8, !tbaa !41
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !48
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %57

56:                                               ; preds = %45
  call void @_ZdlPv(ptr noundef %49) #20
  br label %57

57:                                               ; preds = %52, %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  br i1 %48, label %58, label %63

58:                                               ; preds = %57
  %59 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %59, ptr noundef nonnull @.str.1)
          to label %60 unwind label %61

60:                                               ; preds = %58
  call void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %72

63:                                               ; preds = %57, %40
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %67, ptr noundef nonnull @.str.1)
          to label %68 unwind label %69

68:                                               ; preds = %66
  call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %72

71:                                               ; preds = %63
  ret void

72:                                               ; preds = %69, %61, %38, %15
  %73 = phi ptr [ %67, %69 ], [ %59, %61 ], [ %36, %38 ], [ %13, %15 ]
  %74 = phi { ptr, i32 } [ %70, %69 ], [ %62, %61 ], [ %39, %38 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %73) #18
  resume { ptr, i32 } %74
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter27recordDeleteMessageEntry_idEP8_IO_FILEi(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14EventLogWriter30recordDeleteMessageEntry_id_peEP8_IO_FILEil(ptr nocapture noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %3
  %12 = icmp eq i64 %2, -1
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %2)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.1)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %30

21:                                               ; preds = %13, %11
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str.1)
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #19
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
  tail call void @__cxa_free_exception(ptr %31) #18
  resume { ptr, i32 } %32
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !54

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !48
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #20
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !54

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #20
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !55

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !48
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #20
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !56
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !40 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !48
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.52)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !61, !alias.scope !62
  %10 = load ptr, ptr %7, align 8, !tbaa !41
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !48
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !41, !alias.scope !62
  %19 = load i64, ptr %11, align 8, !tbaa !65
  store i64 %19, ptr %9, align 8, !tbaa !65, !alias.scope !62
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !48, !alias.scope !62
  store ptr %11, ptr %7, align 8, !tbaa !41
  store i64 0, ptr %21, align 8, !tbaa !48
  store i8 0, ptr %11, align 8, !tbaa !65
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !48, !noalias !66
  %27 = load i64, ptr %23, align 8, !tbaa !48, !noalias !66
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !41, !noalias !66
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !61, !alias.scope !66
  %37 = load ptr, ptr %34, align 8, !tbaa !41
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !48
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !41, !alias.scope !66
  %46 = load i64, ptr %38, align 8, !tbaa !65
  store i64 %46, ptr %36, align 8, !tbaa !65, !alias.scope !66
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !48, !alias.scope !66
  store ptr %38, ptr %34, align 8, !tbaa !41
  store i64 0, ptr %48, align 8, !tbaa !48
  store i8 0, ptr %38, align 8, !tbaa !65
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %52 = load ptr, ptr %3, align 8, !tbaa !41
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !48
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #20
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !41
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !48
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #20
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !41
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !48
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #20
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !41
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !48
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #20
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !41
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !48
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #20
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !51 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !69, !range !70, !noundef !71
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !72
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !61
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #19
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i64 %9, ptr %4, align 8, !tbaa !73
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !74

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !41
  %13 = load i64, ptr %4, align 8, !tbaa !73
  store i64 %13, ptr %5, align 8, !tbaa !65
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !41
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !75

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !65
  store i8 %17, ptr %15, align 1, !tbaa !65
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !76
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !73
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !48
  %22 = load ptr, ptr %0, align 8, !tbaa !41
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #13 comdat align 2 !prof !77 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !78
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !79

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !80
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !79

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !49
  ret ptr %0
}

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_eventlogwriter.cc() #15 section ".text.startup" !prof !51 !PGOFuncName !82 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!36 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_eventlogwriter.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_eventlogwriter.cc, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !44, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !47, i64 8, !45, i64 16}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"long", !45, i64 0}
!48 = !{!42, !47, i64 8}
!49 = !{!50, !47, i64 0}
!50 = !{!"_ZTS7SimTime", !47, i64 0}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !46, i64 0}
!54 = !{!"branch_weights", i32 1, i32 0}
!55 = !{!"branch_weights", i32 0, i32 1}
!56 = !{!57, !59, i64 8}
!57 = !{!"_ZTS10cException", !58, i64 0, !59, i64 8, !42, i64 16, !60, i64 48, !42, i64 56, !42, i64 88, !59, i64 120}
!58 = !{!"_ZTSSt9exception"}
!59 = !{!"int", !45, i64 0}
!60 = !{!"bool", !45, i64 0}
!61 = !{!43, !44, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!64 = distinct !{!64, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!65 = !{!45, !45, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!68 = distinct !{!68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!69 = !{!57, !60, i64 48}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!57, !59, i64 120}
!73 = !{!47, !47, i64 0}
!74 = !{!"branch_weights", i32 1257662, i32 631781}
!75 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!76 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!77 = !{!"function_entry_count", i64 980215783}
!78 = !{!59, !59, i64 0}
!79 = !{!"branch_weights", i32 0, i32 980215783}
!80 = !{!81, !81, i64 0}
!81 = !{!"double", !45, i64 0}
!82 = !{!"simulator/eventlogwriter.cc;_GLOBAL__sub_I_eventlogwriter.cc"}
