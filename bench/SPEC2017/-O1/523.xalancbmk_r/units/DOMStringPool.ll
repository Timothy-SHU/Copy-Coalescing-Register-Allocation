; ModuleID = 'DOMStringPool.cpp'
source_filename = "DOMStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMStringPool" = type <{ ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::DOMStringPoolEntry" = type { ptr, [1 x i16] }
%"class.xercesc_2_7::DOMBuffer" = type { ptr, i32, i32, ptr }

@_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE
@_ZN11xercesc_2_713DOMStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMStringPoolD2Ev
@_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEi = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEi
@_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 !prof !40 {
  store ptr %2, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 2
  store i32 %1, ptr %4, align 8, !tbaa !47
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %2, i64 noundef %6)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !48
  %9 = load i32, ptr %4, align 8, !tbaa !47
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13, !prof !49

11:                                               ; preds = %3
  %12 = zext nneg i32 %9 to i64
  br label %14

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %18, %14 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !50
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %13, label %14, !prof !51, !llvm.loop !52
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMStringPoolD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !55 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6, !prof !57

6:                                                ; preds = %2
  %7 = load i16, ptr %1, align 2, !tbaa !58
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9, !prof !57

9:                                                ; preds = %6
  %10 = zext i16 %7 to i32
  %11 = getelementptr inbounds i16, ptr %1, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !58
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14, !prof !60

14:                                               ; preds = %9, %14
  %15 = phi i16 [ %24, %14 ], [ %12, %9 ]
  %16 = phi ptr [ %23, %14 ], [ %11, %9 ]
  %17 = phi i32 [ %22, %14 ], [ %10, %9 ]
  %18 = mul i32 %17, 38
  %19 = lshr i32 %17, 24
  %20 = add i32 %18, %19
  %21 = zext i16 %15 to i32
  %22 = add i32 %20, %21
  %23 = getelementptr inbounds i16, ptr %16, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !58
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %14, !prof !61, !llvm.loop !62

26:                                               ; preds = %14, %9
  %27 = phi i32 [ %10, %9 ], [ %22, %14 ]
  %28 = urem i32 %27, %4
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %2, %6, %26
  %31 = phi i64 [ %29, %26 ], [ 0, %6 ], [ 0, %2 ]
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37, !prof !63

37:                                               ; preds = %30, %57
  %38 = phi ptr [ %58, %57 ], [ %35, %30 ]
  %39 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %38, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !58
  br i1 %5, label %44, label %41, !prof !64

41:                                               ; preds = %37
  %42 = load i16, ptr %1, align 2, !tbaa !58
  %43 = icmp eq i16 %40, %42
  br i1 %43, label %46, label %57, !prof !65

44:                                               ; preds = %37
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %81, label %57

46:                                               ; preds = %41, %51
  %47 = phi i16 [ %54, %51 ], [ %40, %41 ]
  %48 = phi ptr [ %53, %51 ], [ %1, %41 ]
  %49 = phi ptr [ %52, %51 ], [ %39, %41 ]
  %50 = icmp eq i16 %47, 0
  br i1 %50, label %81, label %51, !prof !66

51:                                               ; preds = %46
  %52 = getelementptr inbounds i16, ptr %49, i64 1
  %53 = getelementptr inbounds i16, ptr %48, i64 1
  %54 = load i16, ptr %52, align 2, !tbaa !58
  %55 = load i16, ptr %53, align 2, !tbaa !58
  %56 = icmp eq i16 %54, %55
  br i1 %56, label %46, label %57, !prof !67, !llvm.loop !68

57:                                               ; preds = %51, %41, %44
  %58 = load ptr, ptr %38, align 8, !tbaa !50
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %37, !prof !69, !llvm.loop !70

60:                                               ; preds = %57, %30
  %61 = phi ptr [ %34, %30 ], [ %38, %57 ]
  %62 = load ptr, ptr %0, align 8, !tbaa !41
  br i1 %5, label %77, label %63, !prof !71

63:                                               ; preds = %60
  %64 = load i16, ptr %1, align 2, !tbaa !58
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %77, label %66, !prof !71

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %68, %66 ], [ %1, %63 ]
  %68 = getelementptr inbounds i16, ptr %67, i64 1
  %69 = load i16, ptr %68, align 2, !tbaa !58
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %66, !prof !72, !llvm.loop !73

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i64
  %73 = ptrtoint ptr %1 to i64
  %74 = sub i64 %72, %73
  %75 = and i64 %74, 8589934590
  %76 = add nuw nsw i64 %75, 16
  br label %77

