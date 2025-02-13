; ModuleID = 'Token.cpp'
source_filename = "Token.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::ModifierToken" = type { %"class.xercesc_2_7::Token", i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_75Token5isSetEij = comdat any

$_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt = comdat any

$_ZNK11xercesc_2_713ModifierToken10getOptionsEv = comdat any

$_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv = comdat any

$_ZNK11xercesc_2_75Token12getTokenTypeEv = comdat any

$_ZNK11xercesc_2_75Token8getChildEi = comdat any

$_ZNK11xercesc_2_75Token4sizeEv = comdat any

$_ZNK11xercesc_2_75Token6getMinEv = comdat any

$_ZNK11xercesc_2_75Token6getMaxEv = comdat any

$_ZNK11xercesc_2_75Token10getNoParenEv = comdat any

$_ZNK11xercesc_2_75Token14getReferenceNoEv = comdat any

$_ZNK11xercesc_2_75Token9getStringEv = comdat any

$_ZNK11xercesc_2_75Token7getCharEv = comdat any

$_ZN11xercesc_2_75Token6setMinEi = comdat any

$_ZN11xercesc_2_75Token6setMaxEi = comdat any

$_ZN11xercesc_2_75Token8addRangeEii = comdat any

$_ZN11xercesc_2_75Token11mergeRangesEPKS0_ = comdat any

$_ZN11xercesc_2_75Token10sortRangesEv = comdat any

$_ZN11xercesc_2_75Token13compactRangesEv = comdat any

$_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE = comdat any

$_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE = comdat any

$_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZN11xercesc_2_75Token9UTF16_MAXE = dso_local local_unnamed_addr constant i32 1114111, align 4
@_ZN11xercesc_2_75Token11FC_CONTINUEE = dso_local local_unnamed_addr constant i16 0, align 2
@_ZN11xercesc_2_75Token11FC_TERMINALE = dso_local local_unnamed_addr constant i16 1, align 2
@_ZN11xercesc_2_75Token6FC_ANYE = dso_local local_unnamed_addr constant i16 2, align 2
@_ZTVN11xercesc_2_75TokenE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75TokenE, ptr @_ZN11xercesc_2_75TokenD2Ev, ptr @_ZN11xercesc_2_75TokenD0Ev, ptr @_ZNK11xercesc_2_75Token8getChildEi, ptr @_ZNK11xercesc_2_75Token4sizeEv, ptr @_ZNK11xercesc_2_75Token6getMinEv, ptr @_ZNK11xercesc_2_75Token6getMaxEv, ptr @_ZNK11xercesc_2_75Token10getNoParenEv, ptr @_ZNK11xercesc_2_75Token14getReferenceNoEv, ptr @_ZNK11xercesc_2_75Token9getStringEv, ptr @_ZNK11xercesc_2_75Token7getCharEv, ptr @_ZN11xercesc_2_75Token6setMinEi, ptr @_ZN11xercesc_2_75Token6setMaxEi, ptr @_ZN11xercesc_2_75Token8addRangeEii, ptr @_ZN11xercesc_2_75Token11mergeRangesEPKS0_, ptr @_ZN11xercesc_2_75Token10sortRangesEv, ptr @_ZN11xercesc_2_75Token13compactRangesEv, ptr @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE, ptr @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE, ptr @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE] }, align 8
@_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE = external local_unnamed_addr constant i32, align 4
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_75TokenE = dso_local constant [22 x i8] c"N11xercesc_2_75TokenE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_75TokenE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_75TokenE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"./xercesc/util/regx/Token.hpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_75TokenC1EtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr), ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE
@_ZN11xercesc_2_75TokenD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_75TokenD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #6
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_75TokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !49 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_75TokenD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !39 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75TokenD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 !prof !50 {
  br label %2

2:                                                ; preds = %56, %1
  %3 = phi i32 [ %65, %56 ], [ 1, %1 ]
  %4 = phi ptr [ %64, %56 ], [ %0, %1 ]
  br label %5

5:                                                ; preds = %2, %66
  %6 = phi ptr [ %70, %66 ], [ %4, %2 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !43
  switch i16 %8, label %79 [
    i16 1, label %9
    i16 26, label %26
    i16 2, label %26
    i16 3, label %50
    i16 9, label %50
    i16 7, label %77
    i16 8, label %77
    i16 11, label %78
    i16 0, label %78
    i16 4, label %78
    i16 5, label %78
    i16 24, label %66
    i16 6, label %66
    i16 25, label %66
    i16 12, label %77
    i16 10, label %71
    i16 20, label %77
    i16 21, label %77
    i16 22, label %77
    i16 23, label %77
  ], !prof !51

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !40
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %79, label %15, !prof !52

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %23, %15 ], [ 0, %9 ]
  %17 = phi i32 [ %24, %15 ], [ 0, %9 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %17) #6
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #6
  %23 = add nsw i32 %22, %16
  %24 = add nuw i32 %17, 1
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %79, label %15, !prof !53, !llvm.loop !54

26:                                               ; preds = %5, %5
  %27 = load ptr, ptr %6, align 8, !tbaa !40
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32, !prof !56

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !40
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  %37 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %36) #6
  %38 = icmp eq i32 %30, 1
  br i1 %38, label %79, label %39, !prof !52

