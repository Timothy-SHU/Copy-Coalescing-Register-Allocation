; ModuleID = 'XalanParsedURI.cpp'
source_filename = "XalanParsedURI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanParsedURI" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8] }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanParsedURIC2EPKtjRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZN11xalanc_1_1014XalanParsedURI8d_schemeE = dso_local local_unnamed_addr constant i32 1, align 4
@_ZN11xalanc_1_1014XalanParsedURI11d_authorityE = dso_local local_unnamed_addr constant i32 2, align 4
@_ZN11xalanc_1_1014XalanParsedURI7d_queryE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xalanc_1_1014XalanParsedURI10d_fragmentE = dso_local local_unnamed_addr constant i32 8, align 4
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanParsedURI4makeERNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(204) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %13, i32 noundef %15)
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 58)
  br label %18

18:                                               ; preds = %7, %2
  %19 = load i32, ptr %3, align 8, !tbaa !46
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 47)
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 47)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !55
  %27 = icmp eq i64 %26, 0
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = select i1 %27, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %29
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !56
  %33 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %30, i32 noundef %32)
  br label %34

34:                                               ; preds = %22, %18
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = icmp eq i64 %36, 0
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = select i1 %37, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %39
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !56
  %43 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %40, i32 noundef %42)
  %44 = load i32, ptr %3, align 8, !tbaa !46
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %34
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 63)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !55
  %51 = icmp eq i64 %50, 0
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = select i1 %51, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %53
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !56
  %57 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %54, i32 noundef %56)
  br label %58

58:                                               ; preds = %47, %34
  %59 = load i32, ptr %3, align 8, !tbaa !46
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext 35)
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !55
  %66 = icmp eq i64 %65, 0
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = select i1 %66, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %68
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !56
  %72 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %69, i32 noundef %71)
  br label %73

73:                                               ; preds = %62, %58
  ret ptr %1
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanParsedURI5parseEPKtj(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !46
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = zext i32 %2 to i64
  br label %13

13:                                               ; preds = %11, %17
  %14 = phi i64 [ 0, %11 ], [ %18, %17 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !57
  switch i16 %16, label %17 [
    i16 58, label %20
    i16 47, label %20
    i16 63, label %20
    i16 35, label %20
  ]

17:                                               ; preds = %13
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %22, label %13, !llvm.loop !59

20:                                               ; preds = %13, %13, %13, %13
  %21 = trunc i64 %14 to i32
  br label %22

22:                                               ; preds = %20, %17, %3
  %23 = phi i32 [ 0, %3 ], [ %21, %20 ], [ %2, %17 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %73, label %25

25:                                               ; preds = %22
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %1, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !57
  %29 = icmp eq i16 %28, 58
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  %31 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef %23)
  %32 = icmp eq ptr %4, %0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %35 unwind label %57

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !56
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %37, ptr %38, align 8, !tbaa !56
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !63
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = load ptr, ptr %4, align 8, !tbaa !62
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %53 unwind label %50

50:                                               ; preds = %43
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #12
  unreachable

53:                                               ; preds = %39, %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  %54 = add i32 %23, 1
  %55 = load i32, ptr %9, align 8, !tbaa !46
  %56 = or i32 %55, 1
  store i32 %56, ptr %9, align 8, !tbaa !46
  br label %82

57:                                               ; preds = %33
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = load ptr, ptr %4, align 8, !tbaa !62
  %66 = load ptr, ptr %65, align 8, !tbaa !65
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %64)
          to label %72 unwind label %69

69:                                               ; preds = %62
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #12
  unreachable

72:                                               ; preds = %57, %62
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  br label %370

73:                                               ; preds = %25, %22
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !55
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %74, align 8, !tbaa !55
  %79 = sub i64 %78, %75
  store i64 %79, ptr %74, align 8, !tbaa !55
  br label %80

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %81, align 8, !tbaa !56
  br label %82

82:                                               ; preds = %80, %53
  %83 = phi i32 [ %54, %53 ], [ 0, %80 ]
  %84 = add i32 %2, -1
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %159

86:                                               ; preds = %82
  %87 = zext i32 %83 to i64
  %88 = getelementptr inbounds i16, ptr %1, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !57
  %90 = icmp eq i16 %89, 47
  br i1 %90, label %91, label %159

91:                                               ; preds = %86
  %92 = add i32 %83, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i16, ptr %1, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !57
  %96 = icmp eq i16 %95, 47
  br i1 %96, label %97, label %159

97:                                               ; preds = %91
  %98 = add i32 %83, 2
  %99 = icmp ult i32 %98, %2
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = zext i32 %98 to i64
  br label %102

102:                                              ; preds = %100, %106
  %103 = phi i64 [ %101, %100 ], [ %107, %106 ]
  %104 = getelementptr inbounds i16, ptr %1, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !57
  switch i16 %105, label %106 [
    i16 47, label %110
    i16 63, label %110
    i16 35, label %110
  ]

106:                                              ; preds = %102
  %107 = add nuw nsw i64 %103, 1
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %108, %2
  br i1 %109, label %112, label %102, !llvm.loop !67

110:                                              ; preds = %102, %102, %102
  %111 = trunc i64 %103 to i32
  br label %112

112:                                              ; preds = %110, %106, %97
  %113 = phi i32 [ %98, %97 ], [ %111, %110 ], [ %2, %106 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  %114 = zext i32 %98 to i64
  %115 = getelementptr inbounds i16, ptr %1, i64 %114
  %116 = load ptr, ptr %0, align 8, !tbaa !62
  %117 = sub i32 %113, %98
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %115, ptr noundef nonnull align 8 dereferenceable(8) %116, i32 noundef %117)
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1
  %119 = icmp eq ptr %5, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %112
  %121 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %122 unwind label %143

122:                                              ; preds = %120
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !56
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 1
  store i32 %124, ptr %125, align 8, !tbaa !56
  br label %126

126:                                              ; preds = %122, %112
  %127 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !63
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !64
  %133 = load ptr, ptr %5, align 8, !tbaa !62
  %134 = load ptr, ptr %133, align 8, !tbaa !65
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %132)
          to label %140 unwind label %137