77:                                               ; preds = %60, %63, %71
  %78 = phi i64 [ %76, %71 ], [ 16, %63 ], [ 16, %60 ]
  %79 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %62, i64 noundef %78)
  store ptr null, ptr %79, align 8, !tbaa !74
  %80 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %79, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %80, ptr noundef %1)
  store ptr %79, ptr %61, align 8, !tbaa !50
  br label %81

81:                                               ; preds = %44, %46, %77
  %82 = phi ptr [ %79, %77 ], [ %38, %46 ], [ %38, %44 ]
  %83 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %82, i64 0, i32 1
  ret ptr %83
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !55 {
  store ptr null, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 4, !tbaa !79
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !80
  %7 = add i32 %2, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 1
  %10 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %9)
  store ptr %10, ptr %0, align 8, !tbaa !76
  store i16 0, ptr %10, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !81 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !80
  %5 = icmp eq ptr %2, null
  br i1 %5, label %20, label %6, !prof !82

6:                                                ; preds = %3
  %7 = load i16, ptr %2, align 2, !tbaa !58
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9, !prof !82

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %2, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !58
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !prof !83, !llvm.loop !73

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %3, %6, %14
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ 0, %3 ]
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %24 = add i32 %21, 15
  store i32 %24, ptr %22, align 4, !tbaa !79
  %25 = add i32 %21, 16
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 1
  %28 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %27)
  store ptr %28, ptr %0, align 8, !tbaa !76
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr align 2 %2, i64 %30, i1 false), !prof !84
  store i32 %21, ptr %23, align 8, !tbaa !78
  %31 = load ptr, ptr %0, align 8, !tbaa !76
  %32 = getelementptr inbounds i16, ptr %31, i64 %29
  store i16 0, ptr %32, align 2, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !55 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %1, align 2, !tbaa !58
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %1, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !58
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !73

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %15, %7, %5, %3
  %22 = phi i32 [ %2, %3 ], [ %20, %15 ], [ 0, %7 ], [ 0, %5 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !78
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !79
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = uitofp i32 %25 to double
  %31 = fmul double %30, 1.250000e+00
  %32 = fptoui double %31 to i32
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  %35 = add i32 %32, 1
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %34, i64 noundef %37)
  %39 = load ptr, ptr %0, align 8, !tbaa !76
  %40 = load i32, ptr %26, align 4, !tbaa !79
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr align 2 %39, i64 %42, i1 false)
  store ptr %38, ptr %0, align 8, !tbaa !76
  store i32 %32, ptr %26, align 4, !tbaa !79
  br label %43

