; ModuleID = 'SAXParseException.cpp'
source_filename = "SAXParseException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }

$_ZN11xercesc_2_712SAXExceptionC2ERKS0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712SAXExceptionaSERKS0_ = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN11xercesc_2_717SAXParseExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_717SAXParseExceptionD2Ev, ptr @_ZN11xercesc_2_717SAXParseExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717SAXParseExceptionE = dso_local constant [35 x i8] c"N11xercesc_2_717SAXParseExceptionE\00", align 1
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717SAXParseExceptionE, ptr @_ZTIN11xercesc_2_712SAXExceptionE }, align 8
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8

@_ZN11xercesc_2_717SAXParseExceptionC1EPKtRKNS_7LocatorEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2EPKtRKNS_7LocatorEPNS_13MemoryManagerE
@_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i64, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2EPKtS2_S2_llPNS_13MemoryManagerE
@_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionC2ERKS0_
@_ZN11xercesc_2_717SAXParseExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717SAXParseExceptionD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2EPKtRKNS_7LocatorEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !38
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %1, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !38
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !41

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 2
  %19 = and i64 %18, 8589934590
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi i64 [ %19, %14 ], [ 2, %6 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %21)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr nonnull align 2 %1, i64 %21, i1 false)
  br label %26

26:                                               ; preds = %4, %20
  %27 = phi ptr [ %25, %20 ], [ null, %4 ]
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !44
  %29 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  store ptr %3, ptr %29, align 8, !tbaa !47
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %30 = load ptr, ptr %2, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef i64 %32(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %34 unwind label %102

34:                                               ; preds = %26
  %35 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  store i64 %33, ptr %35, align 8, !tbaa !48
  %36 = load ptr, ptr %2, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef i64 %38(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %40 unwind label %102

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  store i64 %39, ptr %41, align 8, !tbaa !51
  %42 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %2, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %47 unwind label %102

47:                                               ; preds = %40
  %48 = icmp eq ptr %46, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %47
  %50 = load i16, ptr %46, align 2, !tbaa !38
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %54, %52 ], [ %46, %49 ]
  %54 = getelementptr inbounds i16, ptr %53, i64 1
  %55 = load i16, ptr %54, align 2, !tbaa !38
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %52, !llvm.loop !41

57:                                               ; preds = %52
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %46 to i64
  %60 = sub i64 %58, %59
  %61 = add i64 %60, 2
  %62 = and i64 %61, 8589934590
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i64 [ %62, %57 ], [ 2, %49 ]
  %65 = load ptr, ptr %3, align 8, !tbaa !35
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %64)
          to label %69 unwind label %102

69:                                               ; preds = %63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %68, ptr nonnull align 2 %46, i64 %64, i1 false)
  br label %70

70:                                               ; preds = %69, %47
  %71 = phi ptr [ %68, %69 ], [ null, %47 ]
  store ptr %71, ptr %42, align 8, !tbaa !52
  %72 = load ptr, ptr %2, align 8, !tbaa !35
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %76 unwind label %102

76:                                               ; preds = %70
  %77 = icmp eq ptr %75, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %76
  %79 = load i16, ptr %75, align 2, !tbaa !38
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %83, %81 ], [ %75, %78 ]
  %83 = getelementptr inbounds i16, ptr %82, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !38
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %81, !llvm.loop !41

86:                                               ; preds = %81
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %75 to i64
  %89 = sub i64 %87, %88
  %90 = add i64 %89, 2
  %91 = and i64 %90, 8589934590
  br label %92

92:                                               ; preds = %86, %78
  %93 = phi i64 [ %91, %86 ], [ 2, %78 ]
  %94 = load ptr, ptr %3, align 8, !tbaa !35
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %93)
          to label %98 unwind label %102

98:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr nonnull align 2 %75, i64 %93, i1 false)
  br label %99

99:                                               ; preds = %98, %76
  %100 = phi ptr [ %97, %98 ], [ null, %76 ]
  %101 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %100, ptr %101, align 8, !tbaa !53
  ret void

102:                                              ; preds = %92, %63, %70, %40, %34, %26
  %103 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %104 = load ptr, ptr %29, align 8, !tbaa !47
  %105 = load ptr, ptr %28, align 8, !tbaa !44
  %106 = load ptr, ptr %104, align 8, !tbaa !35
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %105)
          to label %112 unwind label %109

109:                                              ; preds = %102
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  tail call void @__clang_call_terminate(ptr %111) #7
  unreachable

112:                                              ; preds = %102
  resume { ptr, i32 } %103
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2EPKtS2_S2_llPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = icmp eq ptr %1, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = load i16, ptr %1, align 2, !tbaa !38
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %1, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !38
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !41

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %6, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %24)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %1, i64 %24, i1 false)
  br label %29