137:                                              ; preds = %130
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #12
  unreachable

140:                                              ; preds = %126, %130
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  %141 = load i32, ptr %9, align 8, !tbaa !46
  %142 = or i32 %141, 2
  store i32 %142, ptr %9, align 8, !tbaa !46
  br label %168

143:                                              ; preds = %120
  %144 = landingpad { ptr, i32 }
          cleanup
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !63
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !64
  %151 = load ptr, ptr %5, align 8, !tbaa !62
  %152 = load ptr, ptr %151, align 8, !tbaa !65
  %153 = getelementptr inbounds ptr, ptr %152, i64 3
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %150)
          to label %158 unwind label %155

155:                                              ; preds = %148
  %156 = landingpad { ptr, i32 }
          catch ptr null
  %157 = extractvalue { ptr, i32 } %156, 0
  call void @__clang_call_terminate(ptr %157) #12
  unreachable

158:                                              ; preds = %143, %148
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  br label %370

159:                                              ; preds = %91, %86, %82
  %160 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !55
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i64, ptr %160, align 8, !tbaa !55
  %165 = sub i64 %164, %161
  store i64 %165, ptr %160, align 8, !tbaa !55
  br label %166

166:                                              ; preds = %163, %159
  %167 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 1
  store i32 0, ptr %167, align 8, !tbaa !56
  br label %168

168:                                              ; preds = %166, %140
  %169 = phi i32 [ %113, %140 ], [ %83, %166 ]
  %170 = icmp ult i32 %169, %2
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  %172 = zext i32 %169 to i64
  %173 = zext i32 %2 to i64
  %174 = zext i32 %2 to i64
  br label %175

175:                                              ; preds = %171, %180
  %176 = phi i64 [ %172, %171 ], [ %181, %180 ]
  %177 = phi i1 [ %170, %171 ], [ %182, %180 ]
  %178 = getelementptr inbounds i16, ptr %1, i64 %176
  %179 = load i16, ptr %178, align 2, !tbaa !57
  switch i16 %179, label %180 [
    i16 63, label %184
    i16 35, label %184
  ]

180:                                              ; preds = %175
  %181 = add nuw nsw i64 %176, 1
  %182 = icmp ult i64 %181, %173
  %183 = icmp eq i64 %181, %174
  br i1 %183, label %186, label %175, !llvm.loop !68

184:                                              ; preds = %175, %175
  %185 = trunc i64 %176 to i32
  br label %186

186:                                              ; preds = %184, %180, %168
  %187 = phi i32 [ %169, %168 ], [ %185, %184 ], [ %2, %180 ]
  %188 = phi i1 [ %170, %168 ], [ %177, %184 ], [ %182, %180 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11
  %189 = zext i32 %169 to i64
  %190 = getelementptr inbounds i16, ptr %1, i64 %189
  %191 = load ptr, ptr %0, align 8, !tbaa !62
  %192 = sub i32 %187, %169
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %190, ptr noundef nonnull align 8 dereferenceable(8) %191, i32 noundef %192)
  %193 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2
  %194 = icmp eq ptr %6, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %186
  %196 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %193, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %197 unwind label %233

197:                                              ; preds = %195
  %198 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !56
  %200 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 1
  store i32 %199, ptr %200, align 8, !tbaa !56
  br label %201

201:                                              ; preds = %197, %186
  %202 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !63
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !64
  %208 = load ptr, ptr %6, align 8, !tbaa !62
  %209 = load ptr, ptr %208, align 8, !tbaa !65
  %210 = getelementptr inbounds ptr, ptr %209, i64 3
  %211 = load ptr, ptr %210, align 8
  invoke void %211(ptr noundef nonnull align 8 dereferenceable(8) %208, ptr noundef %207)
          to label %215 unwind label %212

212:                                              ; preds = %205
  %213 = landingpad { ptr, i32 }
          catch ptr null
  %214 = extractvalue { ptr, i32 } %213, 0
  call void @__clang_call_terminate(ptr %214) #12
  unreachable

215:                                              ; preds = %201, %205
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br i1 %188, label %216, label %296

216:                                              ; preds = %215
  %217 = zext i32 %187 to i64
  %218 = getelementptr inbounds i16, ptr %1, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !57
  %220 = icmp eq i16 %219, 63
  br i1 %220, label %221, label %296

221:                                              ; preds = %216
  %222 = add i32 %187, 1
  %223 = icmp ult i32 %222, %2
  br i1 %223, label %224, label %249

224:                                              ; preds = %221, %230
  %225 = phi i32 [ %231, %230 ], [ %222, %221 ]
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i16, ptr %1, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !57
  %229 = icmp eq i16 %228, 35
  br i1 %229, label %249, label %230

230:                                              ; preds = %224
  %231 = add nuw i32 %225, 1
  %232 = icmp eq i32 %231, %2
  br i1 %232, label %249, label %224, !llvm.loop !69

233:                                              ; preds = %195
  %234 = landingpad { ptr, i32 }
          cleanup
  %235 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %236 = load i64, ptr %235, align 8, !tbaa !63
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !64
  %241 = load ptr, ptr %6, align 8, !tbaa !62
  %242 = load ptr, ptr %241, align 8, !tbaa !65
  %243 = getelementptr inbounds ptr, ptr %242, i64 3
  %244 = load ptr, ptr %243, align 8
  invoke void %244(ptr noundef nonnull align 8 dereferenceable(8) %241, ptr noundef %240)
          to label %248 unwind label %245

245:                                              ; preds = %238
  %246 = landingpad { ptr, i32 }
          catch ptr null
  %247 = extractvalue { ptr, i32 } %246, 0
  call void @__clang_call_terminate(ptr %247) #12
  unreachable

248:                                              ; preds = %233, %238
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11
  br label %370

249:                                              ; preds = %224, %230, %221
  %250 = phi i32 [ %222, %221 ], [ %225, %224 ], [ %2, %230 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11
  %251 = zext i32 %222 to i64
  %252 = getelementptr inbounds i16, ptr %1, i64 %251
  %253 = load ptr, ptr %0, align 8, !tbaa !62
  %254 = sub i32 %250, %222
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %252, ptr noundef nonnull align 8 dereferenceable(8) %253, i32 noundef %254)
  %255 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3
  %256 = icmp eq ptr %7, %255
  br i1 %256, label %263, label %257