39:                                               ; preds = %32, %39
  %40 = phi i32 [ %48, %39 ], [ 1, %32 ]
  %41 = phi i32 [ %47, %39 ], [ %37, %32 ]
  %42 = load ptr, ptr %6, align 8, !tbaa !40
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %40) #6
  %46 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %45) #6
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %41)
  %48 = add nuw i32 %40, 1
  %49 = icmp eq i32 %48, %30
  br i1 %49, label %79, label %39, !prof !57, !llvm.loop !58

50:                                               ; preds = %5, %5
  %51 = load ptr, ptr %6, align 8, !tbaa !40
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef i32 %53(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %79, !prof !59

56:                                               ; preds = %50
  %57 = load ptr, ptr %6, align 8, !tbaa !40
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %61 = load ptr, ptr %6, align 8, !tbaa !40
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  %65 = mul nsw i32 %60, %3
  br label %2

66:                                               ; preds = %5, %5, %5
  %67 = load ptr, ptr %6, align 8, !tbaa !40
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  br label %5

71:                                               ; preds = %5
  %72 = load ptr, ptr %6, align 8, !tbaa !40
  %73 = getelementptr inbounds ptr, ptr %72, i64 8
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %76 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %75) #6
  br label %79

77:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  br label %79

78:                                               ; preds = %5, %5, %5, %5
  br label %79

79:                                               ; preds = %50, %39, %15, %5, %78, %77, %32, %9, %26, %71
  %80 = phi i32 [ %76, %71 ], [ 0, %26 ], [ 0, %9 ], [ %37, %32 ], [ 0, %77 ], [ 1, %78 ], [ -1, %5 ], [ %23, %15 ], [ %47, %39 ], [ 0, %50 ]
  %81 = mul nsw i32 %80, %3
  ret i32 %81
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !61

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !62
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !63

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !62
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !64, !llvm.loop !65

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 !prof !66 {
  br label %2

2:                                                ; preds = %62, %1
  %3 = phi i32 [ %71, %62 ], [ 1, %1 ]
  %4 = phi ptr [ %70, %62 ], [ %0, %1 ]
  br label %5

5:                                                ; preds = %2, %72
  %6 = phi ptr [ %76, %72 ], [ %4, %2 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !43
  switch i16 %8, label %84 [
    i16 1, label %9
    i16 26, label %28
    i16 2, label %28
    i16 3, label %56
    i16 9, label %56
    i16 7, label %85
    i16 8, label %85
    i16 0, label %86
    i16 11, label %83
    i16 4, label %83
    i16 5, label %83
    i16 24, label %72
    i16 6, label %72
    i16 25, label %72
    i16 23, label %85
    i16 10, label %77
    i16 20, label %85
    i16 21, label %85
    i16 22, label %85
  ]

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !40
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %86, label %15

15:                                               ; preds = %9, %24
  %16 = phi i32 [ %25, %24 ], [ 0, %9 ]
  %17 = phi i32 [ %26, %24 ], [ 0, %9 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %17) #6
  %22 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #6
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %86

24:                                               ; preds = %15
  %25 = add nuw nsw i32 %22, %16
  %26 = add nuw i32 %17, 1
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %86, label %15, !llvm.loop !67

28:                                               ; preds = %5, %5
  %29 = load ptr, ptr %6, align 8, !tbaa !40
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %6, align 8, !tbaa !40
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  %39 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %38) #6
  %40 = icmp sgt i32 %39, 0
  %41 = icmp ne i32 %32, 1
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %34, %52
  %44 = phi i32 [ %54, %52 ], [ 1, %34 ]
  %45 = phi i32 [ %53, %52 ], [ %39, %34 ]
  %46 = load ptr, ptr %6, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %44) #6
  %50 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %49) #6
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %86

