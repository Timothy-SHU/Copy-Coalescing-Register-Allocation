; ModuleID = 'HexBin.cpp'
source_filename = "HexBin.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIhED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_76HexBin14hexNumberTableE = dso_local local_unnamed_addr global [255 x i8] zeroinitializer, align 16
@_ZN11xercesc_2_76HexBin13isInitializedE = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_76HexBin14isArrayByteHexEPKt(ptr noundef %0)
  br i1 %2, label %3, label %20

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !35
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !35
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !39

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = lshr i64 %16, 2
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 2147483647
  br label %20

20:                                               ; preds = %13, %5, %3, %1
  %21 = phi i32 [ -1, %1 ], [ %19, %13 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76HexBin14isArrayByteHexEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !44, !noundef !45
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76HexBin4initEv()
  br label %5

5:                                                ; preds = %4, %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %0, align 2, !tbaa !35
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %0, %7 ]
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !35
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %10, !llvm.loop !39

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = icmp slt i32 %20, 1
  br i1 %24, label %44, label %25

25:                                               ; preds = %23
  %26 = and i64 %19, 4294967295
  %27 = load i16, ptr %0, align 2, !tbaa !35
  %28 = icmp ugt i16 %27, 254
  br i1 %28, label %44, label %36

29:                                               ; preds = %36
  %30 = add nuw nsw i64 %39, 1
  %31 = icmp uge i64 %30, %26
  br i1 %31, label %44, label %32, !llvm.loop !46

32:                                               ; preds = %29
  %33 = getelementptr inbounds i16, ptr %0, i64 %30
  %34 = load i16, ptr %33, align 2, !tbaa !35
  %35 = icmp ugt i16 %34, 254
  br i1 %35, label %44, label %36, !llvm.loop !46

36:                                               ; preds = %25, %32
  %37 = phi i16 [ %34, %32 ], [ %27, %25 ]
  %38 = phi i1 [ %31, %32 ], [ %24, %25 ]
  %39 = phi i64 [ %30, %32 ], [ 0, %25 ]
  %40 = zext nneg i16 %37 to i64
  %41 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %44, label %29

44:                                               ; preds = %29, %36, %32, %25, %23, %15, %5, %7
  %45 = phi i1 [ true, %7 ], [ true, %5 ], [ false, %15 ], [ %24, %23 ], [ %24, %25 ], [ %31, %32 ], [ %38, %36 ], [ %31, %29 ]
  ret i1 %45
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_76HexBin4initEv() local_unnamed_addr #1 align 2 !prof !34 {
  %1 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !44, !noundef !45
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) @_ZN11xercesc_2_76HexBin14hexNumberTableE, i8 -1, i64 255, i1 false), !tbaa !47
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 57, %3 ], [ %9, %4 ]
  %6 = trunc i64 %5 to i8
  %7 = add i8 %6, -48
  %8 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %5
  store i8 %7, ptr %8, align 1, !tbaa !47
  %9 = add nsw i64 %5, -1
  %10 = icmp ugt i64 %5, 48
  br i1 %10, label %4, label %11, !llvm.loop !48

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %16, %11 ], [ 70, %4 ]
  %13 = trunc i64 %12 to i8
  %14 = add i8 %13, -55
  %15 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %12
  store i8 %14, ptr %15, align 1, !tbaa !47
  %16 = add nsw i64 %12, -1
  %17 = icmp ugt i64 %12, 65
  br i1 %17, label %11, label %18, !llvm.loop !49

18:                                               ; preds = %11, %18
  %19 = phi i64 [ %23, %18 ], [ 102, %11 ]
  %20 = trunc i64 %19 to i8
  %21 = add i8 %20, -87
  %22 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %19
  store i8 %21, ptr %22, align 1, !tbaa !47
  %23 = add nsw i64 %19, -1
  %24 = icmp ugt i64 %19, 97
  br i1 %24, label %18, label %25, !llvm.loop !50

25:                                               ; preds = %18
  store i8 1, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42
  br label %26

26:                                               ; preds = %0, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76HexBin5isHexERKt(ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = load i16, ptr %0, align 2, !tbaa !35
  %3 = icmp ugt i16 %2, 254
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !47
  %8 = icmp ne i8 %7, -1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i1 [ %8, %4 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_76HexBin14isArrayByteHexEPKt(ptr noundef %0)
  br i1 %3, label %4, label %28

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %0, align 2, !tbaa !35
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %0, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !35
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !39

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %0 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 2
  %19 = and i64 %18, 8589934590
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi i64 [ %19, %14 ], [ 2, %6 ]
  %22 = load ptr, ptr %1, align 8, !tbaa !51
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %21)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr nonnull align 2 %0, i64 %21, i1 false)
  br label %26

26:                                               ; preds = %4, %20
  %27 = phi ptr [ %25, %20 ], [ null, %4 ]
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %27)
  br label %28

28:                                               ; preds = %2, %26
  %29 = phi ptr [ %27, %26 ], [ null, %2 ]
  ret ptr %29
}

declare void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin6decodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !35
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !35
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !39

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %13
  %22 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !44, !noundef !45
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_76HexBin4initEv()
  br label %25

