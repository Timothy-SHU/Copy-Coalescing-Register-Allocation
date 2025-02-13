; ModuleID = 'DOMStringPool.cpp'
source_filename = "DOMStringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMStringPool" = type <{ ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::DOMStringPoolEntry" = type { ptr, [1 x i16] }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMBuffer" = type { ptr, i32, i32, ptr }

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

@_ZN11xercesc_2_713DOMStringPoolC1EiPNS_15DOMDocumentImplE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE
@_ZN11xercesc_2_713DOMStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMStringPoolD2Ev
@_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEi = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEi
@_ZN11xercesc_2_79DOMBufferC1EPNS_15DOMDocumentImplEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 !prof !46 {
  store ptr %2, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 2
  store i32 %1, ptr %4, align 8, !tbaa !53
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %2, i64 noundef %6) #6
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = load i32, ptr %4, align 8, !tbaa !53
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13, !prof !55

11:                                               ; preds = %3
  %12 = zext nneg i32 %9 to i64
  br label %14

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %18, %14 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  store ptr null, ptr %17, align 8, !tbaa !56
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %13, label %14, !prof !57, !llvm.loop !58
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_713DOMStringPoolD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !60 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !61 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %5) #6
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %4, ptr noundef %6) #6
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMStringPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !62

14:                                               ; preds = %2, %20
  %15 = phi ptr [ %21, %20 ], [ %12, %2 ]
  %16 = phi ptr [ %19, %20 ], [ %11, %2 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %15, i64 0, i32 1
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %17, ptr noundef %1) #6
  %19 = load ptr, ptr %16, align 8, !tbaa !56
  br i1 %18, label %27, label %20, !prof !63

20:                                               ; preds = %14
  %21 = load ptr, ptr %19, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !64, !llvm.loop !65

23:                                               ; preds = %20, %2
  %24 = phi ptr [ %11, %2 ], [ %19, %20 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !47
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE(ptr noundef %1, ptr noundef %25) #6
  store ptr %26, ptr %24, align 8, !tbaa !56
  br label %27

27:                                               ; preds = %14, %23
  %28 = phi ptr [ %26, %23 ], [ %19, %14 ]
  %29 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %28, i64 0, i32 1
  ret ptr %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !66 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !67

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !68
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !70

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !68
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !71

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !68
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !72, !llvm.loop !73

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #3 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !90

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !68
  %8 = load i16, ptr %1, align 2, !tbaa !68
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !91

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !92

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !68
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !93

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !94

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !68
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !95

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !96

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !68
  %28 = load i16, ptr %26, align 2, !tbaa !68
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !97, !llvm.loop !98

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !99 !PGOFuncName !100 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #6
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 1
  %6 = add nuw nsw i64 %5, 16
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %6) #6
  store ptr null, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %"struct.xercesc_2_7::DOMStringPoolEntry", ptr %7, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %8, ptr noundef %0) #6
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !60 {
  store ptr null, ptr %0, align 8, !tbaa !103
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !105
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 4, !tbaa !106
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !107
  %7 = add i32 %2, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 1
  %10 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %9) #6
  store ptr %10, ptr %0, align 8, !tbaa !103
  store i16 0, ptr %10, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !108 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %6, align 8, !tbaa !107
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #6
  %8 = add i32 %7, 15
  store i32 %8, ptr %5, align 4, !tbaa !106
  %9 = add i32 %7, 16
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 1
  %12 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %11) #6
  store ptr %12, ptr %0, align 8, !tbaa !103
  %13 = zext i32 %7 to i64
  %14 = shl nuw nsw i64 %13, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr align 2 %2, i64 %14, i1 false)
  store i32 %7, ptr %4, align 8, !tbaa !105
  %15 = load ptr, ptr %0, align 8, !tbaa !103
  %16 = getelementptr inbounds i16, ptr %15, i64 %13
  store i16 0, ptr %16, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !110

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !68
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !111

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !68
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !112, !llvm.loop !113

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer6appendEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !60 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #6
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %2, %3 ], [ %6, %5 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !105
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !106
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79DOMBuffer14expandCapacityEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %8) #6
  %16 = load i32, ptr %9, align 8, !tbaa !105
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ %10, %7 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !103
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = zext i32 %8 to i64
  %23 = shl nuw nsw i64 %22, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %1, i64 %23, i1 false)
  %24 = load i32, ptr %9, align 8, !tbaa !105
  %25 = add i32 %24, %8
  store i32 %25, ptr %9, align 8, !tbaa !105
  %26 = load ptr, ptr %0, align 8, !tbaa !103
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  store i16 0, ptr %28, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer14expandCapacityEj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = add i32 %4, %1
  %6 = uitofp i32 %5 to double
  %7 = fmul double %6, 1.250000e+00
  %8 = fptoui double %7 to i32
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = add i32 %8, 1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 1
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef %13) #6
  %15 = load ptr, ptr %0, align 8, !tbaa !103
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %14, ptr align 2 %15, i64 %19, i1 false)
  store ptr %14, ptr %0, align 8, !tbaa !103
  store i32 %8, ptr %16, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMBuffer3setEPKtj(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !60 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #6
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %2, %3 ], [ %6, %5 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79DOMBuffer14expandCapacityEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %8) #6
  br label %14

