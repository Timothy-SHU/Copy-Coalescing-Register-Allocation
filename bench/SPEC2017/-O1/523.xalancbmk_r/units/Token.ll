; ModuleID = 'Token.cpp'
source_filename = "Token.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::Token" = type { ptr, i16, ptr }
%"class.xercesc_2_7::ModifierToken" = type { %"class.xercesc_2_7::Token", i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_75TokenC2EtPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xercesc_2_75TokenE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  store i16 %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_75TokenD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !48 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_75TokenD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 !prof !50 {
  br label %2

2:                                                ; preds = %65, %54, %1
  %3 = phi i32 [ 1, %1 ], [ %63, %54 ], [ %3, %65 ]
  %4 = phi ptr [ %0, %1 ], [ %62, %54 ], [ %69, %65 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %4, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !42
  switch i16 %6, label %90 [
    i16 1, label %7
    i16 26, label %24
    i16 2, label %24
    i16 3, label %48
    i16 9, label %48
    i16 7, label %91
    i16 8, label %91
    i16 11, label %64
    i16 0, label %64
    i16 4, label %64
    i16 5, label %64
    i16 24, label %65
    i16 6, label %65
    i16 25, label %65
    i16 12, label %91
    i16 10, label %70
    i16 20, label %91
    i16 21, label %91
    i16 22, label %91
    i16 23, label %91
  ], !prof !51

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !52
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %91, label %13, !prof !53

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %21, %13 ], [ 0, %7 ]
  %15 = phi i32 [ %22, %13 ], [ 0, %7 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %15), !prof !54
  %20 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %19)
  %21 = add nsw i32 %20, %14
  %22 = add nuw i32 %15, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %91, label %13, !prof !55, !llvm.loop !56

24:                                               ; preds = %2, %2
  %25 = load ptr, ptr %4, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !59
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %91, label %30, !prof !60

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0), !prof !61
  %35 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %34)
  %36 = icmp eq i32 %28, 1
  br i1 %36, label %91, label %37, !prof !62

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %46, %37 ], [ 1, %30 ]
  %39 = phi i32 [ %45, %37 ], [ %35, %30 ]
  %40 = load ptr, ptr %4, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %38), !prof !63
  %44 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %43)
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 %39)
  %46 = add nuw i32 %38, 1
  %47 = icmp eq i32 %46, %28
  br i1 %47, label %91, label %37, !prof !64, !llvm.loop !65

48:                                               ; preds = %2, %2
  %49 = load ptr, ptr %4, align 8, !tbaa !39
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !66
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %91, !prof !67

54:                                               ; preds = %48
  %55 = load ptr, ptr %4, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 4
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef i32 %57(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !68
  %59 = load ptr, ptr %4, align 8, !tbaa !39
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0), !prof !69
  %63 = mul nsw i32 %3, %58
  br label %2

64:                                               ; preds = %2, %2, %2, %2
  br label %91

65:                                               ; preds = %2, %2, %2
  %66 = load ptr, ptr %4, align 8, !tbaa !39
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0), !prof !70
  br label %2

70:                                               ; preds = %2
  %71 = load ptr, ptr %4, align 8, !tbaa !39
  %72 = getelementptr inbounds ptr, ptr %71, i64 8
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !71
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76, !prof !72

76:                                               ; preds = %70
  %77 = load i16, ptr %74, align 2, !tbaa !73
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %91, label %79, !prof !72

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %81, %79 ], [ %74, %76 ]
  %81 = getelementptr inbounds i16, ptr %80, i64 1
  %82 = load i16, ptr %81, align 2, !tbaa !73
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %79, !prof !74, !llvm.loop !75

84:                                               ; preds = %79
  %85 = ptrtoint ptr %81 to i64
  %86 = ptrtoint ptr %74 to i64
  %87 = sub i64 %85, %86
  %88 = lshr exact i64 %87, 1
  %89 = trunc i64 %88 to i32
  br label %91