25:                                               ; preds = %24, %21
  %26 = ashr exact i32 %18, 1
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 1
  %30 = load ptr, ptr %1, align 8, !tbaa !51
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %29)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  store ptr %33, ptr %3, align 8, !tbaa !53
  %34 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %34, align 8, !tbaa !56
  %35 = icmp sgt i32 %26, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %25
  %37 = zext nneg i32 %26 to i64
  br label %38

38:                                               ; preds = %36, %56
  %39 = phi i64 [ 0, %36 ], [ %61, %56 ]
  %40 = shl nuw nsw i64 %39, 1
  %41 = getelementptr inbounds i16, ptr %0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !35
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = zext i8 %45 to i16
  %47 = icmp eq i8 %45, -1
  br i1 %47, label %66, label %48

48:                                               ; preds = %38
  %49 = or disjoint i64 %40, 1
  %50 = getelementptr inbounds i16, ptr %0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !35
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !47
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %66, label %56

56:                                               ; preds = %48
  %57 = zext i8 %54 to i16
  %58 = shl nuw nsw i16 %46, 4
  %59 = or i16 %58, %57
  %60 = getelementptr inbounds i16, ptr %33, i64 %39
  store i16 %59, ptr %60, align 2, !tbaa !35
  %61 = add nuw nsw i64 %39, 1
  %62 = icmp eq i64 %61, %37
  br i1 %62, label %63, label %38, !llvm.loop !57

63:                                               ; preds = %56, %25
  store ptr null, ptr %3, align 8, !tbaa !53
  %64 = sext i32 %26 to i64
  %65 = getelementptr inbounds i16, ptr %33, i64 %64
  store i16 0, ptr %65, align 2, !tbaa !35
  br label %66

66:                                               ; preds = %38, %48, %63
  %67 = phi ptr [ %33, %63 ], [ null, %48 ], [ null, %38 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %68

68:                                               ; preds = %66, %13, %2, %5
  %69 = phi ptr [ null, %5 ], [ null, %2 ], [ %67, %66 ], [ null, %13 ]
  ret ptr %69
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !59

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !60

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !61

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #13
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !35
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %65, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !35
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !39

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %13
  %22 = load i8, ptr @_ZN11xercesc_2_76HexBin13isInitializedE, align 1, !tbaa !42, !range !44, !noundef !45
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_76HexBin4initEv()
  br label %25

25:                                               ; preds = %24, %21
  %26 = ashr exact i32 %18, 1
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load ptr, ptr %1, align 8, !tbaa !51
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  store ptr %32, ptr %3, align 8, !tbaa !62
  %33 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %3, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !64
  %34 = icmp sgt i32 %26, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  %36 = zext nneg i32 %26 to i64
  br label %37

37:                                               ; preds = %35, %54
  %38 = phi i64 [ 0, %35 ], [ %58, %54 ]
  %39 = shl nuw nsw i64 %38, 1
  %40 = getelementptr inbounds i16, ptr %0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !35
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !47
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %63, label %46

46:                                               ; preds = %37
  %47 = or disjoint i64 %39, 1
  %48 = getelementptr inbounds i16, ptr %0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !35
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds [255 x i8], ptr @_ZN11xercesc_2_76HexBin14hexNumberTableE, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !47
  %53 = icmp eq i8 %52, -1
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = shl i8 %44, 4
  %56 = or i8 %52, %55
  %57 = getelementptr inbounds i8, ptr %32, i64 %38
  store i8 %56, ptr %57, align 1, !tbaa !47
  %58 = add nuw nsw i64 %38, 1
  %59 = icmp eq i64 %58, %36
  br i1 %59, label %60, label %37, !llvm.loop !65

60:                                               ; preds = %54, %25
  store ptr null, ptr %3, align 8, !tbaa !62
  %61 = sext i32 %26 to i64
  %62 = getelementptr inbounds i8, ptr %32, i64 %61
  store i8 0, ptr %62, align 1, !tbaa !47
  br label %63

63:                                               ; preds = %37, %46, %60
  %64 = phi ptr [ %32, %60 ], [ null, %46 ], [ null, %37 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %65

65:                                               ; preds = %63, %13, %2, %5
  %66 = phi ptr [ null, %5 ], [ null, %2 ], [ %64, %63 ], [ null, %13 ]
  ret ptr %66
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIhED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #13
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

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
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"bool", !37, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = distinct !{!46, !40, !41}
!47 = !{!37, !37, i64 0}
!48 = distinct !{!48, !40, !41}
!49 = distinct !{!49, !40, !41}
!50 = distinct !{!50, !40, !41}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !38, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !55, i64 0, !55, i64 8}
!55 = !{!"any pointer", !37, i64 0}
!56 = !{!54, !55, i64 8}
!57 = distinct !{!57, !40, !41}
!58 = !{!"function_entry_count", i64 243874}
!59 = !{!"branch_weights", i32 191815, i32 52059}
!60 = !{!"branch_weights", i32 0, i32 52059}
!61 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!62 = !{!63, !55, i64 0}
!63 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIhEE", !55, i64 0, !55, i64 8}
!64 = !{!63, !55, i64 8}
!65 = distinct !{!65, !40, !41}