257:                                              ; preds = %249
  %258 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %255, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %259 unwind label %280

259:                                              ; preds = %257
  %260 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !56
  %262 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 1
  store i32 %261, ptr %262, align 8, !tbaa !56
  br label %263

263:                                              ; preds = %259, %249
  %264 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %265 = load i64, ptr %264, align 8, !tbaa !63
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %277, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !64
  %270 = load ptr, ptr %7, align 8, !tbaa !62
  %271 = load ptr, ptr %270, align 8, !tbaa !65
  %272 = getelementptr inbounds ptr, ptr %271, i64 3
  %273 = load ptr, ptr %272, align 8
  invoke void %273(ptr noundef nonnull align 8 dereferenceable(8) %270, ptr noundef %269)
          to label %277 unwind label %274

274:                                              ; preds = %267
  %275 = landingpad { ptr, i32 }
          catch ptr null
  %276 = extractvalue { ptr, i32 } %275, 0
  call void @__clang_call_terminate(ptr %276) #12
  unreachable

277:                                              ; preds = %263, %267
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  %278 = load i32, ptr %9, align 8, !tbaa !46
  %279 = or i32 %278, 4
  store i32 %279, ptr %9, align 8, !tbaa !46
  br label %305

280:                                              ; preds = %257
  %281 = landingpad { ptr, i32 }
          cleanup
  %282 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %283 = load i64, ptr %282, align 8, !tbaa !63
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %295, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !64
  %288 = load ptr, ptr %7, align 8, !tbaa !62
  %289 = load ptr, ptr %288, align 8, !tbaa !65
  %290 = getelementptr inbounds ptr, ptr %289, i64 3
  %291 = load ptr, ptr %290, align 8
  invoke void %291(ptr noundef nonnull align 8 dereferenceable(8) %288, ptr noundef %287)
          to label %295 unwind label %292

292:                                              ; preds = %285
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  call void @__clang_call_terminate(ptr %294) #12
  unreachable

295:                                              ; preds = %280, %285
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  br label %370

296:                                              ; preds = %216, %215
  %297 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 0, i32 1
  %298 = load i64, ptr %297, align 8, !tbaa !55
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = load i64, ptr %297, align 8, !tbaa !55
  %302 = sub i64 %301, %298
  store i64 %302, ptr %297, align 8, !tbaa !55
  br label %303

303:                                              ; preds = %300, %296
  %304 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 1
  store i32 0, ptr %304, align 8, !tbaa !56
  br label %305

305:                                              ; preds = %303, %277
  %306 = phi i32 [ %250, %277 ], [ %187, %303 ]
  %307 = icmp ult i32 %306, %2
  br i1 %307, label %308, label %360

308:                                              ; preds = %305
  %309 = zext i32 %306 to i64
  %310 = getelementptr inbounds i16, ptr %1, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !57
  %312 = icmp eq i16 %311, 35
  br i1 %312, label %313, label %360

313:                                              ; preds = %308
  %314 = add i32 %306, 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i16, ptr %1, i64 %315
  %317 = load ptr, ptr %0, align 8, !tbaa !62
  %318 = sub i32 %2, %314
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %316, ptr noundef nonnull align 8 dereferenceable(8) %317, i32 noundef %318)
  %319 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4
  %320 = icmp eq ptr %8, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %313
  %322 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %319, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %323 unwind label %344

323:                                              ; preds = %321
  %324 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %325 = load i32, ptr %324, align 8, !tbaa !56
  %326 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 1
  store i32 %325, ptr %326, align 8, !tbaa !56
  br label %327

327:                                              ; preds = %323, %313
  %328 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %329 = load i64, ptr %328, align 8, !tbaa !63
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !64
  %334 = load ptr, ptr %8, align 8, !tbaa !62
  %335 = load ptr, ptr %334, align 8, !tbaa !65
  %336 = getelementptr inbounds ptr, ptr %335, i64 3
  %337 = load ptr, ptr %336, align 8
  invoke void %337(ptr noundef nonnull align 8 dereferenceable(8) %334, ptr noundef %333)
          to label %341 unwind label %338

338:                                              ; preds = %331
  %339 = landingpad { ptr, i32 }
          catch ptr null
  %340 = extractvalue { ptr, i32 } %339, 0
  call void @__clang_call_terminate(ptr %340) #12
  unreachable

341:                                              ; preds = %327, %331
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  %342 = load i32, ptr %9, align 8, !tbaa !46
  %343 = or i32 %342, 8
  store i32 %343, ptr %9, align 8, !tbaa !46
  br label %369

344:                                              ; preds = %321
  %345 = landingpad { ptr, i32 }
          cleanup
  %346 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %347 = load i64, ptr %346, align 8, !tbaa !63
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !64
  %352 = load ptr, ptr %8, align 8, !tbaa !62
  %353 = load ptr, ptr %352, align 8, !tbaa !65
  %354 = getelementptr inbounds ptr, ptr %353, i64 3
  %355 = load ptr, ptr %354, align 8
  invoke void %355(ptr noundef nonnull align 8 dereferenceable(8) %352, ptr noundef %351)
          to label %359 unwind label %356

356:                                              ; preds = %349
  %357 = landingpad { ptr, i32 }
          catch ptr null
  %358 = extractvalue { ptr, i32 } %357, 0
  call void @__clang_call_terminate(ptr %358) #12
  unreachable

359:                                              ; preds = %344, %349
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11
  br label %370

360:                                              ; preds = %308, %305
  %361 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 0, i32 1
  %362 = load i64, ptr %361, align 8, !tbaa !55
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %360
  %365 = load i64, ptr %361, align 8, !tbaa !55
  %366 = sub i64 %365, %362
  store i64 %366, ptr %361, align 8, !tbaa !55
  br label %367

367:                                              ; preds = %364, %360
  %368 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %368, align 8, !tbaa !56
  br label %369

369:                                              ; preds = %367, %341
  ret void

