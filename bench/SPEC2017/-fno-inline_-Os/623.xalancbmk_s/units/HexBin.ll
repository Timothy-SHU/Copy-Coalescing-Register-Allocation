; ModuleID = 'HexBin.cpp'
source_filename = "HexBin.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh = comdat any

@_ZN11xercesc_2_76HexBin14hexNumberTableE = dso_local local_unnamed_addr global [255 x i8] zeroinitializer, align 16
@_ZN11xercesc_2_76HexBin13isInitializedE = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !41 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_76HexBin14isArrayByteHexEPKt(ptr noundef %0) #10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #10
  %5 = lshr i32 %4, 1
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76HexBin14isArrayByteHexEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !41 {
  %2 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !46, !noundef !47
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76HexBin4initEv() #10
  br label %5

5:                                                ; preds = %4, %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %0, align 2, !tbaa !48
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = icmp slt i32 %11, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = zext nneg i32 %11 to i64
  %18 = zext nneg i32 %11 to i64
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, %18
  br i1 %21, label %26, label %22, !llvm.loop !50

22:                                               ; preds = %16, %19
  %23 = phi i64 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr inbounds i16, ptr %0, i64 %23
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_76HexBin5isHexERKt(ptr noundef nonnull align 2 dereferenceable(2) %24) #10
  br i1 %25, label %19, label %28

26:                                               ; preds = %19
  %27 = icmp uge i64 %20, %17
  br label %28

28:                                               ; preds = %22, %26, %14, %10, %5, %7
  %29 = phi i1 [ true, %7 ], [ true, %5 ], [ false, %10 ], [ true, %14 ], [ %27, %26 ], [ false, %22 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !52 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !53

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !48
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !54

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !48
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !55, !llvm.loop !56

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_76HexBin4initEv() local_unnamed_addr #2 align 2 !prof !41 {
  %1 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !46, !noundef !47
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %47

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) @_ZN11xercesc_2_76HexBin14hexNumberTableE, i8 -1, i64 255, i1 false), !tbaa !57
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi i64 [ 0, %3 ], [ %16, %15 ]
  %6 = trunc i64 %5 to i8
  %7 = icmp ult i64 %5, 10
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = sub nuw nsw i64 57, %5
  %10 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %9
  %11 = sub nsw i8 9, %6
  store i8 %11, ptr %10, align 1, !tbaa !57
  %12 = sub nuw nsw i64 56, %5
  %13 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %12
  %14 = sub nsw i8 8, %6
  store i8 %14, ptr %13, align 2, !tbaa !57
  br label %15

15:                                               ; preds = %4, %8
  %16 = add i64 %5, 2
  %17 = icmp eq i64 %16, 10
  br i1 %17, label %18, label %4, !llvm.loop !58

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %30, %29 ], [ 0, %15 ]
  %20 = trunc i64 %19 to i8
  %21 = icmp ult i64 %19, 6
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = sub nuw nsw i64 70, %19
  %24 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %23
  %25 = xor i8 %20, 15
  store i8 %25, ptr %24, align 2, !tbaa !57
  %26 = sub nuw nsw i64 69, %19
  %27 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %26
  %28 = sub nuw nsw i8 14, %20
  store i8 %28, ptr %27, align 1, !tbaa !57
  br label %29

29:                                               ; preds = %18, %22
  %30 = add i64 %19, 2
  %31 = icmp eq i64 %30, 6
  br i1 %31, label %32, label %18, !llvm.loop !61

32:                                               ; preds = %29, %43
  %33 = phi i64 [ %44, %43 ], [ 0, %29 ]
  %34 = trunc i64 %33 to i8
  %35 = icmp ult i64 %33, 6
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = sub nuw nsw i64 102, %33
  %38 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %37
  %39 = xor i8 %34, 15
  store i8 %39, ptr %38, align 2, !tbaa !57
  %40 = sub nuw nsw i64 101, %33
  %41 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %40
  %42 = sub nuw nsw i8 14, %34
  store i8 %42, ptr %41, align 1, !tbaa !57
  br label %43

43:                                               ; preds = %32, %36
  %44 = add i64 %33, 2
  %45 = icmp eq i64 %44, 6
  br i1 %45, label %46, label %32, !llvm.loop !62

46:                                               ; preds = %43
  store i8 1, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42
  br label %47

47:                                               ; preds = %0, %46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76HexBin5isHexERKt(ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %0) local_unnamed_addr #3 align 2 !prof !41 {
  %2 = load i16, ptr %0, align 2, !tbaa !48
  %3 = icmp ugt i16 %2, 254
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !57
  %8 = icmp ne i8 %7, -1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i1 [ %8, %4 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !41 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef %0) #10, !range !63
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) #10
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %6) #10
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !65

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !66
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin6decodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !48
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %5
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !46, !noundef !47
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_76HexBin4initEv() #10
  br label %16

16:                                               ; preds = %15, %12
  %17 = ashr exact i32 %9, 1
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 1
  %21 = load ptr, ptr %1, align 8, !tbaa !66
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %20) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %24, ptr noundef nonnull %1) #10
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %16
  %27 = zext nneg i32 %17 to i64
  br label %28