52:                                               ; preds = %43
  %53 = tail call i32 @llvm.smax.i32(i32 %50, i32 %45)
  %54 = add nuw i32 %44, 1
  %55 = icmp ult i32 %54, %32
  br i1 %55, label %43, label %86, !llvm.loop !68

56:                                               ; preds = %5, %5
  %57 = load ptr, ptr %6, align 8, !tbaa !40
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load ptr, ptr %6, align 8, !tbaa !40
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef i32 %65(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %67 = load ptr, ptr %6, align 8, !tbaa !40
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  %71 = mul nsw i32 %66, %3
  br label %2

72:                                               ; preds = %5, %5, %5
  %73 = load ptr, ptr %6, align 8, !tbaa !40
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #6
  br label %5

77:                                               ; preds = %5
  %78 = load ptr, ptr %6, align 8, !tbaa !40
  %79 = getelementptr inbounds ptr, ptr %78, i64 8
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(24) %6) #6
  %82 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %81) #6
  br label %86

83:                                               ; preds = %5, %5, %5
  br label %86

84:                                               ; preds = %5
  br label %86

85:                                               ; preds = %5, %5, %5, %5, %5, %5
  br label %86

86:                                               ; preds = %56, %43, %52, %24, %15, %5, %85, %84, %83, %34, %9, %28, %77
  %87 = phi i32 [ %82, %77 ], [ 0, %28 ], [ 0, %9 ], [ %39, %34 ], [ 2, %83 ], [ -1, %84 ], [ 0, %85 ], [ 1, %5 ], [ %25, %24 ], [ -1, %15 ], [ -1, %43 ], [ %53, %52 ], [ -1, %56 ]
  %88 = mul nsw i32 %87, %3
  ret i32 %88
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !66 {
  %5 = load i32, ptr @_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE, align 4
  br label %6

6:                                                ; preds = %90, %4
  %7 = phi ptr [ %0, %4 ], [ %94, %90 ]
  %8 = phi i1 [ false, %4 ], [ true, %90 ]
  br label %9

9:                                                ; preds = %6, %134
  %10 = phi ptr [ %138, %134 ], [ %7, %6 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %10, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !43
  switch i16 %12, label %157 [
    i16 1, label %13
    i16 2, label %36
    i16 26, label %62
    i16 3, label %90
    i16 9, label %90
    i16 11, label %156
    i16 10, label %144
    i16 12, label %140
    i16 0, label %96
    i16 4, label %107
    i16 5, label %118
    i16 24, label %134
    i16 6, label %134
    i16 25, label %140
  ]

13:                                               ; preds = %9
  %14 = load ptr, ptr %10, align 8, !tbaa !40
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %157

19:                                               ; preds = %13, %29
  %20 = phi i32 [ %30, %29 ], [ 0, %13 ]
  %21 = load ptr, ptr %10, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %20) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %157

29:                                               ; preds = %19, %26
  %30 = add nuw nsw i32 %20, 1
  %31 = load ptr, ptr %10, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %19, label %157, !llvm.loop !69

36:                                               ; preds = %9
  %37 = load ptr, ptr %10, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %157, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %10, align 8, !tbaa !40
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #6
  %47 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %157, label %49

49:                                               ; preds = %42, %53
  %50 = phi i32 [ %51, %53 ], [ 0, %42 ]
  %51 = add nuw i32 %50, 1
  %52 = icmp eq i32 %51, %40
  br i1 %52, label %61, label %53, !llvm.loop !70

53:                                               ; preds = %49
  %54 = load ptr, ptr %10, align 8, !tbaa !40
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %51) #6
  %58 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %49, !llvm.loop !70