29:                                               ; preds = %7, %23
  %30 = phi ptr [ %28, %23 ], [ null, %7 ]
  %31 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !44
  %32 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  store ptr %6, ptr %32, align 8, !tbaa !47
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %33 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  store i64 %5, ptr %33, align 8, !tbaa !48
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  store i64 %4, ptr %34, align 8, !tbaa !51
  %35 = icmp eq ptr %2, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %29
  %37 = load i16, ptr %2, align 2, !tbaa !38
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %41, %39 ], [ %2, %36 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !38
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !llvm.loop !41

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %2 to i64
  %47 = sub i64 %45, %46
  %48 = add i64 %47, 2
  %49 = and i64 %48, 8589934590
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i64 [ %49, %44 ], [ 2, %36 ]
  %52 = load ptr, ptr %6, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %51)
          to label %56 unwind label %85

56:                                               ; preds = %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr nonnull align 2 %2, i64 %51, i1 false)
  br label %57

57:                                               ; preds = %56, %29
  %58 = phi ptr [ %55, %56 ], [ null, %29 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !52
  %60 = icmp eq ptr %3, null
  br i1 %60, label %82, label %61

61:                                               ; preds = %57
  %62 = load i16, ptr %3, align 2, !tbaa !38
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %66, %64 ], [ %3, %61 ]
  %66 = getelementptr inbounds i16, ptr %65, i64 1
  %67 = load i16, ptr %66, align 2, !tbaa !38
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %64, !llvm.loop !41

69:                                               ; preds = %64
  %70 = ptrtoint ptr %66 to i64
  %71 = ptrtoint ptr %3 to i64
  %72 = sub i64 %70, %71
  %73 = add i64 %72, 2
  %74 = and i64 %73, 8589934590
  br label %75

75:                                               ; preds = %69, %61
  %76 = phi i64 [ %74, %69 ], [ 2, %61 ]
  %77 = load ptr, ptr %6, align 8, !tbaa !35
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %76)
          to label %81 unwind label %85

81:                                               ; preds = %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %80, ptr nonnull align 2 %3, i64 %76, i1 false)
  br label %82

82:                                               ; preds = %81, %57
  %83 = phi ptr [ %80, %81 ], [ null, %57 ]
  %84 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %83, ptr %84, align 8, !tbaa !53
  ret void

85:                                               ; preds = %75, %50
  %86 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %87 = load ptr, ptr %32, align 8, !tbaa !47
  %88 = load ptr, ptr %31, align 8, !tbaa !44
  %89 = load ptr, ptr %87, align 8, !tbaa !35
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %88)
          to label %95 unwind label %92

92:                                               ; preds = %85
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #7
  unreachable

95:                                               ; preds = %85
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712SAXExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !48
  store i64 %5, ptr %3, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !51
  store i64 %8, ptr %6, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %11, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %2
  %16 = load i16, ptr %11, align 2, !tbaa !38
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %11, %15 ]
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !38
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %18, !llvm.loop !41

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i64
  %25 = ptrtoint ptr %11 to i64
  %26 = sub i64 %24, %25
  %27 = add i64 %26, 2
  %28 = and i64 %27, 8589934590
  br label %29

29:                                               ; preds = %23, %15
  %30 = phi i64 [ %28, %23 ], [ 2, %15 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %30)
          to label %35 unwind label %66

35:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 %11, i64 %30, i1 false)
  br label %36

36:                                               ; preds = %35, %2
  %37 = phi ptr [ %34, %35 ], [ null, %2 ]
  store ptr %37, ptr %9, align 8, !tbaa !52
  %38 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = load ptr, ptr %12, align 8, !tbaa !47
  %41 = icmp eq ptr %39, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %36
  %43 = load i16, ptr %39, align 2, !tbaa !38
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %47, %45 ], [ %39, %42 ]
  %47 = getelementptr inbounds i16, ptr %46, i64 1
  %48 = load i16, ptr %47, align 2, !tbaa !38
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %45, !llvm.loop !41

50:                                               ; preds = %45
  %51 = ptrtoint ptr %47 to i64
  %52 = ptrtoint ptr %39 to i64
  %53 = sub i64 %51, %52
  %54 = add i64 %53, 2
  %55 = and i64 %54, 8589934590
  br label %56

56:                                               ; preds = %50, %42
  %57 = phi i64 [ %55, %50 ], [ 2, %42 ]
  %58 = load ptr, ptr %40, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %57)
          to label %62 unwind label %66

62:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %61, ptr nonnull align 2 %39, i64 %57, i1 false)
  br label %63

63:                                               ; preds = %62, %36
  %64 = phi ptr [ %61, %62 ], [ null, %36 ]
  %65 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  store ptr %64, ptr %65, align 8, !tbaa !53
  ret void