90:                                               ; preds = %2
  br label %91

91:                                               ; preds = %37, %13, %30, %7, %48, %24, %2, %2, %2, %2, %2, %2, %84, %76, %70, %2, %90, %64
  %92 = phi i32 [ -1, %90 ], [ 1, %64 ], [ 0, %2 ], [ %89, %84 ], [ 0, %76 ], [ 0, %70 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %24 ], [ 0, %48 ], [ 0, %7 ], [ %35, %30 ], [ %21, %13 ], [ %45, %37 ]
  %93 = mul nsw i32 %3, %92
  ret i32 %93
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 !prof !76 {
  br label %2

2:                                                ; preds = %75, %63, %1
  %3 = phi i32 [ 1, %1 ], [ %72, %63 ], [ %3, %75 ]
  %4 = phi ptr [ %0, %1 ], [ %71, %63 ], [ %79, %75 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %4, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !42
  switch i16 %6, label %101 [
    i16 1, label %7
    i16 26, label %26
    i16 2, label %26
    i16 3, label %57
    i16 9, label %57
    i16 7, label %102
    i16 8, label %102
    i16 0, label %73
    i16 11, label %74
    i16 4, label %74
    i16 5, label %74
    i16 24, label %75
    i16 6, label %75
    i16 25, label %75
    i16 12, label %80
    i16 10, label %81
    i16 20, label %102
    i16 21, label %102
    i16 22, label %102
    i16 23, label %102
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %102, label %13

13:                                               ; preds = %7, %22
  %14 = phi i32 [ %23, %22 ], [ 0, %7 ]
  %15 = phi i32 [ %24, %22 ], [ 0, %7 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %15)
  %20 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %19)
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %102

22:                                               ; preds = %13
  %23 = add nuw nsw i32 %20, %14
  %24 = add nuw i32 %15, 1
  %25 = icmp eq i32 %24, %11
  br i1 %25, label %102, label %13, !llvm.loop !77

26:                                               ; preds = %2, %2
  %27 = load ptr, ptr %4, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %102, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 8, !tbaa !39
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0)
  %37 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %36)
  %38 = icmp sgt i32 %37, 0
  %39 = icmp ne i32 %30, 1
  %40 = and i1 %38, %39
  br i1 %40, label %46, label %102

41:                                               ; preds = %46
  %42 = add nuw i32 %47, 1
  %43 = icmp sgt i32 %56, 0
  %44 = icmp ult i32 %42, %30
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %102, !llvm.loop !78

46:                                               ; preds = %32, %41
  %47 = phi i32 [ %42, %41 ], [ 1, %32 ]
  %48 = phi i32 [ %56, %41 ], [ %37, %32 ]
  %49 = load ptr, ptr %4, align 8, !tbaa !39
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %47)
  %53 = tail call noundef i32 @_ZNK11xercesc_2_75Token12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %52)
  %54 = icmp sgt i32 %53, -1
  %55 = tail call i32 @llvm.smax.i32(i32 %53, i32 %48)
  %56 = select i1 %54, i32 %55, i32 -1
  br i1 %54, label %41, label %102

57:                                               ; preds = %2, %2
  %58 = load ptr, ptr %4, align 8, !tbaa !39
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load ptr, ptr %4, align 8, !tbaa !39
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %68 = load ptr, ptr %4, align 8, !tbaa !39
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0)
  %72 = mul nsw i32 %3, %67
  br label %2

73:                                               ; preds = %2
  br label %102

74:                                               ; preds = %2, %2, %2
  br label %102

75:                                               ; preds = %2, %2, %2
  %76 = load ptr, ptr %4, align 8, !tbaa !39
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0)
  br label %2

80:                                               ; preds = %2
  br label %102