370:                                              ; preds = %248, %295, %359, %158, %72
  %371 = phi { ptr, i32 } [ %144, %158 ], [ %58, %72 ], [ %345, %359 ], [ %281, %295 ], [ %234, %248 ]
  resume { ptr, i32 } %371
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XalanParsedURI7resolveERKS0_(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(204) %1) local_unnamed_addr #0 align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %243, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !56
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = icmp eq ptr %1, %0
  br i1 %18, label %40, label %19

19:                                               ; preds = %17
  %20 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 1
  %26 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %25)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 2
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %30)
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !56
  store i32 %33, ptr %14, align 8, !tbaa !56
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 3
  %36 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %35)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 3, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3, i32 1
  store i32 %38, ptr %39, align 8, !tbaa !56
  br label %40

40:                                               ; preds = %17, %19
  %41 = load i32, ptr %8, align 8, !tbaa !46
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = or i1 %18, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 4
  %48 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %47)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 4, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !56
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4, i32 1
  store i32 %50, ptr %51, align 8, !tbaa !56
  br label %52

52:                                               ; preds = %40, %45
  %53 = load i32, ptr %3, align 8, !tbaa !46
  %54 = load i32, ptr %8, align 8, !tbaa !46
  %55 = or i32 %54, %53
  store i32 %55, ptr %8, align 8, !tbaa !46
  br label %243

56:                                               ; preds = %12, %7
  %57 = and i32 %9, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %56
  %60 = and i32 %9, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %243

62:                                               ; preds = %59
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !56
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !56
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %243

68:                                               ; preds = %62
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !55
  %71 = icmp eq i64 %70, 0
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = select i1 %71, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %73
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !55
  %77 = icmp eq i64 %76, 0
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = select i1 %77, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %79
  %81 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %74, ptr noundef %80, i32 noundef %64)
  br i1 %81, label %82, label %243

82:                                               ; preds = %68, %56
  %83 = icmp eq ptr %1, %0
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !56
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %87, ptr %88, align 8, !tbaa !56
  br label %89

89:                                               ; preds = %82, %84
  %90 = load i32, ptr %8, align 8, !tbaa !46
  %91 = or i32 %90, 1
  store i32 %91, ptr %8, align 8, !tbaa !46
  %92 = and i32 %90, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %243

94:                                               ; preds = %89
  br i1 %83, label %102, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 1
  %98 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull align 8 dereferenceable(32) %97)
  %99 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 1, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !56
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1, i32 1
  store i32 %100, ptr %101, align 8, !tbaa !56
  br label %102

102:                                              ; preds = %94, %95
  %103 = load i32, ptr %8, align 8, !tbaa !46
  %104 = or i32 %103, 2
  store i32 %104, ptr %8, align 8, !tbaa !46
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !56
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  %112 = load i16, ptr %111, align 2, !tbaa !57
  %113 = icmp eq i16 %112, 47
  br i1 %113, label %243, label %114

114:                                              ; preds = %109, %102
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 2, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !56
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 2, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = zext i32 %116 to i64
  %120 = getelementptr i16, ptr %118, i64 -1
  br label %121

121:                                              ; preds = %124, %114
  %122 = phi i64 [ %125, %124 ], [ %119, %114 ]
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  %125 = add nsw i64 %122, -1
  %126 = getelementptr i16, ptr %120, i64 %122
  %127 = load i16, ptr %126, align 2, !tbaa !57
  %128 = icmp eq i16 %127, 47
  br i1 %128, label %129, label %121, !llvm.loop !70

129:                                              ; preds = %124
  %130 = trunc i64 %122 to i32
  %131 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %1, i64 0, i32 2, i32 0, i32 1
  %132 = load i64, ptr %131, align 8, !tbaa !55
  %133 = icmp eq i64 %132, 0
  %134 = select i1 %133, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %118
  %135 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef 0, ptr noundef %134, i32 noundef %130)
  br label %136

136:                                              ; preds = %121, %129
  %137 = load i32, ptr %106, align 8, !tbaa !56
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %243, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2, i32 0, i32 3
  br label %141

141:                                              ; preds = %139, %199
  %142 = phi i32 [ %137, %139 ], [ %201, %199 ]
  %143 = phi i32 [ 0, %139 ], [ %200, %199 ]
  %144 = zext i32 %143 to i64
  %145 = add i32 %143, 1
  %146 = zext i32 %145 to i64
  br label %147

147:                                              ; preds = %141, %160
  %148 = phi i32 [ %142, %141 ], [ %162, %160 ]
  %149 = load ptr, ptr %140, align 8, !tbaa !64
  %150 = getelementptr inbounds i16, ptr %149, i64 %144
  %151 = load i16, ptr %150, align 2, !tbaa !57
  %152 = icmp eq i16 %151, 46
  br i1 %152, label %153, label %229

153:                                              ; preds = %147
  %154 = add i32 %148, -1
  %155 = icmp ult i32 %143, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = getelementptr inbounds i16, ptr %149, i64 %146
  %158 = load i16, ptr %157, align 2, !tbaa !57
  %159 = icmp eq i16 %158, 47
  br i1 %159, label %160, label %164

160:                                              ; preds = %156, %164
  %161 = phi i32 [ 1, %164 ], [ 2, %156 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef %143, i32 noundef %161)
  %162 = load i32, ptr %106, align 8, !tbaa !56
  %163 = icmp ult i32 %143, %162
  br i1 %163, label %147, label %243, !llvm.loop !71

164:                                              ; preds = %156, %153
  %165 = icmp eq i32 %143, %154
  br i1 %165, label %160, label %166

166:                                              ; preds = %164
  %167 = add i32 %148, -2
  %168 = icmp ult i32 %143, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %166
  %170 = add nuw i32 %143, 1
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i16, ptr %149, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !57
  %174 = icmp eq i16 %173, 46
  br i1 %174, label %175, label %203

175:                                              ; preds = %169
  %176 = add i32 %143, 2
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i16, ptr %149, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !57
  %180 = icmp eq i16 %179, 47
  br i1 %180, label %181, label %203

181:                                              ; preds = %175
  %182 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 1)
  %183 = zext i32 %182 to i64
  %184 = getelementptr i16, ptr %149, i64 -1
  br label %185