60:                                               ; preds = %53
  br i1 %48, label %157, label %61

61:                                               ; preds = %49, %60
  br label %157

62:                                               ; preds = %9
  %63 = load ptr, ptr %10, align 8, !tbaa !40
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #6
  %67 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  %68 = load ptr, ptr %10, align 8, !tbaa !40
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %157, label %73

73:                                               ; preds = %62
  %74 = icmp eq i32 %67, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %10, align 8, !tbaa !40
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1) #6
  %80 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  br label %81

81:                                               ; preds = %75, %73
  %82 = phi i32 [ %80, %75 ], [ undef, %73 ]
  %83 = icmp eq i32 %82, 2
  %84 = or i1 %74, %83
  %85 = icmp ne i32 %67, 0
  %86 = icmp ne i32 %82, 0
  %87 = and i1 %85, %86
  %88 = zext i1 %87 to i32
  %89 = select i1 %84, i32 2, i32 %88
  br label %157

90:                                               ; preds = %9, %9
  %91 = load ptr, ptr %10, align 8, !tbaa !40
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %157, label %6

96:                                               ; preds = %9
  %97 = load ptr, ptr %10, align 8, !tbaa !40
  %98 = getelementptr inbounds ptr, ptr %97, i64 9
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef i32 %99(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %101 = load ptr, ptr %1, align 8, !tbaa !40
  %102 = getelementptr inbounds ptr, ptr %101, i64 12
  %103 = load ptr, ptr %102, align 8
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %100, i32 noundef %100) #6
  %104 = icmp slt i32 %100, 4096
  br i1 %104, label %105, label %157

105:                                              ; preds = %96
  %106 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token5isSetEij(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %2, i32 noundef %5) #6
  br label %157

107:                                              ; preds = %9
  %108 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token5isSetEij(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %2, i32 noundef %5) #6
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef %3) #6
  %111 = load ptr, ptr %1, align 8, !tbaa !40
  %112 = getelementptr inbounds ptr, ptr %111, i64 13
  %113 = load ptr, ptr %112, align 8
  tail call void %113(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %110) #6
  br label %157

114:                                              ; preds = %107
  %115 = load ptr, ptr %1, align 8, !tbaa !40
  %116 = getelementptr inbounds ptr, ptr %115, i64 13
  %117 = load ptr, ptr %116, align 8
  tail call void %117(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %10) #6
  br label %157

118:                                              ; preds = %9
  %119 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token5isSetEij(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %2, i32 noundef %5) #6
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef %3) #6
  %122 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %10, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !48
  %124 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef %121, ptr noundef %3, ptr noundef %123) #6
  br label %129

125:                                              ; preds = %118
  %126 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %10, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  %128 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %10, ptr noundef %3, ptr noundef %127) #6
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi ptr [ %124, %120 ], [ %128, %125 ]
  %131 = load ptr, ptr %1, align 8, !tbaa !40
  %132 = getelementptr inbounds ptr, ptr %131, i64 13
  %133 = load ptr, ptr %132, align 8
  tail call void %133(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %130) #6
  br label %134