81:                                               ; preds = %2
  %82 = load ptr, ptr %4, align 8, !tbaa !39
  %83 = getelementptr inbounds ptr, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %81
  %88 = load i16, ptr %85, align 2, !tbaa !73
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87, %90
  %91 = phi ptr [ %92, %90 ], [ %85, %87 ]
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %92, align 2, !tbaa !73
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %90, !llvm.loop !75

95:                                               ; preds = %90
  %96 = ptrtoint ptr %92 to i64
  %97 = ptrtoint ptr %85 to i64
  %98 = sub i64 %96, %97
  %99 = lshr exact i64 %98, 1
  %100 = trunc i64 %99 to i32
  br label %102

101:                                              ; preds = %2
  br label %102

102:                                              ; preds = %46, %41, %22, %13, %32, %7, %57, %26, %2, %2, %2, %2, %2, %95, %87, %81, %2, %101, %80, %74, %73
  %103 = phi i32 [ -1, %101 ], [ -1, %80 ], [ 2, %74 ], [ 1, %73 ], [ 0, %2 ], [ %100, %95 ], [ 0, %87 ], [ 0, %81 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %26 ], [ -1, %57 ], [ 0, %7 ], [ %37, %32 ], [ -1, %13 ], [ %23, %22 ], [ %56, %41 ], [ %56, %46 ]
  %104 = mul nsw i32 %3, %103
  ret i32 %104
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !76 {
  br label %5

5:                                                ; preds = %96, %4
  %6 = phi ptr [ %0, %4 ], [ %94, %96 ]
  %7 = phi i32 [ poison, %4 ], [ %97, %96 ]
  %8 = phi i1 [ false, %4 ], [ true, %96 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %6, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !42
  switch i16 %10, label %163 [
    i16 1, label %11
    i16 2, label %38
    i16 26, label %62
    i16 3, label %90
    i16 9, label %90
    i16 11, label %164
    i16 7, label %98
    i16 8, label %98
    i16 0, label %99
    i16 4, label %107
    i16 5, label %120
    i16 24, label %138
    i16 6, label %138
    i16 25, label %148
    i16 12, label %148
    i16 10, label %152
    i16 20, label %162
    i16 21, label %162
    i16 22, label %162
    i16 23, label %162
  ]

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %24, label %164

17:                                               ; preds = %35
  %18 = add nuw nsw i32 %26, 1
  %19 = load ptr, ptr %6, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %164, !llvm.loop !79

24:                                               ; preds = %11, %17
  %25 = phi i32 [ %37, %17 ], [ 0, %11 ]
  %26 = phi i32 [ %18, %17 ], [ 0, %11 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %26)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i1 [ true, %24 ], [ %34, %32 ]
  %37 = phi i32 [ %25, %24 ], [ %33, %32 ]
  br i1 %36, label %17, label %164

38:                                               ; preds = %5
  %39 = load ptr, ptr %6, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %164, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %6, align 8, !tbaa !39
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0)
  %49 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %164, label %51

51:                                               ; preds = %44, %55
  %52 = phi i32 [ %53, %55 ], [ 0, %44 ]
  %53 = add nuw i32 %52, 1
  %54 = icmp eq i32 %53, %42
  br i1 %54, label %164, label %55, !llvm.loop !80

55:                                               ; preds = %51
  %56 = load ptr, ptr %6, align 8, !tbaa !39
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %53)
  %60 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %164, label %51, !llvm.loop !80

62:                                               ; preds = %5
  %63 = load ptr, ptr %6, align 8, !tbaa !39
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0)
  %67 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %68 = load ptr, ptr %6, align 8, !tbaa !39
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %164, label %73

73:                                               ; preds = %62
  %74 = icmp eq i32 %67, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %6, align 8, !tbaa !39
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 1)
  %80 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef %1, i32 noundef %2, ptr noundef %3)
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
  br label %164

90:                                               ; preds = %5, %5
  %91 = load ptr, ptr %6, align 8, !tbaa !39
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0)
  %95 = icmp eq ptr %94, null
  br i1 %95, label %164, label %96

