; ModuleID = 'LocalFileInputSource.cpp'
source_filename = "LocalFileInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711InputSource16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv = comdat any

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

@_ZTVN11xercesc_2_720LocalFileInputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720LocalFileInputSourceE, ptr @_ZN11xercesc_2_720LocalFileInputSourceD2Ev, ptr @_ZN11xercesc_2_720LocalFileInputSourceD0Ev, ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720LocalFileInputSourceE = dso_local constant [38 x i8] c"N11xercesc_2_720LocalFileInputSourceE\00", align 1
@_ZTIN11xercesc_2_711InputSourceE = external constant ptr
@_ZTIN11xercesc_2_720LocalFileInputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720LocalFileInputSourceE, ptr @_ZTIN11xercesc_2_711InputSourceE }, align 8

@_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_720LocalFileInputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720LocalFileInputSourceD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3) #5
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_720LocalFileInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %5 = invoke noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #5
          to label %6 unwind label %17

6:                                                ; preds = %4
  br i1 %5, label %7, label %21, !prof !49

7:                                                ; preds = %6
  %8 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
          to label %9 unwind label %19

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %8) #5
          to label %13 unwind label %19

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %8) #5
          to label %34 unwind label %19

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %35

19:                                               ; preds = %13, %9, %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %35

21:                                               ; preds = %6
  %22 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #5
          to label %23 unwind label %32

23:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %3) #5
          to label %24 unwind label %32

24:                                               ; preds = %23
  %25 = load ptr, ptr %0, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %22) #5
          to label %28 unwind label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %22) #5
          to label %34 unwind label %32

32:                                               ; preds = %28, %24, %23, %21
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %35

34:                                               ; preds = %28, %13
  ret void

35:                                               ; preds = %32, %19, %17
  %36 = phi { ptr, i32 } [ %20, %19 ], [ %33, %32 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !50 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !51

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #5
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %2) #5
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_720LocalFileInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = invoke noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #5
          to label %5 unwind label %38

5:                                                ; preds = %3
  br i1 %4, label %6, label %44

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef %2) #5
          to label %8 unwind label %40

8:                                                ; preds = %6
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %7) #5
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #5
  %11 = add i32 %9, 2
  %12 = add i32 %11, %10
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 1
  %15 = load ptr, ptr %2, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %14) #5
          to label %19 unwind label %42

19:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %18, ptr noundef %7) #5
          to label %20 unwind label %42

20:                                               ; preds = %19
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21
  store i16 47, ptr %22, align 2, !tbaa !53
  %23 = getelementptr i16, ptr %22, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %23, ptr noundef %1) #5
          to label %24 unwind label %42

24:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %18, ptr noundef nonnull %2) #5
          to label %25 unwind label %42

25:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %18, ptr noundef nonnull %2) #5
          to label %26 unwind label %42

26:                                               ; preds = %25
  %27 = load ptr, ptr %0, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %18) #5
          to label %30 unwind label %42

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %7) #5
          to label %34 unwind label %42

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !46
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %18) #5
          to label %57 unwind label %42

38:                                               ; preds = %3
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %58

40:                                               ; preds = %6
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %58

42:                                               ; preds = %34, %30, %26, %25, %24, %20, %19, %8
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %58

44:                                               ; preds = %5
  %45 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #5
          to label %46 unwind label %55

46:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %2) #5
          to label %47 unwind label %55

47:                                               ; preds = %46
  %48 = load ptr, ptr %0, align 8, !tbaa !46
  %49 = getelementptr inbounds ptr, ptr %48, i64 9
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %45) #5
          to label %51 unwind label %55

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %45) #5
          to label %57 unwind label %55

55:                                               ; preds = %51, %47, %46, %44
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %58

57:                                               ; preds = %51, %34
  ret void

58:                                               ; preds = %40, %42, %55, %38
  %59 = phi { ptr, i32 } [ %56, %55 ], [ %39, %38 ], [ %43, %42 ], [ %41, %40 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  resume { ptr, i32 } %59
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !57

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !53
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !58

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !53
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !59, !llvm.loop !60

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_720LocalFileInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %2) #5
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
          to label %8 unwind label %16

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  invoke void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %7, ptr noundef %9) #5
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #5
  br i1 %11, label %18, label %12, !prof !49

12:                                               ; preds = %10
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %3) #6
  br label %18

16:                                               ; preds = %8, %1
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #6
  resume { ptr, i32 } %17

18:                                               ; preds = %10, %12
  %19 = phi ptr [ null, %12 ], [ %3, %10 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #3 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !75, !range !76, !noundef !77
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !78 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!39 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceD2Ev, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv, i64 2}
!41 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 2, i32 1}
!50 = !{!"function_entry_count", i64 558789}
!51 = !{!"branch_weights", i32 158605, i32 400186}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !55, i64 0}
!55 = !{!"omnipotent char", !48, i64 0}
!56 = !{!"function_entry_count", i64 2453164456}
!57 = !{!"branch_weights", i32 1, i32 -1841802839}
!58 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!59 = !{!"branch_weights", i32 408669070, i32 -279908794}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"function_entry_count", i64 4}
!63 = !{!64, !65, i64 8}
!64 = !{!"_ZTSN11xercesc_2_711InputSourceE", !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !66, i64 40}
!65 = !{!"any pointer", !55, i64 0}
!66 = !{!"bool", !55, i64 0}
!67 = !{!"function_entry_count", i64 3}
!68 = !{!69, !65, i64 8}
!69 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !70, i64 0, !65, i64 8, !65, i64 16}
!70 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!71 = !{!64, !65, i64 16}
!72 = !{!64, !65, i64 24}
!73 = !{!"function_entry_count", i64 13}
!74 = !{!64, !65, i64 32}
!75 = !{!64, !66, i64 40}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"function_entry_count", i64 2}
