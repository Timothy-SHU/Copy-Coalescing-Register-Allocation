; ModuleID = 'LocalFileFormatTarget.cpp'
source_filename = "LocalFileFormatTarget.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::LocalFileFormatTarget" = type { %"class.xercesc_2_7::XMLFormatTarget", ptr, ptr, i32, i32, ptr }
%"class.xercesc_2_7::XMLFormatTarget" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_715XMLFormatTargetE = comdat any

$_ZTIN11xercesc_2_715XMLFormatTargetE = comdat any

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
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721LocalFileFormatTargetC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_721LocalFileFormatTargetC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_721LocalFileFormatTargetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 1023, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  store ptr %2, ptr %6, align 8, !tbaa !44
  %7 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
  store ptr %7, ptr %4, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %11 = load ptr, ptr %6, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 31, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %6, align 8, !tbaa !44
  %18 = load i32, ptr %5, align 4, !tbaa !38
  %19 = add i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %17, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %20)
  store ptr %24, ptr %16, align 8, !tbaa !46
  store i8 0, ptr %24, align 1, !tbaa !47
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetC2EPKcPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 1023, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  store ptr %2, ptr %6, align 8, !tbaa !44
  %7 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
  store ptr %7, ptr %4, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %11 = load ptr, ptr %6, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 31, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #8
  resume { ptr, i32 } %14

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %6, align 8, !tbaa !44
  %18 = load i32, ptr %5, align 4, !tbaa !38
  %19 = add i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %17, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %20)
  store ptr %24, ptr %16, align 8, !tbaa !46
  store i8 0, ptr %24, align 1, !tbaa !47
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721LocalFileFormatTargetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %3, i64 noundef %6, ptr noundef %8, ptr noundef %10)
          to label %11 unwind label %39

11:                                               ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !48
  %12 = load ptr, ptr %7, align 8, !tbaa !46
  store i8 0, ptr %12, align 1, !tbaa !47
  %13 = load ptr, ptr %7, align 8, !tbaa !46
  %14 = load i32, ptr %4, align 8, !tbaa !48
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !47
  %18 = load ptr, ptr %7, align 8, !tbaa !46
  %19 = load i32, ptr %4, align 8, !tbaa !48
  %20 = add i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !47
  %23 = load ptr, ptr %7, align 8, !tbaa !46
  %24 = load i32, ptr %4, align 8, !tbaa !48
  %25 = add i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !47
  %28 = load ptr, ptr %2, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %11
  %31 = load ptr, ptr %9, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef nonnull %28, ptr noundef %31)
          to label %32 unwind label %39

32:                                               ; preds = %30, %11
  %33 = load ptr, ptr %9, align 8, !tbaa !44
  %34 = load ptr, ptr %7, align 8, !tbaa !46
  %35 = load ptr, ptr %33, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %34)
          to label %38 unwind label %39

38:                                               ; preds = %32
  ret void

39:                                               ; preds = %1, %32, %30
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  tail call void @__clang_call_terminate(ptr %41) #10
  unreachable
}

; Function Attrs: cold mustprogress uwtable
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
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %3, i64 noundef %6, ptr noundef %8, ptr noundef %10)
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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_721LocalFileFormatTargetD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTarget5flushEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %3, i64 noundef %6, ptr noundef %8, ptr noundef %10)
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721LocalFileFormatTarget10writeCharsEPKhjPNS_12XMLFormatterE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) unnamed_addr #0 align 2 !prof !34 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_721LocalFileFormatTarget14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  %8 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !48
  %10 = zext i32 %9 to i64
  br i1 %7, label %11, label %18

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds i8, ptr %13, i64 %10
  %15 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %15, i1 false)
  %16 = load i32, ptr %8, align 8, !tbaa !48
  %17 = add i32 %16, %2
  store i32 %17, ptr %8, align 8, !tbaa !48
  br label %44

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %20, i64 noundef %10, ptr noundef %22, ptr noundef %24)
  store i32 0, ptr %8, align 8, !tbaa !48
  %25 = load ptr, ptr %21, align 8, !tbaa !46
  store i8 0, ptr %25, align 1, !tbaa !47
  %26 = load ptr, ptr %21, align 8, !tbaa !46
  %27 = load i32, ptr %8, align 8, !tbaa !48
  %28 = add i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !47
  %31 = load ptr, ptr %21, align 8, !tbaa !46
  %32 = load i32, ptr %8, align 8, !tbaa !48
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !47
  %36 = load ptr, ptr %21, align 8, !tbaa !46
  %37 = load i32, ptr %8, align 8, !tbaa !48
  %38 = add i32 %37, 3
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 0, ptr %40, align 1, !tbaa !47
  %41 = load ptr, ptr %19, align 8, !tbaa !45
  %42 = zext i32 %2 to i64
  %43 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %41, i64 noundef %42, ptr noundef %1, ptr noundef %43)
  br label %44

44:                                               ; preds = %11, %18, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_721LocalFileFormatTarget14insureCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %60, label %9

9:                                                ; preds = %2
  %10 = shl i32 %5, 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = add i32 %10, 4
  %14 = zext i32 %13 to i64
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %14)
          to label %19 unwind label %51

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
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26)
  store ptr %18, ptr %20, align 8, !tbaa !46
  store i32 %10, ptr %6, align 4, !tbaa !38
  %30 = getelementptr inbounds %"class.xercesc_2_7::LocalFileFormatTarget", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = load i32, ptr %3, align 8, !tbaa !48
  %33 = zext i32 %32 to i64
  %34 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %31, i64 noundef %33, ptr noundef %18, ptr noundef %34)
  store i32 0, ptr %3, align 8, !tbaa !48
  %35 = load ptr, ptr %20, align 8, !tbaa !46
  store i8 0, ptr %35, align 1, !tbaa !47
  %36 = load ptr, ptr %20, align 8, !tbaa !46
  %37 = load i32, ptr %3, align 8, !tbaa !48
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 0, ptr %40, align 1, !tbaa !47
  %41 = load ptr, ptr %20, align 8, !tbaa !46
  %42 = load i32, ptr %3, align 8, !tbaa !48
  %43 = add i32 %42, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  store i8 0, ptr %45, align 1, !tbaa !47
  %46 = load ptr, ptr %20, align 8, !tbaa !46
  %47 = load i32, ptr %3, align 8, !tbaa !48
  %48 = add i32 %47, 3
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  store i8 0, ptr %50, align 1, !tbaa !47
  br label %60

51:                                               ; preds = %9
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %53 = extractvalue { ptr, i32 } %52, 1
  %54 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #8
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = extractvalue { ptr, i32 } %52, 0
  %58 = tail call ptr @__cxa_begin_catch(ptr %57) #8
  tail call void @__cxa_end_catch()
  br label %60

59:                                               ; preds = %51
  resume { ptr, i32 } %52

60:                                               ; preds = %56, %19, %2
  %61 = phi i1 [ true, %2 ], [ true, %19 ], [ false, %56 ]
  ret i1 %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
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
!49 = !{!50, !41, i64 40}
!50 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !51, i64 8, !41, i64 16, !43, i64 24, !41, i64 32, !41, i64 40}
!51 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