96:                                               ; preds = %90
  %97 = select i1 %8, i32 %7, i32 0
  br label %5

98:                                               ; preds = %5, %5
  br label %164

99:                                               ; preds = %5
  %100 = load ptr, ptr %6, align 8, !tbaa !39
  %101 = getelementptr inbounds ptr, ptr %100, i64 9
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef i32 %102(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %104 = load ptr, ptr %1, align 8, !tbaa !39
  %105 = getelementptr inbounds ptr, ptr %104, i64 12
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %103, i32 noundef %103)
  br label %164

107:                                              ; preds = %5
  %108 = load i32, ptr @_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE, align 4, !tbaa !81
  %109 = and i32 %108, %2
  %110 = icmp eq i32 %109, %108
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef %3)
  %113 = load ptr, ptr %1, align 8, !tbaa !39
  %114 = getelementptr inbounds ptr, ptr %113, i64 13
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %112)
  br label %164

116:                                              ; preds = %107
  %117 = load ptr, ptr %1, align 8, !tbaa !39
  %118 = getelementptr inbounds ptr, ptr %117, i64 13
  %119 = load ptr, ptr %118, align 8
  tail call void %119(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %6)
  br label %164

120:                                              ; preds = %5
  %121 = load i32, ptr @_ZN11xercesc_2_717RegularExpression11IGNORE_CASEE, align 4, !tbaa !81
  %122 = and i32 %121, %2
  %123 = icmp eq i32 %122, %121
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef %3)
  %126 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %6, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !47
  %128 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef %125, ptr noundef %3, ptr noundef %127)
  br label %133

129:                                              ; preds = %120
  %130 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %6, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !47
  %132 = tail call noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = phi ptr [ %128, %124 ], [ %132, %129 ]
  %135 = load ptr, ptr %1, align 8, !tbaa !39
  %136 = getelementptr inbounds ptr, ptr %135, i64 13
  %137 = load ptr, ptr %136, align 8
  tail call void %137(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %134)
  br label %138

138:                                              ; preds = %133, %5, %5
  %139 = load ptr, ptr %6, align 8, !tbaa !39
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0)
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = tail call noundef i32 @_ZN11xercesc_2_75Token21analyzeFirstCharacterEPNS_10RangeTokenEiPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %142, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %146

146:                                              ; preds = %138, %144
  %147 = phi i32 [ %145, %144 ], [ undef, %138 ]
  br i1 %143, label %148, label %164

148:                                              ; preds = %146, %5, %5
  %149 = load ptr, ptr %1, align 8, !tbaa !39
  %150 = getelementptr inbounds ptr, ptr %149, i64 12
  %151 = load ptr, ptr %150, align 8
  tail call void %151(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 0, i32 noundef 1114111)
  br label %164

152:                                              ; preds = %5
  %153 = load ptr, ptr %6, align 8, !tbaa !39
  %154 = getelementptr inbounds ptr, ptr %153, i64 8
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %157 = load i16, ptr %156, align 2, !tbaa !73
  %158 = zext i16 %157 to i32
  %159 = load ptr, ptr %1, align 8, !tbaa !39
  %160 = getelementptr inbounds ptr, ptr %159, i64 12
  %161 = load ptr, ptr %160, align 8
  tail call void %161(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %158, i32 noundef %158)
  br label %164

162:                                              ; preds = %5, %5, %5, %5
  br label %164

163:                                              ; preds = %5
  br label %164

164:                                              ; preds = %55, %51, %35, %17, %44, %11, %99, %90, %5, %146, %111, %116, %81, %62, %38, %163, %162, %152, %148, %98
  %165 = phi i32 [ 0, %163 ], [ 0, %162 ], [ 1, %152 ], [ 2, %148 ], [ %147, %146 ], [ 0, %98 ], [ 0, %38 ], [ %89, %81 ], [ 0, %62 ], [ 1, %116 ], [ 1, %111 ], [ 2, %5 ], [ 0, %90 ], [ 1, %99 ], [ 0, %11 ], [ 2, %44 ], [ %37, %17 ], [ %37, %35 ], [ 0, %51 ], [ 0, %55 ]
  %166 = select i1 %8, i32 %7, i32 %165
  ret i32 %166
}