43:                                               ; preds = %29, %21
  %44 = load ptr, ptr %0, align 8, !tbaa !76
  %45 = load i32, ptr %23, align 8, !tbaa !78
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i16, ptr %44, i64 %46
  %48 = zext i32 %22 to i64
  %49 = shl nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %47, ptr align 2 %1, i64 %49, i1 false)
  %50 = load i32, ptr %23, align 8, !tbaa !78
  %51 = add i32 %50, %22
  store i32 %51, ptr %23, align 8, !tbaa !78
  %52 = load ptr, ptr %0, align 8, !tbaa !76
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i16, ptr %52, i64 %53
  store i16 0, ptr %54, align 2, !tbaa !58
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer14expandCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = add i32 %4, %1
  %6 = uitofp i32 %5 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = add i32 %8, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef %13)
  %15 = load ptr, ptr %0, align 8, !tbaa !76
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !79
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %14, ptr align 2 %15, i64 %19, i1 false)
  store ptr %14, ptr %0, align 8, !tbaa !76
  store i32 %8, ptr %16, align 4, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !55 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %1, align 2, !tbaa !58
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %1, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !58
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !73

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %15, %7, %5, %3
  %22 = phi i32 [ %2, %3 ], [ %20, %15 ], [ 0, %7 ], [ 0, %5 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa !78
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !79
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = uitofp i32 %22 to double
  %29 = fmul double %28, 1.250000e+00
  %30 = fptoui double %29 to i32
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = add i32 %30, 1
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 1
  %36 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %32, i64 noundef %35)
  %37 = load ptr, ptr %0, align 8, !tbaa !76
  %38 = load i32, ptr %24, align 4, !tbaa !79
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr align 2 %37, i64 %40, i1 false)
  store ptr %36, ptr %0, align 8, !tbaa !76
  store i32 %30, ptr %24, align 4, !tbaa !79
  br label %41

41:                                               ; preds = %27, %21
  %42 = load ptr, ptr %0, align 8, !tbaa !76
  %43 = zext i32 %22 to i64
  %44 = shl nuw nsw i64 %43, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %42, ptr align 2 %1, i64 %44, i1 false)
  store i32 %22, ptr %23, align 8, !tbaa !78
  %45 = load ptr, ptr %0, align 8, !tbaa !76
  %46 = getelementptr inbounds i16, ptr %45, i64 %43
  store i16 0, ptr %46, align 2, !tbaa !58
  ret void
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1}
!36 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 22}
!37 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 22}
!38 = !{ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 650}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN11xercesc_2_713DOMStringPoolE", !43, i64 0, !43, i64 8, !46, i64 16}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !{!42, !46, i64 16}
!48 = !{!42, !43, i64 8}
!49 = !{!"branch_weights", i32 127, i32 1}
!50 = !{!43, !43, i64 0}
!51 = !{!"branch_weights", i32 127, i32 32769}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!"function_entry_count", i64 2954}
!57 = !{!"branch_weights", i32 0, i32 2954}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !44, i64 0}
!60 = !{!"branch_weights", i32 1, i32 2953}
!61 = !{!"branch_weights", i32 2953, i32 28073}
!62 = distinct !{!62, !53, !54}
!63 = !{!"branch_weights", i32 1, i32 143}
!64 = !{!"branch_weights", i32 0, i32 2992}
!65 = !{!"branch_weights", i32 147, i32 1}
!66 = !{!"branch_weights", i32 2918, i32 33672}
!67 = !{!"branch_weights", i32 73033, i32 147}
!68 = distinct !{!68, !53, !54}
!69 = !{!"branch_weights", i32 143, i32 11825}
!70 = distinct !{!70, !53, !54}
!71 = !{!"branch_weights", i32 0, i32 36}
!72 = !{!"branch_weights", i32 36, i32 272}
!73 = distinct !{!73, !53, !54}
!74 = !{!75, !43, i64 0}
!75 = !{!"_ZTSN11xercesc_2_718DOMStringPoolEntryE", !43, i64 0, !44, i64 8}
!76 = !{!77, !43, i64 0}
!77 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !43, i64 0, !46, i64 8, !46, i64 12, !43, i64 16}
!78 = !{!77, !46, i64 8}
!79 = !{!77, !46, i64 12}
!80 = !{!77, !43, i64 16}
!81 = !{!"function_entry_count", i64 650}
!82 = !{!"branch_weights", i32 0, i32 650}
!83 = !{!"branch_weights", i32 650, i32 6003}
!84 = !{!"VP", i32 1, i64 650, i64 17, i64 224, i64 9, i64 188, i64 16, i64 77, i64 33, i64 58}