185:                                              ; preds = %188, %181
  %186 = phi i64 [ %189, %188 ], [ %183, %181 ]
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = add nsw i64 %186, -1
  %190 = getelementptr i16, ptr %184, i64 %186
  %191 = load i16, ptr %190, align 2, !tbaa !57
  %192 = icmp eq i16 %191, 47
  br i1 %192, label %193, label %185, !llvm.loop !72

193:                                              ; preds = %188
  %194 = trunc i64 %186 to i32
  br label %195

195:                                              ; preds = %185, %193
  %196 = phi i32 [ %194, %193 ], [ 0, %185 ]
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %196, i32 1)
  %198 = sub i32 %176, %197
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef %197, i32 noundef %198)
  br label %199

199:                                              ; preds = %195, %226, %240
  %200 = phi i32 [ %242, %240 ], [ %227, %226 ], [ %197, %195 ]
  %201 = load i32, ptr %106, align 8, !tbaa !56
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %141, label %243, !llvm.loop !71

203:                                              ; preds = %175, %169, %166
  %204 = icmp eq i32 %143, %167
  br i1 %204, label %205, label %229

205:                                              ; preds = %203
  %206 = add i32 %143, 1
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i16, ptr %149, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !57
  %210 = icmp eq i16 %209, 46
  br i1 %210, label %211, label %229

211:                                              ; preds = %205
  %212 = add i32 %143, 2
  %213 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 1)
  %214 = zext i32 %213 to i64
  %215 = getelementptr i16, ptr %149, i64 -1
  br label %216

216:                                              ; preds = %219, %211
  %217 = phi i64 [ %220, %219 ], [ %214, %211 ]
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %216
  %220 = add nsw i64 %217, -1
  %221 = getelementptr i16, ptr %215, i64 %217
  %222 = load i16, ptr %221, align 2, !tbaa !57
  %223 = icmp eq i16 %222, 47
  br i1 %223, label %224, label %216, !llvm.loop !73

224:                                              ; preds = %219
  %225 = trunc i64 %217 to i32
  br label %226

226:                                              ; preds = %216, %224
  %227 = phi i32 [ %225, %224 ], [ 0, %216 ]
  %228 = sub i32 %212, %227
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef %227, i32 noundef %228)
  br label %199

229:                                              ; preds = %147, %205, %203
  %230 = icmp ult i32 %143, %148
  br i1 %230, label %231, label %240

231:                                              ; preds = %229, %237
  %232 = phi i32 [ %238, %237 ], [ %143, %229 ]
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i16, ptr %149, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !57
  %236 = icmp eq i16 %235, 47
  br i1 %236, label %240, label %237

237:                                              ; preds = %231
  %238 = add nuw i32 %232, 1
  %239 = icmp eq i32 %238, %148
  br i1 %239, label %240, label %231, !llvm.loop !74

240:                                              ; preds = %231, %237, %229
  %241 = phi i32 [ %143, %229 ], [ %232, %231 ], [ %148, %237 ]
  %242 = add i32 %241, 1
  br label %199

243:                                              ; preds = %199, %160, %136, %68, %62, %52, %89, %109, %59, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanParsedURI7resolveEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull returned align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %6 = alloca %"class.xalanc_1_10::XalanParsedURI", align 8
  %7 = alloca %"class.xalanc_1_10::XalanParsedURI", align 8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %6) #11
  %8 = load ptr, ptr %4, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1014XalanParsedURIC2EPKtjRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(204) %6, ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %7) #11
  %9 = load ptr, ptr %4, align 8, !tbaa !62
  invoke void @_ZN11xalanc_1_1014XalanParsedURIC2EPKtjRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(204) %7, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %162

10:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1014XalanParsedURI7resolveERKS0_(ptr noundef nonnull align 8 dereferenceable(204) %6, ptr noundef nonnull align 8 dereferenceable(204) %7)
          to label %11 unwind label %164

11:                                               ; preds = %10
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanParsedURI4makeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(204) %6, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %13 unwind label %164

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4, i32 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !63
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = load ptr, ptr %18, align 8, !tbaa !62
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %20)
          to label %28 unwind label %25

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #12
  unreachable

28:                                               ; preds = %13, %17
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3, i32 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = load ptr, ptr %33, align 8, !tbaa !62
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #12
  unreachable

43:                                               ; preds = %28, %32
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2, i32 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !63
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = load ptr, ptr %48, align 8, !tbaa !62
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %50)
          to label %58 unwind label %55

55:                                               ; preds = %47
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #12
  unreachable

58:                                               ; preds = %43, %47
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1, i32 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = load ptr, ptr %63, align 8, !tbaa !62
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %65)
          to label %73 unwind label %70

70:                                               ; preds = %62
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  call void @__clang_call_terminate(ptr %72) #12
  unreachable

73:                                               ; preds = %58, %62
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !63
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  %80 = load ptr, ptr %7, align 8, !tbaa !62
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #12
  unreachable

87:                                               ; preds = %73, %77
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %7) #11
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4, i32 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !63
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = load ptr, ptr %92, align 8, !tbaa !62
  %96 = load ptr, ptr %95, align 8, !tbaa !65
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %91
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #12
  unreachable

102:                                              ; preds = %87, %91
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3, i32 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !63
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !64
  %110 = load ptr, ptr %107, align 8, !tbaa !62
  %111 = load ptr, ptr %110, align 8, !tbaa !65
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef %109)
          to label %117 unwind label %114

114:                                              ; preds = %106
  %115 = landingpad { ptr, i32 }
          catch ptr null
  %116 = extractvalue { ptr, i32 } %115, 0
  call void @__clang_call_terminate(ptr %116) #12
  unreachable

117:                                              ; preds = %102, %106
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2, i32 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !63
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !64
  %125 = load ptr, ptr %122, align 8, !tbaa !62
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  %127 = getelementptr inbounds ptr, ptr %126, i64 3
  %128 = load ptr, ptr %127, align 8
  invoke void %128(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %124)
          to label %132 unwind label %129

