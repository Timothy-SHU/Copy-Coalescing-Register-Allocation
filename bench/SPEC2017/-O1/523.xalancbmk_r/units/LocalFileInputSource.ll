; ModuleID = 'LocalFileInputSource.cpp'
source_filename = "LocalFileInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_720LocalFileInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %5 = invoke noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
          to label %6 unwind label %17, !prof !49

6:                                                ; preds = %4
  br i1 %5, label %7, label %21, !prof !49

7:                                                ; preds = %6
  %8 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %9 unwind label %19, !prof !49

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %8)
          to label %13 unwind label %19, !prof !50

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %8)
          to label %56 unwind label %19, !prof !51

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %57

19:                                               ; preds = %13, %9, %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %57

21:                                               ; preds = %6
  %22 = icmp eq ptr %2, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %21
  %24 = load i16, ptr %2, align 2, !tbaa !52
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %28, %26 ], [ %2, %23 ]
  %28 = getelementptr inbounds i16, ptr %27, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !52
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %26, !llvm.loop !55

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i64
  %33 = ptrtoint ptr %2 to i64
  %34 = sub i64 %32, %33
  %35 = add i64 %34, 2
  %36 = and i64 %35, 8589934590
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi i64 [ %36, %31 ], [ 2, %23 ]
  %39 = load ptr, ptr %3, align 8, !tbaa !46
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %38)
          to label %43 unwind label %54

43:                                               ; preds = %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %42, ptr nonnull align 2 %2, i64 %38, i1 false)
  br label %44

44:                                               ; preds = %43, %21
  %45 = phi ptr [ %42, %43 ], [ null, %21 ]
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %3)
          to label %46 unwind label %54

46:                                               ; preds = %44
  %47 = load ptr, ptr %0, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 9
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %45)
          to label %50 unwind label %54

50:                                               ; preds = %46
  %51 = load ptr, ptr %3, align 8, !tbaa !46
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %45)
          to label %56 unwind label %54

54:                                               ; preds = %37, %50, %46, %44
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %57

56:                                               ; preds = %50, %13
  ret void

57:                                               ; preds = %54, %19, %17
  %58 = phi { ptr, i32 } [ %20, %19 ], [ %55, %54 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  resume { ptr, i32 } %58
}

declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_720LocalFileInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = invoke noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
          to label %5 unwind label %70

5:                                                ; preds = %3
  br i1 %4, label %6, label %76

6:                                                ; preds = %5
  %7 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef %2)
          to label %8 unwind label %72

8:                                                ; preds = %6
  %9 = icmp eq ptr %7, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %8
  %11 = load i16, ptr %7, align 2, !tbaa !52
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %7, %10 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !52
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !55

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %7 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %8, %10, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %10 ], [ 0, %8 ]
  %26 = icmp eq ptr %1, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load i16, ptr %1, align 2, !tbaa !52
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %27 ]
  %32 = getelementptr inbounds i16, ptr %31, i64 1
  %33 = load i16, ptr %32, align 2, !tbaa !52
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %30, !llvm.loop !55

35:                                               ; preds = %30
  %36 = ptrtoint ptr %32 to i64
  %37 = ptrtoint ptr %1 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  br label %41

41:                                               ; preds = %24, %27, %35
  %42 = phi i32 [ %40, %35 ], [ 0, %27 ], [ 0, %24 ]
  %43 = add i32 %25, 2
  %44 = add i32 %43, %42
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 1
  %47 = load ptr, ptr %2, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %46)
          to label %51 unwind label %74

51:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %50, ptr noundef %7)
          to label %52 unwind label %74

52:                                               ; preds = %51
  %53 = sext i32 %25 to i64
  %54 = getelementptr inbounds i16, ptr %50, i64 %53
  store i16 47, ptr %54, align 2, !tbaa !52
  %55 = getelementptr i16, ptr %54, i64 1
  invoke void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %55, ptr noundef %1)
          to label %56 unwind label %74

56:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %50, ptr noundef nonnull %2)
          to label %57 unwind label %74

57:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef %50, ptr noundef nonnull %2)
          to label %58 unwind label %74

58:                                               ; preds = %57
  %59 = load ptr, ptr %0, align 8, !tbaa !46
  %60 = getelementptr inbounds ptr, ptr %59, i64 9
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %50)
          to label %62 unwind label %74

62:                                               ; preds = %58
  %63 = load ptr, ptr %2, align 8, !tbaa !46
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %7)
          to label %66 unwind label %74

66:                                               ; preds = %62
  %67 = load ptr, ptr %2, align 8, !tbaa !46
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %50)
          to label %111 unwind label %74

70:                                               ; preds = %3
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %112

72:                                               ; preds = %6
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %112

74:                                               ; preds = %66, %62, %58, %57, %56, %52, %51, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %112

76:                                               ; preds = %5
  %77 = icmp eq ptr %1, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %76
  %79 = load i16, ptr %1, align 2, !tbaa !52
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %83, %81 ], [ %1, %78 ]
  %83 = getelementptr inbounds i16, ptr %82, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !52
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %81, !llvm.loop !55

86:                                               ; preds = %81
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %1 to i64
  %89 = sub i64 %87, %88
  %90 = add i64 %89, 2
  %91 = and i64 %90, 8589934590
  br label %92

92:                                               ; preds = %86, %78
  %93 = phi i64 [ %91, %86 ], [ 2, %78 ]
  %94 = load ptr, ptr %2, align 8, !tbaa !46
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %93)
          to label %98 unwind label %109

98:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr nonnull align 2 %1, i64 %93, i1 false)
  br label %99

99:                                               ; preds = %98, %76
  %100 = phi ptr [ %97, %98 ], [ null, %76 ]
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %2)
          to label %101 unwind label %109

101:                                              ; preds = %99
  %102 = load ptr, ptr %0, align 8, !tbaa !46
  %103 = getelementptr inbounds ptr, ptr %102, i64 9
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %100)
          to label %105 unwind label %109

105:                                              ; preds = %101
  %106 = load ptr, ptr %2, align 8, !tbaa !46
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %100)
          to label %111 unwind label %109

109:                                              ; preds = %92, %105, %101, %99
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %112

111:                                              ; preds = %105, %66
  ret void

112:                                              ; preds = %72, %74, %109, %70
  %113 = phi { ptr, i32 } [ %110, %109 ], [ %71, %70 ], [ %75, %74 ], [ %73, %72 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  resume { ptr, i32 } %113
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_720LocalFileInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %3)
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %9 unwind label %19, !prof !63

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %8, ptr noundef %10)
          to label %11 unwind label %19, !prof !49

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !67

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(24) %4) #6
  br label %21

19:                                               ; preds = %9, %1
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %20

21:                                               ; preds = %11, %15
  %22 = phi ptr [ null, %15 ], [ %4, %11 ]
  ret ptr %22
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !73, !range !74, !noundef !75
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !76 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceC2EPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, i64 1}
!39 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceD0Ev, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_720LocalFileInputSourceD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!41 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, i64 1}
!43 = !{ptr @_ZNK11xercesc_2_720LocalFileInputSource10makeStreamEv, ptr @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 1, i32 0}
!50 = !{!"VP", i32 0, i64 1, i64 -7594658325268626610, i64 1}
!51 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !54, i64 0}
!54 = !{!"omnipotent char", !48, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTSN11xercesc_2_711InputSourceE", !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !62, i64 40}
!61 = !{!"any pointer", !54, i64 0}
!62 = !{!"bool", !54, i64 0}
!63 = !{!"VP", i32 0, i64 1, i64 -3228203282622328352, i64 1}
!64 = !{!65, !61, i64 8}
!65 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !66, i64 0, !61, i64 8, !61, i64 16}
!66 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!"function_entry_count", i64 3}
!69 = !{!60, !61, i64 16}
!70 = !{!60, !61, i64 24}
!71 = !{!"function_entry_count", i64 13}
!72 = !{!60, !61, i64 32}
!73 = !{!60, !62, i64 40}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!"function_entry_count", i64 2}