declare noundef ptr @_ZN11xercesc_2_710RangeToken23getCaseInsensitiveTokenEPNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_710RangeToken16complementRangesEPS0_PNS_12TokenFactoryEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 !prof !76 {
  br label %4

4:                                                ; preds = %47, %16, %3
  %5 = phi ptr [ %0, %3 ], [ %20, %16 ], [ %58, %47 ]
  %6 = phi i32 [ %1, %3 ], [ %6, %16 ], [ %54, %47 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %5, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !42
  switch i16 %8, label %59 [
    i16 25, label %47
    i16 10, label %15
    i16 1, label %9
    i16 6, label %16
    i16 24, label %16
  ]

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %24, label %21

15:                                               ; preds = %4
  store i32 %6, ptr %2, align 4, !tbaa !81
  br label %59

16:                                               ; preds = %4, %4
  %17 = load ptr, ptr %5, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0)
  br label %4

21:                                               ; preds = %38, %9
  %22 = phi ptr [ null, %9 ], [ %39, %38 ]
  %23 = phi i32 [ 0, %9 ], [ %40, %38 ]
  store i32 %23, ptr %2, align 4, !tbaa !81
  br label %59

24:                                               ; preds = %9, %38
  %25 = phi i32 [ %41, %38 ], [ 0, %9 ]
  %26 = phi i32 [ %40, %38 ], [ 0, %9 ]
  %27 = phi ptr [ %39, %38 ], [ null, %9 ]
  %28 = load ptr, ptr %5, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %25)
  %32 = tail call noundef ptr @_ZN11xercesc_2_75Token15findFixedStringEiRi(ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %33 = icmp eq ptr %27, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_75Token13isShorterThanEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef %32)
  br i1 %35, label %36, label %38

36:                                               ; preds = %34, %24
  %37 = load i32, ptr %2, align 4, !tbaa !81
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %32, %36 ], [ %27, %34 ]
  %40 = phi i32 [ %37, %36 ], [ %26, %34 ]
  %41 = add nuw nsw i32 %25, 1
  %42 = load ptr, ptr %5, align 8, !tbaa !39
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %24, label %21, !llvm.loop !83

47:                                               ; preds = %4
  %48 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %5, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !84
  %50 = or i32 %49, %6
  %51 = getelementptr inbounds %"class.xercesc_2_7::ModifierToken", ptr %5, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !86
  %53 = xor i32 %52, -1
  %54 = and i32 %50, %53
  %55 = load ptr, ptr %5, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0)
  br label %4