129:                                              ; preds = %121
  %130 = landingpad { ptr, i32 }
          catch ptr null
  %131 = extractvalue { ptr, i32 } %130, 0
  call void @__clang_call_terminate(ptr %131) #12
  unreachable

132:                                              ; preds = %117, %121
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1, i32 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !63
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !64
  %140 = load ptr, ptr %137, align 8, !tbaa !62
  %141 = load ptr, ptr %140, align 8, !tbaa !65
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr noundef nonnull align 8 dereferenceable(8) %140, ptr noundef %139)
          to label %147 unwind label %144

144:                                              ; preds = %136
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @__clang_call_terminate(ptr %146) #12
  unreachable

147:                                              ; preds = %132, %136
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !63
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !64
  %154 = load ptr, ptr %6, align 8, !tbaa !62
  %155 = load ptr, ptr %154, align 8, !tbaa !65
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  invoke void %157(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef %153)
          to label %161 unwind label %158

158:                                              ; preds = %151
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #12
  unreachable

161:                                              ; preds = %147, %151
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %6) #11
  ret ptr %4

162:                                              ; preds = %5
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %239

164:                                              ; preds = %11, %10
  %165 = landingpad { ptr, i32 }
          cleanup
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4, i32 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !63
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4
  %171 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 4, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !64
  %173 = load ptr, ptr %170, align 8, !tbaa !62
  %174 = load ptr, ptr %173, align 8, !tbaa !65
  %175 = getelementptr inbounds ptr, ptr %174, i64 3
  %176 = load ptr, ptr %175, align 8
  invoke void %176(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef %172)
          to label %180 unwind label %177

177:                                              ; preds = %169
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #12
  unreachable

180:                                              ; preds = %164, %169
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3, i32 0, i32 2
  %182 = load i64, ptr %181, align 8, !tbaa !63
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 3, i32 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !64
  %188 = load ptr, ptr %185, align 8, !tbaa !62
  %189 = load ptr, ptr %188, align 8, !tbaa !65
  %190 = getelementptr inbounds ptr, ptr %189, i64 3
  %191 = load ptr, ptr %190, align 8
  invoke void %191(ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef %187)
          to label %195 unwind label %192

192:                                              ; preds = %184
  %193 = landingpad { ptr, i32 }
          catch ptr null
  %194 = extractvalue { ptr, i32 } %193, 0
  call void @__clang_call_terminate(ptr %194) #12
  unreachable

195:                                              ; preds = %180, %184
  %196 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2, i32 0, i32 2
  %197 = load i64, ptr %196, align 8, !tbaa !63
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 2, i32 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !64
  %203 = load ptr, ptr %200, align 8, !tbaa !62
  %204 = load ptr, ptr %203, align 8, !tbaa !65
  %205 = getelementptr inbounds ptr, ptr %204, i64 3
  %206 = load ptr, ptr %205, align 8
  invoke void %206(ptr noundef nonnull align 8 dereferenceable(8) %203, ptr noundef %202)
          to label %210 unwind label %207

207:                                              ; preds = %199
  %208 = landingpad { ptr, i32 }
          catch ptr null
  %209 = extractvalue { ptr, i32 } %208, 0
  call void @__clang_call_terminate(ptr %209) #12
  unreachable

210:                                              ; preds = %195, %199
  %211 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1, i32 0, i32 2
  %212 = load i64, ptr %211, align 8, !tbaa !63
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %225, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1
  %216 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %7, i64 0, i32 1, i32 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !64
  %218 = load ptr, ptr %215, align 8, !tbaa !62
  %219 = load ptr, ptr %218, align 8, !tbaa !65
  %220 = getelementptr inbounds ptr, ptr %219, i64 3
  %221 = load ptr, ptr %220, align 8
  invoke void %221(ptr noundef nonnull align 8 dereferenceable(8) %218, ptr noundef %217)
          to label %225 unwind label %222

222:                                              ; preds = %214
  %223 = landingpad { ptr, i32 }
          catch ptr null
  %224 = extractvalue { ptr, i32 } %223, 0
  call void @__clang_call_terminate(ptr %224) #12
  unreachable

225:                                              ; preds = %210, %214
  %226 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %227 = load i64, ptr %226, align 8, !tbaa !63
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !64
  %232 = load ptr, ptr %7, align 8, !tbaa !62
  %233 = load ptr, ptr %232, align 8, !tbaa !65
  %234 = getelementptr inbounds ptr, ptr %233, i64 3
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(8) %232, ptr noundef %231)
          to label %239 unwind label %236

236:                                              ; preds = %229
  %237 = landingpad { ptr, i32 }
          catch ptr null
  %238 = extractvalue { ptr, i32 } %237, 0
  call void @__clang_call_terminate(ptr %238) #12
  unreachable

239:                                              ; preds = %229, %225, %162
  %240 = phi { ptr, i32 } [ %163, %162 ], [ %165, %225 ], [ %165, %229 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %7) #11
  %241 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4, i32 0, i32 2
  %242 = load i64, ptr %241, align 8, !tbaa !63
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4
  %246 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 4, i32 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !64
  %248 = load ptr, ptr %245, align 8, !tbaa !62
  %249 = load ptr, ptr %248, align 8, !tbaa !65
  %250 = getelementptr inbounds ptr, ptr %249, i64 3
  %251 = load ptr, ptr %250, align 8
  invoke void %251(ptr noundef nonnull align 8 dereferenceable(8) %248, ptr noundef %247)
          to label %255 unwind label %252

252:                                              ; preds = %244
  %253 = landingpad { ptr, i32 }
          catch ptr null
  %254 = extractvalue { ptr, i32 } %253, 0
  call void @__clang_call_terminate(ptr %254) #12
  unreachable

255:                                              ; preds = %239, %244
  %256 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3, i32 0, i32 2
  %257 = load i64, ptr %256, align 8, !tbaa !63
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3
  %261 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 3, i32 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !64
  %263 = load ptr, ptr %260, align 8, !tbaa !62
  %264 = load ptr, ptr %263, align 8, !tbaa !65
  %265 = getelementptr inbounds ptr, ptr %264, i64 3
  %266 = load ptr, ptr %265, align 8
  invoke void %266(ptr noundef nonnull align 8 dereferenceable(8) %263, ptr noundef %262)
          to label %270 unwind label %267