134:                                              ; preds = %129, %9, %9
  %135 = load ptr, ptr %10, align 8, !tbaa !40
  %136 = getelementptr inbounds ptr, ptr %135, i64 2
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #6
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %9

140:                                              ; preds = %9, %134, %9
  %141 = load ptr, ptr %1, align 8, !tbaa !40
  %142 = getelementptr inbounds ptr, ptr %141, i64 12
  %143 = load ptr, ptr %142, align 8
  tail call void %143(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 0, i32 noundef 1114111) #6
  br label %157

144:                                              ; preds = %9
  %145 = load ptr, ptr %10, align 8, !tbaa !40
  %146 = getelementptr inbounds ptr, ptr %145, i64 8
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(24) %10) #6
  %149 = load i16, ptr %148, align 2, !tbaa !62
  %150 = zext i16 %149 to i32
  %151 = tail call noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt(i16 noundef zeroext %149) #6
  %152 = load ptr, ptr %1, align 8, !tbaa !40
  %153 = getelementptr inbounds ptr, ptr %152, i64 12
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %150, i32 noundef %150) #6
  %155 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token5isSetEij(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %2, i32 noundef %5) #6
  br label %157

156:                                              ; preds = %9
  br label %157

157:                                              ; preds = %90, %29, %26, %9, %156, %42, %61, %60, %13, %109, %114, %96, %105, %81, %62, %36, %144, %140
  %158 = phi i32 [ 1, %144 ], [ 2, %140 ], [ 0, %36 ], [ %89, %81 ], [ 0, %62 ], [ 1, %105 ], [ 1, %96 ], [ 1, %114 ], [ 1, %109 ], [ 0, %13 ], [ 0, %61 ], [ 2, %60 ], [ 2, %42 ], [ 2, %156 ], [ 0, %9 ], [ 0, %29 ], [ %27, %26 ], [ 0, %90 ]
  %159 = select i1 %8, i32 0, i32 %158
  ret i32 %159
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_75Token5isSetEij(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %4 = and i32 %2, %1
  %5 = icmp eq i32 %4, %2
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_78RegxUtil15isHighSurrogateEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !71 {
  %2 = and i16 %0, -1024
  %3 = icmp eq i16 %2, -10240
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 !prof !66 {
  br label %4

4:                                                ; preds = %45, %3
  %5 = phi ptr [ %54, %45 ], [ %0, %3 ]
  %6 = phi i32 [ %50, %45 ], [ %1, %3 ]
  br label %7

7:                                                ; preds = %4, %17
  %8 = phi ptr [ %21, %17 ], [ %5, %4 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %8, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !43
  switch i16 %10, label %58 [
    i16 25, label %45
    i16 10, label %55
    i16 1, label %11
    i16 6, label %17
    i16 24, label %17
  ]

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 8, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %22, label %55

17:                                               ; preds = %7, %7
  %18 = load ptr, ptr %8, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0) #6
  br label %7

22:                                               ; preds = %11, %36
  %23 = phi i32 [ %39, %36 ], [ 0, %11 ]
  %24 = phi i32 [ %38, %36 ], [ 0, %11 ]
  %25 = phi ptr [ %37, %36 ], [ null, %11 ]
  %26 = load ptr, ptr %8, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %23) #6
  %30 = tail call noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #6
  %31 = icmp eq ptr %25, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token13isShorterThanEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef %30) #6
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %22
  %35 = load i32, ptr %2, align 4, !tbaa !72
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %30, %34 ], [ %25, %32 ]
  %38 = phi i32 [ %35, %34 ], [ %24, %32 ]
  %39 = add nuw nsw i32 %23, 1
  %40 = load ptr, ptr %8, align 8, !tbaa !40
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %22, label %55, !llvm.loop !74

45:                                               ; preds = %7
  %46 = tail call noundef i32 @_ZNK11xercesc_2_713ModifierToken10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #6
  %47 = or i32 %46, %6
  %48 = tail call noundef i32 @_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #6
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load ptr, ptr %8, align 8, !tbaa !40
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0) #6
  br label %4