66:                                               ; preds = %56, %29
  %67 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %68 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = load ptr, ptr %69, align 8, !tbaa !35
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %71)
          to label %78 unwind label %75

75:                                               ; preds = %66
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  tail call void @__clang_call_terminate(ptr %77) #7
  unreachable

78:                                               ; preds = %66
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %4, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = load i16, ptr %4, align 2, !tbaa !38
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %4, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !38
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !41

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %4 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i64 [ %21, %16 ], [ 2, %8 ]
  %24 = load ptr, ptr %6, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %23)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %4, i64 %23, i1 false)
  br label %28

28:                                               ; preds = %2, %22
  %29 = phi ptr [ %27, %22 ], [ null, %2 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !44
  %31 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %5, align 8, !tbaa !47
  store ptr %32, ptr %31, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717SAXParseExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %27

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !47
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %10, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %27

16:                                               ; preds = %9
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %17 = load ptr, ptr %2, align 8, !tbaa !47
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = load ptr, ptr %17, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %26 unwind label %23

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #7
  unreachable

26:                                               ; preds = %16
  ret void

27:                                               ; preds = %9, %1
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #7
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SAXParseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_717SAXParseExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN11xercesc_2_717SAXParseExceptionaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14)
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_712SAXExceptionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  store i64 %23, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = load ptr, ptr %5, align 8, !tbaa !47
  %28 = icmp eq ptr %26, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %4
  %30 = load i16, ptr %26, align 2, !tbaa !38
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %34, %32 ], [ %26, %29 ]
  %34 = getelementptr inbounds i16, ptr %33, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !38
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %32, !llvm.loop !41

37:                                               ; preds = %32
  %38 = ptrtoint ptr %34 to i64
  %39 = ptrtoint ptr %26 to i64
  %40 = sub i64 %38, %39
  %41 = add i64 %40, 2
  %42 = and i64 %41, 8589934590
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i64 [ %42, %37 ], [ 2, %29 ]
  %45 = load ptr, ptr %27, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %44)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr nonnull align 2 %26, i64 %44, i1 false)
  br label %49

49:                                               ; preds = %4, %43
  %50 = phi ptr [ %48, %43 ], [ null, %4 ]
  store ptr %50, ptr %7, align 8, !tbaa !52
  %51 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %1, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = load ptr, ptr %5, align 8, !tbaa !47
  %54 = icmp eq ptr %52, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load i16, ptr %52, align 2, !tbaa !38
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %52, %55 ]
  %60 = getelementptr inbounds i16, ptr %59, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !38
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %58, !llvm.loop !41

63:                                               ; preds = %58
  %64 = ptrtoint ptr %60 to i64
  %65 = ptrtoint ptr %52 to i64
  %66 = sub i64 %64, %65
  %67 = add i64 %66, 2
  %68 = and i64 %67, 8589934590
  br label %69

69:                                               ; preds = %63, %55
  %70 = phi i64 [ %68, %63 ], [ 2, %55 ]
  %71 = load ptr, ptr %53, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %70)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %74, ptr nonnull align 2 %52, i64 %70, i1 false)
  br label %75

75:                                               ; preds = %49, %69
  %76 = phi ptr [ %74, %69 ], [ null, %49 ]
  store ptr %76, ptr %13, align 8, !tbaa !53
  br label %77

77:                                               ; preds = %2, %75
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xercesc_2_712SAXExceptionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %13, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = load i16, ptr %13, align 2, !tbaa !38
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %22, %20 ], [ %13, %17 ]
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !38
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %20, !llvm.loop !41

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i64
  %27 = ptrtoint ptr %13 to i64
  %28 = sub i64 %26, %27
  %29 = add i64 %28, 2
  %30 = and i64 %29, 8589934590
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i64 [ %30, %25 ], [ 2, %17 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %32)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr nonnull align 2 %13, i64 %32, i1 false)
  br label %37

37:                                               ; preds = %4, %31
  %38 = phi ptr [ %36, %31 ], [ null, %4 ]
  store ptr %38, ptr %7, align 8, !tbaa !44
  %39 = load ptr, ptr %14, align 8, !tbaa !47
  store ptr %39, ptr %5, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %2, %37
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAXParseException11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !51
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParseException", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !48
  ret i64 %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #7
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #7
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !46, i64 8}
!45 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !46, i64 8, !46, i64 16}
!46 = !{!"any pointer", !40, i64 0}
!47 = !{!45, !46, i64 16}
!48 = !{!49, !50, i64 24}
!49 = !{!"_ZTSN11xercesc_2_717SAXParseExceptionE", !45, i64 0, !50, i64 24, !50, i64 32, !46, i64 40, !46, i64 48}
!50 = !{!"long", !40, i64 0}
!51 = !{!49, !50, i64 32}
!52 = !{!49, !46, i64 40}
!53 = !{!49, !46, i64 48}