267:                                              ; preds = %259
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #12
  unreachable

270:                                              ; preds = %255, %259
  %271 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2, i32 0, i32 2
  %272 = load i64, ptr %271, align 8, !tbaa !63
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2
  %276 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 2, i32 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !64
  %278 = load ptr, ptr %275, align 8, !tbaa !62
  %279 = load ptr, ptr %278, align 8, !tbaa !65
  %280 = getelementptr inbounds ptr, ptr %279, i64 3
  %281 = load ptr, ptr %280, align 8
  invoke void %281(ptr noundef nonnull align 8 dereferenceable(8) %278, ptr noundef %277)
          to label %285 unwind label %282

282:                                              ; preds = %274
  %283 = landingpad { ptr, i32 }
          catch ptr null
  %284 = extractvalue { ptr, i32 } %283, 0
  call void @__clang_call_terminate(ptr %284) #12
  unreachable

285:                                              ; preds = %270, %274
  %286 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1, i32 0, i32 2
  %287 = load i64, ptr %286, align 8, !tbaa !63
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1
  %291 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %6, i64 0, i32 1, i32 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !64
  %293 = load ptr, ptr %290, align 8, !tbaa !62
  %294 = load ptr, ptr %293, align 8, !tbaa !65
  %295 = getelementptr inbounds ptr, ptr %294, i64 3
  %296 = load ptr, ptr %295, align 8
  invoke void %296(ptr noundef nonnull align 8 dereferenceable(8) %293, ptr noundef %292)
          to label %300 unwind label %297

297:                                              ; preds = %289
  %298 = landingpad { ptr, i32 }
          catch ptr null
  %299 = extractvalue { ptr, i32 } %298, 0
  call void @__clang_call_terminate(ptr %299) #12
  unreachable

300:                                              ; preds = %285, %289
  %301 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %302 = load i64, ptr %301, align 8, !tbaa !63
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !64
  %307 = load ptr, ptr %6, align 8, !tbaa !62
  %308 = load ptr, ptr %307, align 8, !tbaa !65
  %309 = getelementptr inbounds ptr, ptr %308, i64 3
  %310 = load ptr, ptr %309, align 8
  invoke void %310(ptr noundef nonnull align 8 dereferenceable(8) %307, ptr noundef %306)
          to label %314 unwind label %311

311:                                              ; preds = %304
  %312 = landingpad { ptr, i32 }
          catch ptr null
  %313 = extractvalue { ptr, i32 } %312, 0
  call void @__clang_call_terminate(ptr %313) #12
  unreachable