55:                                               ; preds = %7, %36, %11
  %56 = phi i32 [ 0, %11 ], [ %38, %36 ], [ %6, %7 ]
  %57 = phi ptr [ null, %11 ], [ %37, %36 ], [ %8, %7 ]
  store i32 %56, ptr %2, align 4, !tbaa !72
  br label %58

58:                                               ; preds = %7, %55
  %59 = phi ptr [ %57, %55 ], [ null, %7 ]
  ret ptr %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_75Token13isShorterThanEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !66 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  %6 = icmp eq i16 %5, 10
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #6
  %9 = icmp eq i16 %8, 10
  br i1 %9, label %10, label %22

10:                                               ; preds = %7, %4
  %11 = load ptr, ptr %0, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %0) #6
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %14) #6
  %16 = load ptr, ptr %1, align 8, !tbaa !40
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %1) #6
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %19) #6
  %21 = icmp slt i32 %15, %20
  br label %22

22:                                               ; preds = %7, %2, %10
  %23 = phi i1 [ %21, %10 ], [ false, %2 ], [ false, %7 ]
  ret i1 %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ModifierToken10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !75
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ModifierToken14getOptionsMaskEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !77
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK11xercesc_2_75Token12getTokenTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !43
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token8getChildEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !79 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addRangeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 294, ptr noundef %6) #6
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #8
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token11mergeRangesEPKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 294, ptr noundef %5) #6
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token10sortRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 294, ptr noundef %4) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token13compactRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 294, ptr noundef %4) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 294, ptr noundef %5) #6
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 294, ptr noundef %5) #6
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 294, ptr noundef %6) #6
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #8
  resume { ptr, i32 } %9
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !66 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 141}
!36 = !{ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 66}
!37 = !{ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 8}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 141}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !45, i64 8}
!44 = !{!"_ZTSN11xercesc_2_75TokenE", !45, i64 8, !47, i64 16}
!45 = !{!"short", !46, i64 0}
!46 = !{!"omnipotent char", !42, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!44, !47, i64 16}
!49 = !{!"function_entry_count", i64 5836268}
!50 = !{!"function_entry_count", i64 98}
!51 = !{!"branch_weights", i32 1, i32 16, i32 1, i32 4, i32 20, i32 1, i32 2, i32 1, i32 13, i32 14, i32 26, i32 1, i32 1, i32 3, i32 1, i32 1, i32 9, i32 1, i32 1, i32 1, i32 1}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = !{!"branch_weights", i32 127, i32 361}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"branch_weights", i32 1, i32 4}
!57 = !{!"branch_weights", i32 127, i32 33}
!58 = distinct !{!58, !55}
!59 = !{!"branch_weights", i32 9, i32 12}
!60 = !{!"function_entry_count", i64 2453164456}
!61 = !{!"branch_weights", i32 1, i32 -1841802839}
!62 = !{!45, !45, i64 0}
!63 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!64 = !{!"branch_weights", i32 408669070, i32 -279908794}
!65 = distinct !{!65, !55}
!66 = !{!"function_entry_count", i64 0}
!67 = distinct !{!67, !55}
!68 = distinct !{!68, !55}
!69 = distinct !{!69, !55}
!70 = distinct !{!70, !55}
!71 = !{!"function_entry_count", i64 5495384}
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !46, i64 0}
!74 = distinct !{!74, !55}
!75 = !{!76, !73, i64 24}
!76 = !{!"_ZTSN11xercesc_2_713ModifierTokenE", !44, i64 0, !73, i64 24, !73, i64 28, !47, i64 32}
!77 = !{!76, !73, i64 28}
!78 = !{!"function_entry_count", i64 1301478}
!79 = !{!"function_entry_count", i64 79}
!80 = !{!81, !47, i64 40}
!81 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !82, i64 8, !47, i64 16, !73, i64 24, !47, i64 32, !47, i64 40}
!82 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