28:                                               ; preds = %26, %46
  %29 = phi i64 [ 0, %26 ], [ %51, %46 ]
  %30 = shl nuw nsw i64 %29, 1
  %31 = getelementptr inbounds i16, ptr %0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !48
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !57
  %36 = zext i8 %35 to i16
  %37 = icmp eq i8 %35, -1
  br i1 %37, label %57, label %38

38:                                               ; preds = %28
  %39 = or disjoint i64 %30, 1
  %40 = getelementptr inbounds i16, ptr %0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !48
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !57
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %57, label %46

46:                                               ; preds = %38
  %47 = zext i8 %44 to i16
  %48 = shl nuw nsw i16 %36, 4
  %49 = or i16 %48, %47
  %50 = getelementptr inbounds i16, ptr %24, i64 %29
  store i16 %49, ptr %50, align 2, !tbaa !48
  %51 = add nuw nsw i64 %29, 1
  %52 = icmp eq i64 %51, %27
  br i1 %52, label %53, label %28, !llvm.loop !68

53:                                               ; preds = %46, %16
  %54 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  %55 = sext i32 %17 to i64
  %56 = getelementptr inbounds i16, ptr %24, i64 %55
  store i16 0, ptr %56, align 2, !tbaa !48
  br label %57

57:                                               ; preds = %28, %38, %53
  %58 = phi ptr [ %24, %53 ], [ null, %38 ], [ null, %28 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %59

59:                                               ; preds = %57, %8, %2, %5
  %60 = phi ptr [ null, %5 ], [ null, %2 ], [ %58, %57 ], [ null, %8 ]
  ret ptr %60
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorItE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  store ptr null, ptr %0, align 8, !tbaa !70
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !76

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !77

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !66
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !48
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %5
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !46, !noundef !47
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_76HexBin4initEv() #10
  br label %16

16:                                               ; preds = %15, %12
  %17 = ashr exact i32 %9, 1
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load ptr, ptr %1, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %19) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %23, ptr noundef nonnull %1) #10
  %24 = icmp sgt i32 %17, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %16
  %26 = zext nneg i32 %17 to i64
  br label %27

27:                                               ; preds = %25, %44
  %28 = phi i64 [ 0, %25 ], [ %48, %44 ]
  %29 = shl nuw nsw i64 %28, 1
  %30 = getelementptr inbounds i16, ptr %0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !48
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !57
  %35 = icmp eq i8 %34, -1
  br i1 %35, label %54, label %36

36:                                               ; preds = %27
  %37 = or disjoint i64 %29, 1
  %38 = getelementptr inbounds i16, ptr %0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !48
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !57
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = shl i8 %34, 4
  %46 = or i8 %42, %45
  %47 = getelementptr inbounds i8, ptr %23, i64 %28
  store i8 %46, ptr %47, align 1, !tbaa !57
  %48 = add nuw nsw i64 %28, 1
  %49 = icmp eq i64 %48, %26
  br i1 %49, label %50, label %27, !llvm.loop !78

50:                                               ; preds = %44, %16
  %51 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  %52 = sext i32 %17 to i64
  %53 = getelementptr inbounds i8, ptr %23, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !57
  br label %54

54:                                               ; preds = %27, %36, %50
  %55 = phi ptr [ %23, %50 ], [ null, %36 ], [ null, %27 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %56

56:                                               ; preds = %54, %8, %2, %5
  %57 = phi ptr [ null, %5 ], [ null, %2 ], [ %55, %54 ], [ null, %8 ]
  ret ptr %57
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhEC2EPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIhE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr null, ptr %0, align 8, !tbaa !79
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhE5resetEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !66
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !81
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"bool", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !44, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"function_entry_count", i64 2453164456}
!53 = !{!"branch_weights", i32 1, i32 -1841802839}
!54 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!55 = !{!"branch_weights", i32 408669070, i32 -279908792}
!56 = distinct !{!56, !51}
!57 = !{!44, !44, i64 0}
!58 = distinct !{!58, !51, !59, !60}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = distinct !{!61, !51, !59, !60}
!62 = distinct !{!62, !51, !59, !60}
!63 = !{i32 -1, i32 -2147483648}
!64 = !{!"function_entry_count", i64 558789}
!65 = !{!"branch_weights", i32 158605, i32 400186}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !45, i64 0}
!68 = distinct !{!68, !51}
!69 = !{!"function_entry_count", i64 52059}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !72, i64 0, !72, i64 8}
!72 = !{!"any pointer", !44, i64 0}
!73 = !{!71, !72, i64 8}
!74 = !{!"function_entry_count", i64 243874}
!75 = !{!"function_entry_count", i64 5836268}
!76 = !{!"branch_weights", i32 191816, i32 52060}
!77 = !{!"branch_weights", i32 1, i32 52060}
!78 = distinct !{!78, !51}
!79 = !{!80, !72, i64 0}
!80 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIhEE", !72, i64 0, !72, i64 8}
!81 = !{!80, !72, i64 8}