59:                                               ; preds = %4, %21, %15
  %60 = phi ptr [ %22, %21 ], [ %5, %15 ], [ null, %4 ]
  ret ptr %60
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_75Token13isShorterThanEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !76 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !42
  %7 = icmp eq i16 %6, 10
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i16 %10, 10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8, %4
  %13 = load ptr, ptr %0, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = load i16, ptr %16, align 2, !tbaa !73
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %23, %21 ], [ %16, %18 ]
  %23 = getelementptr inbounds i16, ptr %22, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !73
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %21, !llvm.loop !75

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i64
  %28 = ptrtoint ptr %16 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %12, %18, %26
  %33 = phi i32 [ %31, %26 ], [ 0, %18 ], [ 0, %12 ]
  %34 = load ptr, ptr %1, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  %40 = load i16, ptr %37, align 2, !tbaa !73
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %44, %42 ], [ %37, %39 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !73
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !llvm.loop !75

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %37 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 1
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %32, %39, %47
  %54 = phi i32 [ %52, %47 ], [ 0, %39 ], [ 0, %32 ]
  %55 = icmp slt i32 %33, %54
  br label %56

56:                                               ; preds = %8, %2, %53
  %57 = phi i1 [ %55, %53 ], [ false, %2 ], [ false, %8 ]
  ret i1 %57
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token8getChildEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !76 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !87 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMinEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token6getMaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token10getNoParenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token14getReferenceNoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_75Token9getStringEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75Token7getCharEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !76 {
  ret i32 -1
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMinEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token6setMaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addRangeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 294, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #9
  resume { ptr, i32 } %9
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token11mergeRangesEPKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token10sortRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #9
  resume { ptr, i32 } %7
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token13compactRangesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 294, ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #9
  resume { ptr, i32 } %7
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token14subtractRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token15intersectRangesEPNS_10RangeTokenE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 294, ptr noundef %5)
          to label %6 unwind label %7

6:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_75Token8addChildEPS0_PNS_12TokenFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::Token", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 294, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #9
  resume { ptr, i32 } %9
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !76 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_75TokenD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!36 = !{ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, ptr @_ZNK11xercesc_2_75Token12getMinLengthEv, i64 74}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 141}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSN11xercesc_2_75TokenE", !44, i64 8, !46, i64 16}
!44 = !{!"short", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!"any pointer", !45, i64 0}
!47 = !{!43, !46, i64 16}
!48 = !{!"function_entry_count", i64 138}
!49 = !{!"function_entry_count", i64 3}
!50 = !{!"function_entry_count", i64 98}
!51 = !{!"branch_weights", i32 0, i32 15, i32 0, i32 3, i32 19, i32 0, i32 1, i32 0, i32 12, i32 13, i32 25, i32 0, i32 0, i32 2, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0}
!52 = !{!"VP", i32 0, i64 15, i64 -1638431200412282154, i64 15}
!53 = !{!"branch_weights", i32 1, i32 239}
!54 = !{!"VP", i32 0, i64 60, i64 -9175986858441419518, i64 60}
!55 = !{!"branch_weights", i32 239, i32 721}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"VP", i32 0, i64 3, i64 -1638431200412282154, i64 3}
!60 = !{!"branch_weights", i32 0, i32 3}
!61 = !{!"VP", i32 0, i64 3, i64 -9175986858441419518, i64 3}
!62 = !{!"branch_weights", i32 1, i32 191}
!63 = !{!"VP", i32 0, i64 4, i64 -9175986858441419518, i64 4}
!64 = !{!"branch_weights", i32 191, i32 65}
!65 = distinct !{!65, !57, !58}
!66 = !{!"VP", i32 0, i64 19, i64 7238335119775253437, i64 19}
!67 = !{!"branch_weights", i32 8, i32 11}
!68 = !{!"VP", i32 0, i64 8, i64 7238335119775253437, i64 8}
!69 = !{!"VP", i32 0, i64 8, i64 -9086227106648712667, i64 8}
!70 = !{!"VP", i32 0, i64 2, i64 1978819292038497412, i64 2}
!71 = !{!"VP", i32 0, i64 8, i64 -3586975816051538851, i64 8}
!72 = !{!"branch_weights", i32 0, i32 8}
!73 = !{!44, !44, i64 0}
!74 = !{!"branch_weights", i32 8, i32 41}
!75 = distinct !{!75, !57, !58}
!76 = !{!"function_entry_count", i64 0}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = distinct !{!80, !57, !58}
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !45, i64 0}
!83 = distinct !{!83, !57, !58}
!84 = !{!85, !82, i64 24}
!85 = !{!"_ZTSN11xercesc_2_713ModifierTokenE", !43, i64 0, !82, i64 24, !82, i64 28, !46, i64 32}
!86 = !{!85, !82, i64 28}
!87 = !{!"function_entry_count", i64 79}
!88 = !{!89, !46, i64 40}
!89 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !90, i64 8, !46, i64 16, !82, i64 24, !46, i64 32, !46, i64 40}
!90 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