314:                                              ; preds = %300, %304
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %6) #11
  resume { ptr, i32 } %240
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanParsedURIC2EPKtjRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %6 unwind label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %17

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %10 unwind label %19

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %21

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanParsedURI", ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1014XalanParsedURI5parseEPKtj(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, i32 noundef %2)
          to label %14 unwind label %23

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %31

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %29

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %27

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %12
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #11
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  resume { ptr, i32 } %32
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !76

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !77

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %12 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = load i64, ptr %6, align 8, !tbaa !63
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %19, ptr %0, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !55
  store i64 %21, ptr %14, align 8, !tbaa !55
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !63
  store i64 %23, ptr %6, align 8, !tbaa !63
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  store ptr %25, ptr %17, align 8, !tbaa !64
  store ptr %13, ptr %3, align 8, !tbaa !62
  store i64 %15, ptr %20, align 8, !tbaa !55
  store i64 %16, ptr %22, align 8, !tbaa !63
  store ptr %18, ptr %24, align 8, !tbaa !64
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !78

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !79

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #12
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !55
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !80

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !81

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !55
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !55
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !64
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !82

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !83
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !62
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !85

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !63
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !86
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = load i64, ptr %9, align 8, !tbaa !55
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !87

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !62
  %28 = load i64, ptr %6, align 8, !tbaa !55
  %29 = load i64, ptr %7, align 8, !tbaa !63
  %30 = load ptr, ptr %8, align 8, !tbaa !64
  %31 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %31, ptr %0, align 8, !tbaa !62
  %32 = load i64, ptr %14, align 8, !tbaa !55
  store i64 %32, ptr %6, align 8, !tbaa !55
  %33 = load i64, ptr %15, align 8, !tbaa !63
  store i64 %33, ptr %7, align 8, !tbaa !63
  %34 = load ptr, ptr %21, align 8, !tbaa !64
  store ptr %34, ptr %8, align 8, !tbaa !64
  store ptr %27, ptr %5, align 8, !tbaa !62
  store i64 %28, ptr %14, align 8, !tbaa !55
  store i64 %29, ptr %15, align 8, !tbaa !63
  store ptr %30, ptr %21, align 8, !tbaa !64
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !87

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #12
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !63
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !64
  %50 = load ptr, ptr %5, align 8, !tbaa !62
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #12
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !88

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !89
  store ptr %65, ptr %8, align 8, !tbaa !64
  store i64 %3, ptr %7, align 8, !tbaa !63
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !63
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !91

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !92

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !94

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !63
  br i1 %18, label %21, label %39, !prof !95

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !96

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !97

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !64
  %28 = load i64, ptr %12, align 8, !tbaa !55
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !57
  store i16 %34, ptr %32, align 2, !tbaa !57
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !98, !llvm.loop !99

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !100

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %42 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %42, ptr %5, align 8, !tbaa !62
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !63
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !65
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !101
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !64
  %51 = load i64, ptr %43, align 8, !tbaa !55
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !64
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !102

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !64
  %56 = load i64, ptr %43, align 8, !tbaa !55
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !102

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !64
  %60 = load i64, ptr %43, align 8, !tbaa !55
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !64
  %63 = load i64, ptr %12, align 8, !tbaa !55
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !102

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !62
  %67 = load i64, ptr %12, align 8, !tbaa !55
  %68 = load i64, ptr %19, align 8, !tbaa !63
  %69 = load ptr, ptr %15, align 8, !tbaa !64
  %70 = load ptr, ptr %5, align 8, !tbaa !62
  store ptr %70, ptr %0, align 8, !tbaa !62
  %71 = load i64, ptr %43, align 8, !tbaa !55
  store i64 %71, ptr %12, align 8, !tbaa !55
  %72 = load i64, ptr %44, align 8, !tbaa !63
  store i64 %72, ptr %19, align 8, !tbaa !63
  %73 = load ptr, ptr %50, align 8, !tbaa !64
  store ptr %73, ptr %15, align 8, !tbaa !64
  store ptr %66, ptr %5, align 8, !tbaa !62
  store i64 %67, ptr %43, align 8, !tbaa !55
  store i64 %68, ptr %44, align 8, !tbaa !63
  store ptr %69, ptr %50, align 8, !tbaa !64
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !103

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !65
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !104

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #12
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !63
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !64
  %89 = load ptr, ptr %5, align 8, !tbaa !62
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #12
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !105

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !106

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !106

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !107, !llvm.loop !108

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !109, !llvm.loop !110

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !111
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !112

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !55
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !63
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !114

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !57
  store i16 %13, ptr %12, align 2, !tbaa !57
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !55
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %21 = load ptr, ptr %0, align 8, !tbaa !62
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !62
  %24 = load i64, ptr %4, align 8, !tbaa !55
  %25 = load i64, ptr %6, align 8, !tbaa !63
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = load ptr, ptr %3, align 8, !tbaa !62
  store ptr %28, ptr %0, align 8, !tbaa !62
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !55
  store i64 %30, ptr %4, align 8, !tbaa !55
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !63
  store i64 %32, ptr %6, align 8, !tbaa !63
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  store ptr %34, ptr %26, align 8, !tbaa !64
  store ptr %23, ptr %3, align 8, !tbaa !62
  store i64 %24, ptr %29, align 8, !tbaa !55
  store i64 %25, ptr %31, align 8, !tbaa !63
  store ptr %27, ptr %33, align 8, !tbaa !64
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #12
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !63
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  %52 = load ptr, ptr %3, align 8, !tbaa !62
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #12
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !85

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !62
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !63
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !116
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = load i64, ptr %5, align 8, !tbaa !55
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !87

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !62
  %24 = load i64, ptr %10, align 8, !tbaa !55
  %25 = load i64, ptr %11, align 8, !tbaa !63
  %26 = load ptr, ptr %17, align 8, !tbaa !64
  store ptr %4, ptr %3, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !63
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !64
  %33 = load ptr, ptr %3, align 8, !tbaa !62
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #12
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !88

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !117
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !62
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !63
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  store ptr %53, ptr %0, align 8, !tbaa !62
  store i64 %52, ptr %5, align 8, !tbaa !55
  store i64 %51, ptr %55, align 8, !tbaa !63
  store ptr %50, ptr %57, align 8, !tbaa !64
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !118

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !119

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #12
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6insertEjPKtj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !54, i64 200}
!47 = !{!"_ZTSN11xalanc_1_1014XalanParsedURIE", !48, i64 0, !48, i64 40, !48, i64 80, !48, i64 120, !48, i64 160, !54, i64 200}
!48 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !49, i64 0, !54, i64 32}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"long", !51, i64 0}
!54 = !{!"int", !51, i64 0}
!55 = !{!49, !53, i64 8}
!56 = !{!48, !54, i64 32}
!57 = !{!58, !58, i64 0}
!58 = !{!"short", !51, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!49, !50, i64 0}
!63 = !{!49, !53, i64 16}
!64 = !{!49, !50, i64 24}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !52, i64 0}
!67 = distinct !{!67, !60, !61}
!68 = distinct !{!68, !60, !61}
!69 = distinct !{!69, !60, !61}
!70 = distinct !{!70, !60, !61}
!71 = distinct !{!71, !60, !61}
!72 = distinct !{!72, !60, !61}
!73 = distinct !{!73, !60, !61}
!74 = distinct !{!74, !60, !61}
!75 = !{!"function_entry_count", i64 41614}
!76 = !{!"branch_weights", i32 0, i32 41614}
!77 = !{!"branch_weights", i32 12, i32 41602}
!78 = !{!"branch_weights", i32 5, i32 7}
!79 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!80 = !{!"branch_weights", i32 354, i32 41248}
!81 = !{!"branch_weights", i32 40889, i32 359}
!82 = !{!"branch_weights", i32 40581, i32 1021}
!83 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!84 = !{!"function_entry_count", i64 22}
!85 = !{!"branch_weights", i32 64551590, i32 18}
!86 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!87 = !{!"branch_weights", i32 18, i32 0}
!88 = !{!"branch_weights", i32 4, i32 64551586}
!89 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!90 = !{!"function_entry_count", i64 42470003}
!91 = !{!"branch_weights", i32 52000, i32 42418003}
!92 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!93 = !{!"function_entry_count", i64 155828046}
!94 = !{!"branch_weights", i32 0, i32 155828046}
!95 = !{!"branch_weights", i32 133170777, i32 22657269}
!96 = !{!"branch_weights", i32 20, i32 133170757}
!97 = !{!"branch_weights", i32 1, i32 19024395}
!98 = !{!"branch_weights", i32 19024395, i32 -26420601}
!99 = distinct !{!99, !60, !61}
!100 = !{!"branch_weights", i32 20748786, i32 1908483}
!101 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!102 = !{!"branch_weights", i32 20748786, i32 0}
!103 = !{!"branch_weights", i32 0, i32 20748786}
!104 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!105 = !{!"branch_weights", i32 0, i32 1908483}
!106 = !{!"branch_weights", i32 1, i32 1908482}
!107 = !{!"branch_weights", i32 1908482, i32 49797853}
!108 = distinct !{!108, !60, !61}
!109 = !{!"branch_weights", i32 1908482, i32 1}
!110 = distinct !{!110, !60, !61}
!111 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!112 = distinct !{!112, !60, !61}
!113 = !{!"function_entry_count", i64 124150652}
!114 = !{!"branch_weights", i32 124150652, i32 0}
!115 = !{!"function_entry_count", i64 64551586}
!116 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!117 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!118 = !{!"branch_weights", i32 42418193, i32 22133393}
!119 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