14:                                               ; preds = %13, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !103
  %16 = zext i32 %8 to i64
  %17 = shl nuw nsw i64 %16, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %15, ptr align 2 %1, i64 %17, i1 false)
  store i32 %8, ptr %9, align 8, !tbaa !105
  %18 = load ptr, ptr %0, align 8, !tbaa !103
  %19 = getelementptr inbounds i16, ptr %18, i64 %16
  store i16 0, ptr %19, align 2, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_713DOMStringPoolC2EiPNS_15DOMDocumentImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1}
!36 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv, i64 2954}
!37 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 2954}
!38 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 3008}
!39 = !{ptr @_ZN11xercesc_2_713DOMStringPool15getPooledStringEPKt, ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE, i64 21}
!40 = !{ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 36}
!41 = !{ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 36}
!42 = !{ptr @_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 36}
!43 = !{ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 650}
!44 = !{ptr @_ZN11xercesc_2_79DOMBufferC2EPNS_15DOMDocumentImplEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 650}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN11xercesc_2_713DOMStringPoolE", !49, i64 0, !49, i64 8, !52, i64 16}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"int", !50, i64 0}
!53 = !{!48, !52, i64 16}
!54 = !{!48, !49, i64 8}
!55 = !{!"branch_weights", i32 127, i32 1}
!56 = !{!49, !49, i64 0}
!57 = !{!"branch_weights", i32 127, i32 16385}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!"function_entry_count", i64 2954}
!62 = !{!"branch_weights", i32 1, i32 147}
!63 = !{!"branch_weights", i32 2919, i32 75}
!64 = !{!"branch_weights", i32 147, i32 11825}
!65 = distinct !{!65, !59}
!66 = !{!"function_entry_count", i64 4646679}
!67 = !{!"branch_weights", i32 1, i32 4646680}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !50, i64 0}
!70 = !{!"branch_weights", i32 1216534, i32 3430147}
!71 = !{!"branch_weights", i32 1, i32 3430146}
!72 = !{!"branch_weights", i32 3430146, i32 42249130}
!73 = distinct !{!73, !59}
!74 = !{!75, !49, i64 280}
!75 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !76, i64 0, !81, i64 32, !82, i64 48, !49, i64 80, !49, i64 88, !49, i64 96, !85, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !86, i64 136, !49, i64 176, !49, i64 184, !49, i64 192, !88, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !49, i64 272, !49, i64 280, !52, i64 288, !85, i64 292}
!76 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !77, i64 0, !78, i64 8, !79, i64 16, !80, i64 24}
!77 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!78 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!79 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!80 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!81 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !49, i64 0, !69, i64 8}
!82 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !49, i64 0, !49, i64 8, !83, i64 16}
!83 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !84, i64 0, !49, i64 8}
!84 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!85 = !{!"bool", !50, i64 0}
!86 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !87, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !52, i64 32, !52, i64 36}
!87 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!88 = !{!"long", !50, i64 0}
!89 = !{!"function_entry_count", i64 1231717351}
!90 = !{!"branch_weights", i32 621, i32 -1469098093}
!91 = !{!"branch_weights", i32 408901017, i32 1}
!92 = !{!"branch_weights", i32 267, i32 4}
!93 = !{!"branch_weights", i32 1, i32 4}
!94 = !{!"branch_weights", i32 156, i32 112}
!95 = !{!"branch_weights", i32 1, i32 112}
!96 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!97 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!98 = distinct !{!98, !59}
!99 = !{!"function_entry_count", i64 36}
!100 = !{!"DOMStringPool.cpp:_ZN11xercesc_2_7L9createSPEEPKtPNS_15DOMDocumentImplE"}
!101 = !{!102, !49, i64 0}
!102 = !{!"_ZTSN11xercesc_2_718DOMStringPoolEntryE", !49, i64 0, !50, i64 8}
!103 = !{!104, !49, i64 0}
!104 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !49, i64 0, !52, i64 8, !52, i64 12, !49, i64 16}
!105 = !{!104, !52, i64 8}
!106 = !{!104, !52, i64 12}
!107 = !{!104, !49, i64 16}
!108 = !{!"function_entry_count", i64 650}
!109 = !{!"function_entry_count", i64 2453164456}
!110 = !{!"branch_weights", i32 1, i32 -1841802839}
!111 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!112 = !{!"branch_weights", i32 408669070, i32 -279908794}
!113 = distinct !{!113, !59}
