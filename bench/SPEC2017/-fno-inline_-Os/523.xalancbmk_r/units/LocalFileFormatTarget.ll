; ModuleID = 'LocalFileFormatTarget.cpp'
source_filename = "LocalFileFormatTarget.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::LocalFileFormatTarget" = type { %"class.xercesc_2_7::XMLFormatTarget", ptr, ptr, i32, i32, ptr }
%"class.xercesc_2_7::XMLFormatTarget" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715XMLFormatTargetC2Ev = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715XMLFormatTargetD2Ev = comdat any

$_ZN11xercesc_2_715XMLFormatTargetD0Ev = comdat any

$_ZN11xercesc_2_715XMLFormatTarget5flushEv = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTIN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTVN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

@_ZTVN11xercesc_2_721LocalFileFormatTargetE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721LocalFileFormatTargetE, ptr @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev, ptr @_ZN11xercesc_2_721LocalFileFormatTargetD0Ev, ptr @_ZN11xercesc_2_721LocalFileFormatTarget10writeCharsEPKhjPNS_12XMLFormatterE, ptr @_ZN11xercesc_2_721LocalFileFormatTarget5flushEv] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"LocalFileFormatTarget.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_721LocalFileFormatTargetE = dso_local constant [39 x i8] c"N11xercesc_2_721LocalFileFormatTargetE\00", align 1
@_ZTSN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715XMLFormatTargetE\00", comdat, align 1
@_ZTIN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLFormatTargetE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_721LocalFileFormatTargetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721LocalFileFormatTargetE, ptr @_ZTIN11xercesc_2_715XMLFormatTargetE }, align 8
@_ZTVN11xercesc_2_715XMLFormatTargetE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLFormatTargetE, ptr @_ZN11xercesc_2_715XMLFormatTargetD2Ev, ptr @_ZN11xercesc_2_715XMLFormatTargetD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_715XMLFormatTarget5flushEv] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721LocalFileFormatTargetC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_721LocalFileFormatTargetC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_721LocalFileFormatTargetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_715XMLFormatTargetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 1023, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  store ptr %2, ptr %6, align 8, !tbaa !44
  %7 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #9
          to label %8 unwind label %14

8:                                                ; preds = %3
  store ptr %7, ptr %4, align 8, !tbaa !45
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %12 = load ptr, ptr %6, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 31, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %12) #9
          to label %13 unwind label %16

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %31 unwind label %14

14:                                               ; preds = %18, %13, %3
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %29

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #10
  br label %29

18:                                               ; preds = %8
  %19 = load ptr, ptr %6, align 8, !tbaa !44
  %20 = load i32, ptr %5, align 4, !tbaa !38
  %21 = add i32 %20, 4
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %19, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %22) #9
          to label %27 unwind label %14

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !46
  store i8 0, ptr %26, align 1, !tbaa !47
  ret void

29:                                               ; preds = %16, %14
  %30 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %30

31:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_715XMLFormatTargetC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 1023, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  store ptr %2, ptr %6, align 8, !tbaa !44
  %7 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #9
          to label %8 unwind label %14

8:                                                ; preds = %3
  store ptr %7, ptr %4, align 8, !tbaa !45
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %12 = load ptr, ptr %6, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 31, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %12) #9
          to label %13 unwind label %16

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %31 unwind label %14

14:                                               ; preds = %18, %13, %3
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %29

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #10
  br label %29

18:                                               ; preds = %8
  %19 = load ptr, ptr %6, align 8, !tbaa !44
  %20 = load i32, ptr %5, align 4, !tbaa !38
  %21 = add i32 %20, 4
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %19, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %22) #9
          to label %27 unwind label %14

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !46
  store i8 0, ptr %26, align 1, !tbaa !47
  ret void

29:                                               ; preds = %16, %14
  %30 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %30

31:                                               ; preds = %13
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_721LocalFileFormatTarget11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %8) #9
          to label %9 unwind label %18

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %11, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %13) #9
          to label %17 unwind label %18

17:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void

18:                                               ; preds = %9, %6, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTarget11flushBufferEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %3, i64 noundef %6, ptr noundef %8, ptr noundef %10) #9
  store i32 0, ptr %4, align 8, !tbaa !48
  %11 = load ptr, ptr %7, align 8, !tbaa !46
  store i8 0, ptr %11, align 1, !tbaa !47
  %12 = load ptr, ptr %7, align 8, !tbaa !46
  %13 = load i32, ptr %4, align 8, !tbaa !48
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !47
  %17 = load ptr, ptr %7, align 8, !tbaa !46
  %18 = load i32, ptr %4, align 8, !tbaa !48
  %19 = add i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !47
  %22 = load ptr, ptr %7, align 8, !tbaa !46
  %23 = load i32, ptr %4, align 8, !tbaa !48
  %24 = add i32 %23, 3
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  store i8 0, ptr %26, align 1, !tbaa !47
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTarget5flushEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_721LocalFileFormatTarget11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTarget10writeCharsEPKhjPNS_12XMLFormatterE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 !prof !34 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_721LocalFileFormatTarget14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #9
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !48
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %15, i1 false)
  %16 = load i32, ptr %11, align 8, !tbaa !48
  %17 = add i32 %16, %2
  store i32 %17, ptr %11, align 8, !tbaa !48
  br label %24

18:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_721LocalFileFormatTarget11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  %19 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %20, i64 noundef %21, ptr noundef %1, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %8, %18, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721LocalFileFormatTarget14insureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = add i32 %10, 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14) #9
          to label %19 unwind label %30

19:                                               ; preds = %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load i32, ptr %6, align 4, !tbaa !38
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 %24, i1 false)
  %25 = load ptr, ptr %11, align 8, !tbaa !44
  %26 = load ptr, ptr %20, align 8, !tbaa !46
  %27 = load ptr, ptr %25, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26) #9
  store ptr %18, ptr %20, align 8, !tbaa !46
  store i32 %10, ptr %6, align 4, !tbaa !38
  tail call void @_ZN11xercesc_2_721LocalFileFormatTarget11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  br label %39

30:                                               ; preds = %9
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = tail call ptr @__cxa_begin_catch(ptr %36) #10
  tail call void @__cxa_end_catch()
  br label %39

38:                                               ; preds = %30
  resume { ptr, i32 } %31

39:                                               ; preds = %35, %19, %2
  %40 = phi i1 [ true, %2 ], [ true, %19 ], [ false, %35 ]
  ret i1 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLFormatTarget5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 28}
!39 = !{!"_ZTSN11xercesc_2_721LocalFileFormatTargetE", !40, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !43, i64 28, !41, i64 32}
!40 = !{!"_ZTSN11xercesc_2_715XMLFormatTargetE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!39, !41, i64 32}
!45 = !{!39, !41, i64 8}
!46 = !{!39, !41, i64 16}
!47 = !{!42, !42, i64 0}
!48 = !{!39, !43, i64 24}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!51, !41, i64 40}
!51 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !52, i64 8, !41, i64 16, !43, i64 24, !41, i64 32, !41, i64 40}
!52 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
