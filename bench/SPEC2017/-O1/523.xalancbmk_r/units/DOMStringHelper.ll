; ModuleID = 'DOMStringHelper.cpp'
source_filename = "DOMStringHelper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1020WideStringToIntegralIiEET_PKtS1_ = comdat any

$_ZN11xalanc_1_1020WideStringToIntegralImEET_PKtS1_ = comdat any

$_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringIlEEvT_RNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringImEEvT_RNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021ScalarToDecimalStringImEEvT_RNS_14XalanDOMStringE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@_ZN11xalanc_1_10L12theNaNStringE = internal global [4 x i16] [i16 78, i16 97, i16 78, i16 0], align 2
@_ZN11xalanc_1_10L25thePositiveInfinityStringE = internal constant [9 x i16] [i16 73, i16 110, i16 102, i16 105, i16 110, i16 105, i16 116, i16 121, i16 0], align 16
@_ZN11xalanc_1_10L25theNegativeInfinityStringE = internal constant [10 x i16] [i16 45, i16 73, i16 110, i16 102, i16 105, i16 110, i16 105, i16 116, i16 121, i16 0], align 16
@_ZN11xalanc_1_10L13theZeroStringE = internal constant [2 x i16] [i16 48, i16 0], align 2
@_ZN11xalanc_1_10L16thePrintfStringsE = internal unnamed_addr constant [27 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr null], align 16
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%.10f\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.11f\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.12f\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.13f\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%.14f\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.15f\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.16f\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%.17f\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.18f\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%.19f\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%.20f\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%.21f\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%.22f\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%.23f\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.24f\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%.25f\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%.26f\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%.27f\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%.28f\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%.29f\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%.30f\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%.31f\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%.32f\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%.33f\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%.34f\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%.35f\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMStringHelper.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !58 {
  %5 = icmp ult i32 %1, %3
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi i32 [ 0, %6 ], [ %34, %29 ]
  %10 = phi i8 [ 0, %6 ], [ %32, %29 ]
  %11 = icmp uge i32 %9, %1
  %12 = sub i32 %1, %9
  %13 = icmp ult i32 %12, %3
  %14 = or i1 %11, %13
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  br i1 %7, label %29, label %16

16:                                               ; preds = %15, %26
  %17 = phi i32 [ %27, %26 ], [ 0, %15 ]
  %18 = add i32 %17, %9
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !59
  %22 = zext i32 %17 to i64
  %23 = getelementptr inbounds i16, ptr %2, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !59
  %25 = icmp eq i16 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = add nuw i32 %17, 1
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %16, !llvm.loop !63

29:                                               ; preds = %16, %26, %15
  %30 = phi i32 [ 0, %15 ], [ %17, %16 ], [ %3, %26 ]
  %31 = icmp ne i32 %30, %3
  %32 = select i1 %31, i8 %10, i8 1
  %33 = zext i1 %31 to i32
  %34 = add i32 %9, %33
  %35 = and i8 %32, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %8, label %37, !llvm.loop !66

37:                                               ; preds = %29, %8, %4
  %38 = phi i32 [ %1, %4 ], [ %1, %8 ], [ %34, %29 ]
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_107indexOfEPKtS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !58 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %6, label %8, label %3, !prof !67, !llvm.loop !68

8:                                                ; preds = %3
  %9 = ptrtoint ptr %4 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 1
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %19, %13 ], [ 0, %8 ]
  %15 = phi ptr [ %18, %13 ], [ %1, %8 ]
  %16 = load i16, ptr %15, align 2, !tbaa !59
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  %19 = add i32 %14, 1
  br i1 %17, label %20, label %13, !prof !69, !llvm.loop !68

20:                                               ; preds = %13
  %21 = trunc i64 %12 to i32
  %22 = ptrtoint ptr %15 to i64
  %23 = ptrtoint ptr %1 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %59, label %28, !prof !70

28:                                               ; preds = %20
  %29 = icmp eq i32 %26, 0
  br label %30

30:                                               ; preds = %28, %51
  %31 = phi i32 [ 0, %28 ], [ %56, %51 ]
  %32 = phi i8 [ 0, %28 ], [ %54, %51 ]
  %33 = icmp uge i32 %31, %21
  %34 = sub i32 %21, %31
  %35 = icmp ult i32 %34, %26
  %36 = or i1 %33, %35
  br i1 %36, label %59, label %37, !prof !71

37:                                               ; preds = %30
  br i1 %29, label %51, label %38, !prof !72

38:                                               ; preds = %37, %48
  %39 = phi i32 [ %49, %48 ], [ 0, %37 ]
  %40 = add i32 %39, %31
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !59
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !59
  %47 = icmp eq i16 %43, %46
  br i1 %47, label %48, label %51, !prof !73

48:                                               ; preds = %38
  %49 = add nuw i32 %39, 1
  %50 = icmp eq i32 %49, %14
  br i1 %50, label %51, label %38, !prof !74, !llvm.loop !63

51:                                               ; preds = %48, %38, %37
  %52 = phi i32 [ 0, %37 ], [ %14, %48 ], [ %39, %38 ]
  %53 = icmp ne i32 %52, %26
  %54 = select i1 %53, i8 %32, i8 1, !prof !75
  %55 = zext i1 %53 to i32
  %56 = add i32 %31, %55
  %57 = and i8 %54, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %30, label %59, !prof !75, !llvm.loop !66

59:                                               ; preds = %51, %30, %20
  %60 = phi i32 [ %21, %20 ], [ %21, %30 ], [ %56, %51 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) local_unnamed_addr #5 !prof !76 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %82, label %6, !prof !70

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %82, label %10, !prof !70

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !83
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15, !prof !70
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !83
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %21, %10
  %22 = phi ptr [ %16, %10 ], [ %25, %21 ]
  %23 = load i16, ptr %22, align 2, !tbaa !59
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  br i1 %24, label %26, label %21, !prof !67, !llvm.loop !68

26:                                               ; preds = %21
  %27 = icmp eq i64 %18, 0
  %28 = select i1 %27, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20, !prof !70
  %29 = ptrtoint ptr %22 to i64
  %30 = ptrtoint ptr %16 to i64
  %31 = sub i64 %29, %30
  br label %32

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %38, %32 ], [ 0, %26 ]
  %34 = phi ptr [ %37, %32 ], [ %28, %26 ]
  %35 = load i16, ptr %34, align 2, !tbaa !59
  %36 = icmp eq i16 %35, 0
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  %38 = add i32 %33, 1
  br i1 %36, label %39, label %32, !prof !69, !llvm.loop !68

39:                                               ; preds = %32
  %40 = lshr exact i64 %31, 1
  %41 = trunc i64 %40 to i32
  %42 = ptrtoint ptr %34 to i64
  %43 = ptrtoint ptr %28 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = icmp ult i32 %41, %46
  br i1 %47, label %82, label %48, !prof !70

48:                                               ; preds = %39
  %49 = icmp eq i32 %46, 0
  %50 = zext i32 %33 to i64
  br label %51

51:                                               ; preds = %74, %48
  %52 = phi i32 [ 0, %48 ], [ %79, %74 ]
  %53 = phi i8 [ 0, %48 ], [ %77, %74 ]
  %54 = icmp uge i32 %52, %41
  %55 = sub i32 %41, %52
  %56 = icmp ult i32 %55, %46
  %57 = or i1 %54, %56
  br i1 %57, label %82, label %58, !prof !71

58:                                               ; preds = %51
  br i1 %49, label %74, label %59, !prof !72

59:                                               ; preds = %58, %69
  %60 = phi i64 [ %70, %69 ], [ 0, %58 ]
  %61 = trunc i64 %60 to i32
  %62 = add i32 %52, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %16, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !59
  %66 = getelementptr inbounds i16, ptr %28, i64 %60
  %67 = load i16, ptr %66, align 2, !tbaa !59
  %68 = icmp eq i16 %65, %67
  br i1 %68, label %69, label %72, !prof !73

69:                                               ; preds = %59
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, %50
  br i1 %71, label %74, label %59, !prof !74, !llvm.loop !63

72:                                               ; preds = %59
  %73 = trunc i64 %60 to i32
  br label %74

74:                                               ; preds = %72, %69, %58
  %75 = phi i32 [ 0, %58 ], [ %73, %72 ], [ %33, %69 ]
  %76 = icmp ne i32 %75, %46
  %77 = select i1 %76, i8 %53, i8 1, !prof !75
  %78 = zext i1 %76 to i32
  %79 = add i32 %52, %78
  %80 = and i8 %77, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %51, label %82, !prof !75, !llvm.loop !66

82:                                               ; preds = %74, %51, %39, %6, %2
  %83 = phi i32 [ 0, %2 ], [ %4, %6 ], [ %41, %39 ], [ %41, %51 ], [ %79, %74 ]
  ret i32 %83
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1011lastIndexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #6 !prof !58 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %9, %3 ], [ 0, %2 ]
  %5 = phi ptr [ %8, %3 ], [ %0, %2 ]
  %6 = load i16, ptr %5, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  %9 = add i32 %4, 1
  br i1 %7, label %10, label %3, !llvm.loop !68

10:                                               ; preds = %3
  %11 = ptrtoint ptr %5 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %10
  %18 = zext i32 %4 to i64
  %19 = getelementptr i16, ptr %0, i64 -1
  br label %20

20:                                               ; preds = %17, %23
  %21 = phi i64 [ %18, %17 ], [ %24, %23 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = add nsw i64 %21, -1
  %25 = getelementptr i16, ptr %19, i64 %21
  %26 = load i16, ptr %25, align 2, !tbaa !59
  %27 = icmp eq i16 %26, %1
  br i1 %27, label %28, label %20, !llvm.loop !84

28:                                               ; preds = %23
  %29 = trunc i64 %21 to i32
  br label %30

30:                                               ; preds = %20, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %20 ]
  %32 = add i32 %31, -1
  %33 = select i1 %22, i32 %15, i32 %32
  br label %34

34:                                               ; preds = %10, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %10 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !prof !85 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %24, label %6, !prof !86

6:                                                ; preds = %4
  %7 = icmp ult i32 %1, %3
  br i1 %7, label %24, label %8, !prof !87

8:                                                ; preds = %6, %15
  %9 = phi i64 [ %17, %15 ], [ 0, %6 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !59
  %12 = getelementptr inbounds i16, ptr %2, i64 %9
  %13 = load i16, ptr %12, align 2, !tbaa !59
  %14 = icmp eq i16 %11, %13
  br i1 %14, label %15, label %19, !prof !88

15:                                               ; preds = %8
  %16 = zext i32 %3 to i64
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %21, label %8, !prof !89, !llvm.loop !90

19:                                               ; preds = %8
  %20 = trunc i64 %9 to i32
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi i32 [ %20, %19 ], [ %3, %15 ]
  %23 = icmp eq i32 %22, %3
  br label %24

24:                                               ; preds = %6, %4, %21
  %25 = phi i1 [ %23, %21 ], [ true, %4 ], [ false, %6 ]
  ret i1 %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_108endsWithEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 !prof !58 {
  %5 = add i32 %3, -1
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  %9 = getelementptr i16, ptr %2, i64 -1
  br label %10

10:                                               ; preds = %7, %14
  %11 = phi i64 [ %8, %7 ], [ %19, %14 ]
  %12 = phi i32 [ %1, %7 ], [ %15, %14 ]
  %13 = icmp eq i64 %11, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = add i32 %12, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = add nsw i64 %11, -1
  %20 = getelementptr i16, ptr %9, i64 %11
  %21 = load i16, ptr %20, align 2, !tbaa !59
  %22 = icmp eq i16 %18, %21
  br i1 %22, label %10, label %23, !llvm.loop !91

23:                                               ; preds = %14, %10, %4
  %24 = phi i1 [ false, %4 ], [ %13, %10 ], [ %13, %14 ]
  ret i1 %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012OutputStringERNS_17XalanOutputStreamERKNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %8)
  %10 = load ptr, ptr %0, align 8, !tbaa !94
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %8, i32 noundef %9)
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012OutputStringERSoRKNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8, i64 noundef %4)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012OutputStringERNS_17XalanOutputStreamEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #8 !prof !58 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %1, %2 ]
  %6 = load i16, ptr %5, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !68

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  %14 = trunc i64 %13 to i32
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1, i32 noundef %14)
  br label %15

15:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  store ptr %2, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false, i8 noundef signext 63)
          to label %8 unwind label %27

8:                                                ; preds = %3
  %9 = load i64, ptr %5, align 8, !tbaa !92
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %7, align 8, !tbaa !96
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %12, i64 noundef %9)
          to label %14 unwind label %27

14:                                               ; preds = %8, %11
  %15 = load i64, ptr %6, align 8, !tbaa !98
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8, !tbaa !96
  %19 = load ptr, ptr %4, align 8, !tbaa !97
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #22
  unreachable

26:                                               ; preds = %14, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  ret void

27:                                               ; preds = %11, %3
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %6, align 8, !tbaa !98
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !96
  %33 = load ptr, ptr %4, align 8, !tbaa !97
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  resume { ptr, i32 } %28
}

declare void @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEbc(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i8 noundef signext) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 !prof !99 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !59
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !prof !100, !llvm.loop !68

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %26, !prof !101

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !83
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %18, align 8, !tbaa !83
  %23 = sub i64 %22, %19
  store i64 %23, ptr %18, align 8, !tbaa !83
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 0, ptr %25, align 8, !tbaa !77
  br label %33

26:                                               ; preds = %10
  %27 = icmp eq i32 %3, -1
  %28 = select i1 %27, i32 %15, i32 %3, !prof !102
  %29 = sub i32 %28, %2
  %30 = zext i32 %2 to i64
  %31 = getelementptr inbounds i16, ptr %0, i64 %30
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %31, i32 noundef %29)
  br label %33

33:                                               ; preds = %26, %24
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !103 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %17, !prof !104

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !tbaa !83
  %14 = sub i64 %13, %10
  store i64 %14, ptr %9, align 8, !tbaa !83
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !77
  br label %33

17:                                               ; preds = %4
  %18 = icmp eq i32 %3, -1
  %19 = select i1 %18, i32 %6, i32 %3, !prof !105
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %30, !prof !104

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !83
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %22, align 8, !tbaa !83
  %27 = sub i64 %26, %23
  store i64 %27, ptr %22, align 8, !tbaa !83
  br label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 0, ptr %29, align 8, !tbaa !77
  br label %33

30:                                               ; preds = %17
  %31 = sub i32 %19, %2
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %2, i32 noundef %31)
  br label %33

33:                                               ; preds = %28, %30, %15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %6, label %8, label %3, !llvm.loop !68

8:                                                ; preds = %3
  %9 = ptrtoint ptr %4 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 1
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %24, %16 ], [ %0, %8 ]
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = add i16 %18, -65
  %20 = icmp ult i16 %19, 26
  %21 = or disjoint i16 %18, 32
  %22 = select i1 %20, i16 %21, i16 %18
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %22)
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %26, label %16, !llvm.loop !106

26:                                               ; preds = %16, %8
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %10 = load i32, ptr %3, align 8, !tbaa !77
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !77
  br label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !83
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  br label %21

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %29, %21 ], [ %18, %12 ]
  %23 = load i16, ptr %22, align 2, !tbaa !59
  %24 = add i16 %23, -65
  %25 = icmp ult i16 %24, 26
  %26 = or disjoint i16 %23, 32
  %27 = select i1 %25, i16 %26, i16 %23
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %27)
  %29 = getelementptr inbounds i16, ptr %22, i64 1
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %21, !llvm.loop !106

31:                                               ; preds = %21, %6, %8
  ret ptr %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERNS_14XalanDOMStringE(ptr noundef nonnull readonly returned align 8 dereferenceable(36) %0) local_unnamed_addr #10 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds i16, ptr %3, i64 %5
  %8 = getelementptr inbounds i16, ptr %7, i64 -1
  %9 = icmp eq ptr %8, %3
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %3, %1 ]
  %13 = load i16, ptr %12, align 2, !tbaa !59
  %14 = add i16 %13, -65
  %15 = icmp ult i16 %14, 26
  %16 = or disjoint i16 %13, 32
  %17 = select i1 %15, i16 %16, i16 %13
  store i16 %17, ptr %12, align 2, !tbaa !59
  %18 = getelementptr i16, ptr %12, i64 1
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %11, !llvm.loop !107

20:                                               ; preds = %11, %1
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toUpperCaseASCIIEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i16, ptr %4, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  br i1 %6, label %8, label %3, !llvm.loop !68

8:                                                ; preds = %3
  %9 = ptrtoint ptr %4 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 1
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %24, %16 ], [ %0, %8 ]
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = add i16 %18, -97
  %20 = icmp ult i16 %19, 26
  %21 = add nsw i16 %18, -32
  %22 = select i1 %20, i16 %21, i16 %18
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %22)
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %26, label %16, !llvm.loop !106

26:                                               ; preds = %16, %8
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toUpperCaseASCIIERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %10 = load i32, ptr %3, align 8, !tbaa !77
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !77
  br label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !83
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  br label %21

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %29, %21 ], [ %18, %12 ]
  %23 = load i16, ptr %22, align 2, !tbaa !59
  %24 = add i16 %23, -97
  %25 = icmp ult i16 %24, 26
  %26 = add nsw i16 %23, -32
  %27 = select i1 %25, i16 %26, i16 %23
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %27)
  %29 = getelementptr inbounds i16, ptr %22, i64 1
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %21, !llvm.loop !106

31:                                               ; preds = %21, %6, %8
  ret ptr %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toUpperCaseASCIIERNS_14XalanDOMStringE(ptr noundef nonnull readonly returned align 8 dereferenceable(36) %0) local_unnamed_addr #10 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds i16, ptr %3, i64 %5
  %8 = getelementptr inbounds i16, ptr %7, i64 -1
  %9 = icmp eq ptr %8, %3
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %18, %11 ], [ %3, %1 ]
  %13 = load i16, ptr %12, align 2, !tbaa !59
  %14 = add i16 %13, -97
  %15 = icmp ult i16 %14, 26
  %16 = add nsw i16 %13, -32
  %17 = select i1 %15, i16 %16, i16 %13
  store i16 %17, ptr %12, align 2, !tbaa !59
  %18 = getelementptr i16, ptr %12, i64 1
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %11, !llvm.loop !107

20:                                               ; preds = %11, %1
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1025makeCharIdentityTransformEv() local_unnamed_addr #11 !prof !58 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1033makeXalanDOMCharIdentityTransformEv() local_unnamed_addr #11 !prof !58 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_107compareERKNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEES5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #6 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !92
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr null, ptr %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !92
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr null, ptr %13
  %15 = icmp ult i64 %4, %10
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = icmp ult i64 %10, %4
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = icmp eq i64 %4, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %27, %20 ], [ 0, %18 ]
  %22 = getelementptr inbounds i8, ptr %8, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !108
  %24 = getelementptr inbounds i8, ptr %14, i64 %21
  %25 = load i8, ptr %24, align 1, !tbaa !108
  %26 = icmp ne i8 %23, %25
  %27 = add nuw i64 %21, 1
  %28 = icmp eq i64 %27, %4
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %20, !llvm.loop !109

30:                                               ; preds = %20
  %31 = sext i8 %23 to i32
  %32 = sext i8 %25 to i32
  %33 = sub nsw i32 %31, %32
  br label %34

34:                                               ; preds = %18, %30, %2, %16
  %35 = phi i32 [ -1, %2 ], [ 1, %16 ], [ 0, %18 ], [ %33, %30 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_107compareEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !prof !110 {
  %5 = icmp ult i32 %1, %3
  br i1 %5, label %25, label %6, !prof !111

6:                                                ; preds = %4
  %7 = icmp ult i32 %3, %1
  br i1 %7, label %25, label %8, !prof !112

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %25, label %10, !prof !113

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %18, %10 ], [ 0, %8 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !59
  %15 = getelementptr inbounds i16, ptr %2, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !59
  %17 = icmp ne i16 %14, %16
  %18 = add nuw i32 %11, 1
  %19 = icmp eq i32 %18, %1
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %10, !prof !114, !llvm.loop !115

21:                                               ; preds = %10
  %22 = zext i16 %14 to i32
  %23 = zext i16 %16 to i32
  %24 = sub nsw i32 %22, %23
  br label %25

25:                                               ; preds = %8, %21, %4, %6
  %26 = phi i32 [ -1, %4 ], [ 1, %6 ], [ 0, %8 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !prof !116 {
  %5 = icmp ult i32 %1, %3
  br i1 %5, label %33, label %6, !prof !117

6:                                                ; preds = %4
  %7 = icmp ult i32 %3, %1
  br i1 %7, label %33, label %8, !prof !118

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %33, label %10, !prof !119

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %26, %10 ], [ 0, %8 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !59
  %15 = add i16 %14, -97
  %16 = icmp ult i16 %15, 26
  %17 = add nsw i16 %14, -32
  %18 = select i1 %16, i16 %17, i16 %14, !prof !120
  %19 = getelementptr inbounds i16, ptr %2, i64 %12
  %20 = load i16, ptr %19, align 2, !tbaa !59
  %21 = add i16 %20, -97
  %22 = icmp ult i16 %21, 26
  %23 = add nsw i16 %20, -32
  %24 = select i1 %22, i16 %23, i16 %20, !prof !121
  %25 = icmp ne i16 %18, %24
  %26 = add nuw i32 %11, 1
  %27 = icmp eq i32 %26, %1
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %10, !prof !122, !llvm.loop !123

29:                                               ; preds = %10
  %30 = zext i16 %18 to i32
  %31 = zext i16 %24 to i32
  %32 = sub nsw i32 %30, %31
  br label %33

33:                                               ; preds = %8, %29, %4, %6
  %34 = phi i32 [ -1, %4 ], [ 1, %6 ], [ 0, %8 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016collationCompareEPKtjS1_j(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #7 !prof !124 {
  %5 = or i32 %3, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7, !prof !125

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10, !prof !126

10:                                               ; preds = %7, %18
  %11 = phi i32 [ %19, %18 ], [ 0, %7 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !59
  %15 = getelementptr inbounds i16, ptr %2, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !59
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %21, !prof !127

18:                                               ; preds = %10
  %19 = add nuw i32 %11, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %21, label %10, !prof !128, !llvm.loop !129

21:                                               ; preds = %10, %18
  %22 = phi i32 [ %8, %18 ], [ %11, %10 ]
  %23 = zext i16 %14 to i32
  %24 = zext i16 %16 to i32
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %27 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %28 = phi i32 [ 0, %7 ], [ %24, %21 ]
  %29 = icmp eq i32 %26, %1
  br i1 %29, label %30, label %33, !prof !130

30:                                               ; preds = %25
  %31 = icmp ne i32 %26, %3
  %32 = sext i1 %31 to i32
  br label %37

33:                                               ; preds = %25
  %34 = icmp eq i32 %26, %3
  %35 = sub nsw i32 %27, %28
  %36 = select i1 %34, i32 1, i32 %35, !prof !131
  br label %37

37:                                               ; preds = %33, %4, %30
  %38 = phi i32 [ 0, %4 ], [ %32, %30 ], [ %36, %33 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 !prof !132 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5, !prof !133

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i16, ptr %0, i64 %6
  %8 = load i16, ptr %0, align 2, !tbaa !59
  %9 = load i16, ptr %1, align 2, !tbaa !59
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %16, label %21, !prof !134

11:                                               ; preds = %16
  %12 = getelementptr inbounds i16, ptr %18, i64 1
  %13 = load i16, ptr %19, align 2, !tbaa !59
  %14 = load i16, ptr %12, align 2, !tbaa !59
  %15 = icmp eq i16 %13, %14
  br i1 %15, label %16, label %21, !prof !135, !llvm.loop !136

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %19, %11 ], [ %0, %5 ]
  %18 = phi ptr [ %12, %11 ], [ %1, %5 ]
  %19 = getelementptr inbounds i16, ptr %17, i64 1
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %11, !prof !137

21:                                               ; preds = %16, %11, %5, %3
  %22 = phi i1 [ true, %3 ], [ %10, %5 ], [ %15, %11 ], [ true, %16 ]
  ret i1 %22
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !prof !138 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %32, label %5, !prof !139

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %28
  %9 = phi i64 [ 0, %5 ], [ %29, %28 ]
  %10 = phi i1 [ %4, %5 ], [ %30, %28 ]
  %11 = getelementptr inbounds i16, ptr %0, i64 %9
  %12 = load i16, ptr %11, align 2, !tbaa !59
  %13 = getelementptr inbounds i16, ptr %1, i64 %9
  %14 = load i16, ptr %13, align 2, !tbaa !59
  %15 = icmp eq i16 %12, %14
  br i1 %15, label %28, label %16, !prof !140

16:                                               ; preds = %8
  %17 = add i16 %12, -97
  %18 = icmp ult i16 %17, 26
  %19 = add nsw i16 %12, -32
  %20 = select i1 %18, i16 %19, i16 %12, !prof !141
  %21 = icmp eq i16 %20, %14
  br i1 %21, label %28, label %22, !prof !141

22:                                               ; preds = %16
  %23 = add i16 %14, -97
  %24 = icmp ult i16 %23, 26
  %25 = add nsw i16 %14, -32
  %26 = select i1 %24, i16 %25, i16 %14
  %27 = icmp eq i16 %12, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16, %8
  %29 = add nuw nsw i64 %9, 1
  %30 = icmp uge i64 %29, %6
  %31 = icmp eq i64 %29, %7
  br i1 %31, label %32, label %8, !prof !142, !llvm.loop !143

32:                                               ; preds = %22, %28, %3
  %33 = phi i1 [ %4, %3 ], [ %10, %22 ], [ %30, %28 ]
  ret i1 %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1022MakeXalanDOMCharVectorEPKcRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 !prof !58 {
  %4 = alloca i16, align 2
  br i1 %2, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1026TranscodeFromLocalCodePageEPKcRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br label %25

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0)
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !144
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %10)
  br label %15

15:                                               ; preds = %7, %14
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %23, %17 ], [ %10, %15 ]
  %19 = phi ptr [ %22, %17 ], [ %0, %15 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #21
  %20 = load i8, ptr %19, align 1, !tbaa !108
  %21 = sext i8 %20 to i16
  store i16 %21, ptr %4, align 2, !tbaa !59
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #21
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  %23 = add nsw i64 %18, -1
  %24 = icmp sgt i64 %18, 1
  br i1 %24, label %17, label %25, !llvm.loop !145

25:                                               ; preds = %17, %15, %5
  ret ptr %1
}

declare noundef zeroext i1 @_ZN11xalanc_1_1026TranscodeFromLocalCodePageEPKcRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1022MakeXalanDOMCharVectorEPKtRNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(32) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !59
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !68

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %14 = and i64 %13, 4294967295
  %15 = getelementptr inbounds i16, ptr %0, i64 %14
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load ptr, ptr %1, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = load ptr, ptr %1, align 8, !tbaa !146
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !144
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  %25 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %25, ptr %1, align 8, !tbaa !146
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !83
  store i64 %27, ptr %19, align 8, !tbaa !83
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !144
  store i64 %29, ptr %21, align 8, !tbaa !144
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  store ptr %31, ptr %23, align 8, !tbaa !147
  store ptr %18, ptr %3, align 8, !tbaa !146
  store i64 %20, ptr %26, align 8, !tbaa !83
  store i64 %22, ptr %28, align 8, !tbaa !144
  store ptr %24, ptr %30, align 8, !tbaa !147
  %32 = icmp eq i64 %22, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %9
  %34 = load ptr, ptr %18, align 8, !tbaa !94
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %24)
          to label %40 unwind label %37

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %9, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %3, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, ptr noundef %1, ptr noundef %2)
          to label %10 unwind label %30, !prof !149

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !146
  %14 = load i64, ptr %6, align 8, !tbaa !83
  %15 = load i64, ptr %12, align 8, !tbaa !144
  %16 = load ptr, ptr %11, align 8, !tbaa !147
  %17 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %17, ptr %0, align 8, !tbaa !146
  %18 = load i64, ptr %7, align 8, !tbaa !83
  store i64 %18, ptr %6, align 8, !tbaa !83
  %19 = load i64, ptr %8, align 8, !tbaa !144
  store i64 %19, ptr %12, align 8, !tbaa !144
  %20 = load ptr, ptr %9, align 8, !tbaa !147
  store ptr %20, ptr %11, align 8, !tbaa !147
  store ptr %13, ptr %5, align 8, !tbaa !146
  store i64 %14, ptr %7, align 8, !tbaa !83
  store i64 %15, ptr %8, align 8, !tbaa !144
  store ptr %16, ptr %9, align 8, !tbaa !147
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !149

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !94
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #22
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !144
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !147
  %36 = load ptr, ptr %5, align 8, !tbaa !146
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 !prof !58 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %11, %5 ], [ 0, %2 ]
  %7 = phi ptr [ %10, %5 ], [ %0, %2 ]
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  %11 = add i32 %6, 1
  br i1 %9, label %12, label %5, !llvm.loop !68

12:                                               ; preds = %5
  %13 = ptrtoint ptr %7 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = and i64 %15, 8589934590
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = lshr exact i64 %15, 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !92
  %22 = and i64 %19, 4294967295
  %23 = add nuw nsw i64 %22, 1
  %24 = add i64 %23, %21
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !98
  %27 = icmp ult i64 %26, %24
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %24)
  br label %29

29:                                               ; preds = %18, %28
  %30 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %31 = zext i32 %30 to i64
  br label %33

32:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #21
  store i8 0, ptr %4, align 1, !tbaa !108
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  br label %40

33:                                               ; preds = %29, %33
  %34 = phi i64 [ 0, %29 ], [ %38, %33 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  %35 = getelementptr inbounds i16, ptr %0, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !59
  %37 = trunc i16 %36 to i8
  store i8 %37, ptr %3, align 1, !tbaa !108
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  %38 = add nuw nsw i64 %34, 1
  %39 = icmp eq i64 %38, %31
  br i1 %39, label %32, label %33, !llvm.loop !150

40:                                               ; preds = %32, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018CopyStringToVectorEPKcRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %7, ptr noundef %0, ptr noundef nonnull %11)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !92
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !98
  br i1 %17, label %20, label %38

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %130, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !96
  %27 = load i64, ptr %11, align 8, !tbaa !92
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !108
  store i8 %32, ptr %31, align 1, !tbaa !108
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !92
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !92
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !151

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %41 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr %41, ptr %5, align 8, !tbaa !97
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !92
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !98
  %44 = load ptr, ptr %41, align 8, !tbaa !94
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !96
  %49 = load i64, ptr %42, align 8, !tbaa !92
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !96
  %54 = load i64, ptr %42, align 8, !tbaa !92
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !96
  %58 = load i64, ptr %42, align 8, !tbaa !92
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !96
  %61 = load i64, ptr %11, align 8, !tbaa !92
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !97
  %65 = load i64, ptr %11, align 8, !tbaa !92
  %66 = load i64, ptr %18, align 8, !tbaa !98
  %67 = load ptr, ptr %14, align 8, !tbaa !96
  %68 = load ptr, ptr %5, align 8, !tbaa !97
  store ptr %68, ptr %0, align 8, !tbaa !97
  %69 = load i64, ptr %42, align 8, !tbaa !92
  store i64 %69, ptr %11, align 8, !tbaa !92
  %70 = load i64, ptr %43, align 8, !tbaa !98
  store i64 %70, ptr %18, align 8, !tbaa !98
  %71 = load ptr, ptr %48, align 8, !tbaa !96
  store ptr %71, ptr %14, align 8, !tbaa !96
  store ptr %64, ptr %5, align 8, !tbaa !97
  store i64 %65, ptr %42, align 8, !tbaa !92
  store i64 %66, ptr %43, align 8, !tbaa !98
  store ptr %67, ptr %48, align 8, !tbaa !96
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !94
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #22
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !98
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !96
  %87 = load ptr, ptr %5, align 8, !tbaa !97
  %88 = load ptr, ptr %87, align 8, !tbaa !94
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #22
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %82

95:                                               ; preds = %38
  %96 = ptrtoint ptr %16 to i64
  %97 = ptrtoint ptr %1 to i64
  %98 = sub i64 %96, %97
  %99 = icmp ugt i64 %98, %8
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %2, i64 %98
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %105

103:                                              ; preds = %105, %100
  %104 = icmp eq ptr %16, %1
  br i1 %104, label %113, label %109

105:                                              ; preds = %100, %105
  %106 = phi ptr [ %107, %105 ], [ %101, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %106)
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = icmp eq ptr %107, %3
  br i1 %108, label %103, label %105, !llvm.loop !152

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !153

113:                                              ; preds = %109, %103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %98, i1 false)
  br label %130

114:                                              ; preds = %95
  %115 = sub i64 0, %8
  %116 = getelementptr inbounds i8, ptr %16, i64 %115
  %117 = icmp eq ptr %3, %2
  br i1 %117, label %122, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %120, %118 ], [ %116, %114 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %119)
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = icmp eq ptr %120, %16
  br i1 %121, label %122, label %118, !llvm.loop !154

122:                                              ; preds = %118, %114
  %123 = icmp eq ptr %116, %1
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  %125 = ptrtoint ptr %116 to i64
  %126 = sub i64 %125, %97
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, ptr %16, i64 %127
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %128, ptr align 1 %1, i64 %126, i1 false)
  br label %129

129:                                              ; preds = %124, %122
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %130

130:                                              ; preds = %29, %23, %80, %113, %129, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1015WideStringToIntEPKt(ptr noundef %0) local_unnamed_addr #8 !prof !58 {
  %2 = tail call noundef i32 @_ZN11xalanc_1_1020WideStringToIntegralIiEET_PKtS1_(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1020WideStringToIntegralIiEET_PKtS1_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 comdat !prof !58 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef nonnull %0)
  br i1 %5, label %6, label %43

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %13, %6 ], [ %0, %4 ]
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !108
  %12 = icmp eq i8 %11, 6
  %13 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %12, label %6, label %14, !llvm.loop !155

14:                                               ; preds = %6
  %15 = icmp eq i16 %8, 45
  %16 = zext i1 %15 to i64
  %17 = getelementptr inbounds i16, ptr %7, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %14, %26
  %21 = phi i16 [ %32, %26 ], [ %18, %14 ]
  %22 = phi i32 [ %30, %26 ], [ 0, %14 ]
  %23 = phi ptr [ %31, %26 ], [ %17, %14 ]
  %24 = add i16 %21, -48
  %25 = icmp ult i16 %24, 10
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = zext nneg i16 %21 to i32
  %28 = mul nsw i32 %22, 10
  %29 = add i32 %28, -48
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds i16, ptr %23, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !59
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %39, label %20, !llvm.loop !156

34:                                               ; preds = %20
  %35 = zext i16 %21 to i64
  %36 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !108
  %38 = icmp eq i8 %37, 6
  br i1 %38, label %39, label %43

39:                                               ; preds = %26, %14, %34
  %40 = phi i32 [ %22, %34 ], [ 0, %14 ], [ %30, %26 ]
  %41 = sub nsw i32 0, %40
  %42 = select i1 %15, i32 %41, i32 %40
  br label %43

43:                                               ; preds = %39, %34, %2, %4
  %44 = phi i32 [ 0, %4 ], [ 0, %2 ], [ %42, %39 ], [ 0, %34 ]
  ret i32 %44
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1016WideStringToLongEPKt(ptr noundef %0) local_unnamed_addr #9 !prof !157 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3, !prof !158

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef nonnull %0)
  br i1 %4, label %5, label %41, !prof !159

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %12, %5 ], [ %0, %3 ]
  %7 = load i16, ptr %6, align 2, !tbaa !59
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !108
  %11 = icmp eq i8 %10, 6
  %12 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %11, label %5, label %13, !prof !158, !llvm.loop !160

13:                                               ; preds = %5
  %14 = icmp eq i16 %7, 45
  %15 = zext i1 %14 to i64
  %16 = getelementptr inbounds i16, ptr %6, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !59
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %37, label %19, !prof !161

19:                                               ; preds = %13, %26
  %20 = phi i16 [ %31, %26 ], [ %17, %13 ]
  %21 = phi i64 [ %29, %26 ], [ 0, %13 ]
  %22 = phi ptr [ %30, %26 ], [ %16, %13 ]
  %23 = zext i16 %20 to i64
  %24 = add i16 %20, -48
  %25 = icmp ult i16 %24, 10
  br i1 %25, label %26, label %33, !prof !162

26:                                               ; preds = %19
  %27 = mul nsw i64 %21, 10
  %28 = and i64 %23, 15
  %29 = add nsw i64 %28, %27
  %30 = getelementptr inbounds i16, ptr %22, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !59
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %37, label %19, !prof !163, !llvm.loop !164

33:                                               ; preds = %19
  %34 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %23
  %35 = load i8, ptr %34, align 1, !tbaa !108
  %36 = icmp eq i8 %35, 6
  br i1 %36, label %37, label %41

37:                                               ; preds = %26, %33, %13
  %38 = phi i64 [ %21, %33 ], [ 0, %13 ], [ %29, %26 ]
  %39 = sub nsw i64 0, %38
  %40 = select i1 %14, i64 %39, i64 %38, !prof !158
  br label %41

41:                                               ; preds = %1, %3, %33, %37
  %42 = phi i64 [ 0, %3 ], [ 0, %1 ], [ %40, %37 ], [ 0, %33 ]
  ret i64 %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1024WideStringToUnsignedLongEPKt(ptr noundef %0) local_unnamed_addr #8 !prof !58 {
  %2 = tail call noundef i64 @_ZN11xalanc_1_1020WideStringToIntegralImEET_PKtS1_(ptr noundef %0, i64 noundef 0)
  ret i64 %2
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1020WideStringToIntegralImEET_PKtS1_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 comdat !prof !58 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef nonnull %0)
  br i1 %5, label %6, label %42

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %13, %6 ], [ %0, %4 ]
  %8 = load i16, ptr %7, align 2, !tbaa !59
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !108
  %12 = icmp eq i8 %11, 6
  %13 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %12, label %6, label %14, !llvm.loop !165

14:                                               ; preds = %6
  %15 = icmp eq i16 %8, 45
  %16 = zext i1 %15 to i64
  %17 = getelementptr inbounds i16, ptr %7, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !59
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14, %27
  %21 = phi i16 [ %32, %27 ], [ %18, %14 ]
  %22 = phi i64 [ %30, %27 ], [ 0, %14 ]
  %23 = phi ptr [ %31, %27 ], [ %17, %14 ]
  %24 = zext i16 %21 to i64
  %25 = add i16 %21, -48
  %26 = icmp ult i16 %25, 10
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = mul i64 %22, 10
  %29 = and i64 %24, 15
  %30 = add i64 %29, %28
  %31 = getelementptr inbounds i16, ptr %23, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !59
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %20, !llvm.loop !166

34:                                               ; preds = %20
  %35 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %24
  %36 = load i8, ptr %35, align 1, !tbaa !108
  %37 = icmp eq i8 %36, 6
  br i1 %37, label %38, label %42

38:                                               ; preds = %27, %14, %34
  %39 = phi i64 [ %22, %34 ], [ 0, %14 ], [ %30, %27 ]
  %40 = sub i64 0, %39
  %41 = select i1 %15, i64 %40, i64 %39
  br label %42

42:                                               ; preds = %38, %34, %2, %4
  %43 = phi i64 [ 0, %4 ], [ 0, %2 ], [ %41, %38 ], [ 0, %34 ]
  ret i64 %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 !prof !58 {
  %3 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret double %3
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_104trimERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1)
  br label %40

10:                                               ; preds = %6, %19
  %11 = phi i32 [ 0, %6 ], [ %20, %19 ]
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %8, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !59
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !108
  %18 = icmp eq i8 %17, 6
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = add nuw i32 %11, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %10, !llvm.loop !167

22:                                               ; preds = %10, %19
  %23 = phi i32 [ %11, %10 ], [ %4, %19 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %30, %22
  %27 = phi i32 [ %4, %22 ], [ %28, %30 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds i16, ptr %25, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !59
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !108
  %37 = icmp eq i8 %36, 6
  br i1 %37, label %26, label %38, !llvm.loop !168

38:                                               ; preds = %30, %26
  %39 = phi i32 [ %27, %30 ], [ 1, %26 ]
  tail call void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %23, i32 noundef %39)
  br label %40

40:                                               ; preds = %38, %9
  ret ptr %1
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018PointerToDOMStringEPKvRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  %3 = alloca [101 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %3) #21
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0) #21
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = add i32 %4, 1
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !144
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %9)
  br label %14

14:                                               ; preds = %2, %13
  %15 = zext i32 %4 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %23, %18 ], [ %3, %14 ]
  %20 = load i8, ptr %19, align 1, !tbaa !108
  %21 = sext i8 %20 to i16
  %22 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %21)
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %25, label %18, !llvm.loop !169

25:                                               ; preds = %18, %14
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %3) #21
  ret ptr %1
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #9 !prof !170 {
  %3 = alloca [101 x i8], align 16
  %4 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !108
  %5 = bitcast double %0 to i64
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %4, %6
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %9 = lshr i64 %5, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %7, i1 %11, i1 false, !prof !171
  br i1 %12, label %13, label %15, !prof !172

13:                                               ; preds = %2
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @_ZN11xalanc_1_10L12theNaNStringE, i32 noundef 3)
  br label %114

15:                                               ; preds = %2
  %16 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !108
  %17 = icmp eq i32 %16, %6
  %18 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %19 = icmp eq i32 %18, %10
  %20 = select i1 %17, i1 %19, i1 false, !prof !171
  br i1 %20, label %21, label %23, !prof !172

21:                                               ; preds = %15
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @_ZN11xalanc_1_10L25thePositiveInfinityStringE, i32 noundef 8)
  br label %114

23:                                               ; preds = %15
  %24 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !108
  %25 = icmp eq i32 %24, %6
  %26 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %27 = icmp eq i32 %26, %10
  %28 = select i1 %25, i1 %27, i1 false, !prof !171
  br i1 %28, label %29, label %31, !prof !172

29:                                               ; preds = %23
  %30 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @_ZN11xalanc_1_10L25theNegativeInfinityStringE, i32 noundef 9)
  br label %114

31:                                               ; preds = %23
  %32 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE, align 8, !tbaa !108
  %33 = icmp eq i32 %32, %6
  %34 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE, i64 0, i32 1), align 4
  %35 = icmp eq i32 %34, %10
  %36 = select i1 %33, i1 %35, i1 false, !prof !171
  br i1 %36, label %43, label %37, !prof !173

37:                                               ; preds = %31
  %38 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE, align 8, !tbaa !108
  %39 = icmp eq i32 %38, %6
  %40 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE, i64 0, i32 1), align 4
  %41 = icmp eq i32 %40, %10
  %42 = select i1 %39, i1 %41, i1 false, !prof !174
  br i1 %42, label %43, label %45, !prof !175

43:                                               ; preds = %37, %31
  %44 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @_ZN11xalanc_1_10L13theZeroStringE, i32 noundef 1)
  br label %114

45:                                               ; preds = %37
  %46 = fptosi double %0 to i64
  %47 = sitofp i64 %46 to double
  %48 = fcmp oeq double %47, %0
  br i1 %48, label %49, label %50, !prof !174

49:                                               ; preds = %45
  tail call void @_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE(i64 noundef %46, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %114

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %3) #21
  br label %51

51:                                               ; preds = %57, %50
  %52 = phi ptr [ @_ZN11xalanc_1_10L16thePrintfStringsE, %50 ], [ %58, %57 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !176
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %53, double noundef %0) #21
  %55 = call double @strtod(ptr nocapture noundef nonnull %3, ptr noundef null) #21
  %56 = fcmp une double %55, %0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds ptr, ptr %52, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !176
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %51, !llvm.loop !177

61:                                               ; preds = %57, %51
  %62 = sext i32 %54 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ %65, %63 ], [ %62, %61 ]
  %65 = add i64 %64, -1
  %66 = getelementptr inbounds [101 x i8], ptr %3, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !108
  %68 = icmp eq i8 %67, 48
  br i1 %68, label %63, label %69, !llvm.loop !178

69:                                               ; preds = %63
  %70 = trunc i64 %64 to i32
  %71 = trunc i64 %65 to i32
  %72 = sext i8 %67 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  %75 = select i1 %74, i32 %70, i32 %71
  %76 = icmp sgt i32 %70, 1
  br i1 %76, label %80, label %92

77:                                               ; preds = %80
  %78 = add nsw i32 %81, -1
  %79 = icmp sgt i32 %81, 1
  br i1 %79, label %80, label %92, !llvm.loop !179

80:                                               ; preds = %69, %77
  %81 = phi i32 [ %78, %77 ], [ %71, %69 ]
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [101 x i8], ptr %3, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !108
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, -48
  %87 = icmp ult i32 %86, 10
  br i1 %87, label %77, label %88

88:                                               ; preds = %80
  %89 = icmp eq i8 %84, 46
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds [101 x i8], ptr %3, i64 0, i64 %82
  store i8 46, ptr %91, align 1, !tbaa !108
  br label %92

92:                                               ; preds = %77, %69, %88, %90
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !77
  %95 = add i32 %75, 1
  %96 = add i32 %95, %94
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !144
  %100 = icmp ult i64 %99, %97
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %97)
  br label %102

102:                                              ; preds = %92, %101
  %103 = sext i32 %75 to i64
  %104 = getelementptr inbounds i8, ptr %3, i64 %103
  %105 = icmp eq i32 %75, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102, %106
  %107 = phi ptr [ %111, %106 ], [ %3, %102 ]
  %108 = load i8, ptr %107, align 1, !tbaa !108
  %109 = sext i8 %108 to i16
  %110 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, i16 noundef zeroext %109)
  %111 = getelementptr inbounds i8, ptr %107, i64 1
  %112 = icmp eq ptr %111, %104
  br i1 %112, label %113, label %106, !llvm.loop !169

113:                                              ; preds = %106, %102
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %3) #21
  br label %114

114:                                              ; preds = %21, %43, %113, %49, %29, %13
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  tail call void @_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 !prof !180 {
  %5 = alloca [101 x i16], align 16
  %6 = alloca [101 x i8], align 16
  %7 = alloca [101 x i16], align 16
  %8 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !108
  %9 = bitcast double %0 to i64
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %13 = lshr i64 %9, 32
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %12, %14
  %16 = select i1 %11, i1 %15, i1 false, !prof !181
  br i1 %16, label %17, label %30, !prof !182

17:                                               ; preds = %4
  %18 = getelementptr inbounds i8, ptr %1, i64 %3
  %19 = and i64 %2, 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %18, align 8, !tbaa !94
  %23 = getelementptr i8, ptr %22, i64 %2
  %24 = getelementptr i8, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !nosanitize !183
  br label %28

26:                                               ; preds = %17
  %27 = inttoptr i64 %2 to ptr
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %25, %21 ], [ %27, %26 ]
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull @_ZN11xalanc_1_10L12theNaNStringE, i32 noundef 3)
  br label %203

30:                                               ; preds = %4
  %31 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !108
  %32 = icmp eq i32 %31, %10
  %33 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %34 = icmp eq i32 %33, %14
  %35 = select i1 %32, i1 %34, i1 false, !prof !181
  br i1 %35, label %36, label %49, !prof !182

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %1, i64 %3
  %38 = and i64 %2, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %37, align 8, !tbaa !94
  %42 = getelementptr i8, ptr %41, i64 %2
  %43 = getelementptr i8, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !nosanitize !183
  br label %47

45:                                               ; preds = %36
  %46 = inttoptr i64 %2 to ptr
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %44, %40 ], [ %46, %45 ]
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull @_ZN11xalanc_1_10L25thePositiveInfinityStringE, i32 noundef 8)
  br label %203

49:                                               ; preds = %30
  %50 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !108
  %51 = icmp eq i32 %50, %10
  %52 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %53 = icmp eq i32 %52, %14
  %54 = select i1 %51, i1 %53, i1 false, !prof !181
  br i1 %54, label %55, label %68, !prof !182

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, ptr %1, i64 %3
  %57 = and i64 %2, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %56, align 8, !tbaa !94
  %61 = getelementptr i8, ptr %60, i64 %2
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !nosanitize !183
  br label %66

64:                                               ; preds = %55
  %65 = inttoptr i64 %2 to ptr
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %63, %59 ], [ %65, %64 ]
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull @_ZN11xalanc_1_10L25theNegativeInfinityStringE, i32 noundef 9)
  br label %203

68:                                               ; preds = %49
  %69 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE, align 8, !tbaa !108
  %70 = icmp eq i32 %69, %10
  %71 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE, i64 0, i32 1), align 4
  %72 = icmp eq i32 %71, %14
  %73 = select i1 %70, i1 %72, i1 false, !prof !181
  br i1 %73, label %80, label %74, !prof !184

74:                                               ; preds = %68
  %75 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE, align 8, !tbaa !108
  %76 = icmp eq i32 %75, %10
  %77 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE, i64 0, i32 1), align 4
  %78 = icmp eq i32 %77, %14
  %79 = select i1 %76, i1 %78, i1 false, !prof !185
  br i1 %79, label %80, label %93, !prof !186

80:                                               ; preds = %74, %68
  %81 = getelementptr inbounds i8, ptr %1, i64 %3
  %82 = and i64 %2, 1
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %89, label %84, !prof !187

84:                                               ; preds = %80
  %85 = load ptr, ptr %81, align 8, !tbaa !94
  %86 = getelementptr i8, ptr %85, i64 %2
  %87 = getelementptr i8, ptr %86, i64 -1
  %88 = load ptr, ptr %87, align 8, !nosanitize !183
  br label %91

89:                                               ; preds = %80
  %90 = inttoptr i64 %2 to ptr
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi ptr [ %88, %84 ], [ %90, %89 ]
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull @_ZN11xalanc_1_10L13theZeroStringE, i32 noundef 1), !prof !188
  br label %203

93:                                               ; preds = %74
  %94 = fptosi double %0 to i64
  %95 = sitofp i64 %94 to double
  %96 = fcmp oeq double %95, %0
  br i1 %96, label %97, label %136, !prof !189

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %5) #21
  %98 = getelementptr inbounds [101 x i16], ptr %5, i64 0, i64 100
  store i16 0, ptr %98, align 8, !tbaa !59
  %99 = icmp slt i64 %94, 0
  br i1 %99, label %100, label %112, !prof !190

100:                                              ; preds = %97, %100
  %101 = phi i64 [ %107, %100 ], [ %94, %97 ]
  %102 = phi ptr [ %106, %100 ], [ %98, %97 ]
  %103 = srem i64 %101, 10
  %104 = trunc i64 %103 to i16
  %105 = sub nsw i16 48, %104
  %106 = getelementptr inbounds i16, ptr %102, i64 -1
  store i16 %105, ptr %106, align 2, !tbaa !59
  %107 = sdiv i64 %101, 10
  %108 = add i64 %101, 9
  %109 = icmp ult i64 %108, 19
  br i1 %109, label %110, label %100, !llvm.loop !191

110:                                              ; preds = %100
  %111 = getelementptr inbounds i16, ptr %102, i64 -2
  store i16 45, ptr %111, align 2, !tbaa !59
  br label %121

112:                                              ; preds = %97, %112
  %113 = phi i64 [ %119, %112 ], [ %94, %97 ]
  %114 = phi ptr [ %118, %112 ], [ %98, %97 ]
  %115 = urem i64 %113, 10
  %116 = trunc i64 %115 to i16
  %117 = or disjoint i16 %116, 48
  %118 = getelementptr inbounds i16, ptr %114, i64 -1
  store i16 %117, ptr %118, align 2, !tbaa !59
  %119 = udiv i64 %113, 10
  %120 = icmp ult i64 %113, 10
  br i1 %120, label %121, label %112, !prof !192, !llvm.loop !193

121:                                              ; preds = %112, %110
  %122 = phi ptr [ %111, %110 ], [ %118, %112 ]
  %123 = getelementptr inbounds i8, ptr %1, i64 %3
  %124 = and i64 %2, 1
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %131, label %126, !prof !190

126:                                              ; preds = %121
  %127 = load ptr, ptr %123, align 8, !tbaa !94
  %128 = getelementptr i8, ptr %127, i64 %2
  %129 = getelementptr i8, ptr %128, i64 -1
  %130 = load ptr, ptr %129, align 8, !nosanitize !183
  br label %133

131:                                              ; preds = %121
  %132 = inttoptr i64 %2 to ptr
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi ptr [ %130, %126 ], [ %132, %131 ]
  %135 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %122)
  call void %134(ptr noundef nonnull align 8 dereferenceable(24) %123, ptr noundef nonnull %122, i32 noundef %135), !prof !194
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %5) #21
  br label %203

136:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %6) #21
  br label %137

137:                                              ; preds = %143, %136
  %138 = phi ptr [ @_ZN11xalanc_1_10L16thePrintfStringsE, %136 ], [ %144, %143 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !176
  %140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %139, double noundef %0) #21
  %141 = call double @strtod(ptr nocapture noundef nonnull %6, ptr noundef null) #21
  %142 = fcmp une double %141, %0
  br i1 %142, label %143, label %147, !prof !195

143:                                              ; preds = %137
  %144 = getelementptr inbounds ptr, ptr %138, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !176
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %137, !prof !196, !llvm.loop !197

147:                                              ; preds = %143, %137
  %148 = sext i32 %140 to i64
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i64 [ %151, %149 ], [ %148, %147 ]
  %151 = add i64 %150, -1
  %152 = getelementptr inbounds [101 x i8], ptr %6, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !108
  %154 = icmp eq i8 %153, 48
  br i1 %154, label %149, label %155, !prof !198, !llvm.loop !199

155:                                              ; preds = %149
  %156 = trunc i64 %150 to i32
  %157 = trunc i64 %151 to i32
  %158 = sext i8 %153 to i32
  %159 = add nsw i32 %158, -48
  %160 = icmp ult i32 %159, 10
  %161 = select i1 %160, i32 %156, i32 %157, !prof !200
  %162 = icmp sgt i32 %156, 1
  br i1 %162, label %166, label %178, !prof !201

163:                                              ; preds = %166
  %164 = add nsw i32 %167, -1
  %165 = icmp sgt i32 %167, 1
  br i1 %165, label %166, label %178, !prof !202, !llvm.loop !203

166:                                              ; preds = %155, %163
  %167 = phi i32 [ %164, %163 ], [ %157, %155 ]
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds [101 x i8], ptr %6, i64 0, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !108
  %171 = sext i8 %170 to i32
  %172 = add nsw i32 %171, -48
  %173 = icmp ult i32 %172, 10
  br i1 %173, label %163, label %174, !prof !204

174:                                              ; preds = %166
  %175 = icmp eq i8 %170, 46
  br i1 %175, label %178, label %176, !prof !200

176:                                              ; preds = %174
  %177 = getelementptr inbounds [101 x i8], ptr %6, i64 0, i64 %168
  store i8 46, ptr %177, align 1, !tbaa !108
  br label %178

178:                                              ; preds = %163, %155, %174, %176
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %7) #21
  %179 = sext i32 %161 to i64
  %180 = getelementptr inbounds i8, ptr %6, i64 %179
  %181 = icmp eq i32 %161, 0
  br i1 %181, label %190, label %182, !prof !205

182:                                              ; preds = %178, %182
  %183 = phi ptr [ %188, %182 ], [ %7, %178 ]
  %184 = phi ptr [ %187, %182 ], [ %6, %178 ]
  %185 = load i8, ptr %184, align 1, !tbaa !108
  %186 = sext i8 %185 to i16
  store i16 %186, ptr %183, align 2, !tbaa !59
  %187 = getelementptr inbounds i8, ptr %184, i64 1
  %188 = getelementptr inbounds i16, ptr %183, i64 1
  %189 = icmp eq ptr %187, %180
  br i1 %189, label %190, label %182, !prof !206, !llvm.loop !207

190:                                              ; preds = %182, %178
  %191 = getelementptr inbounds i8, ptr %1, i64 %3
  %192 = and i64 %2, 1
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %199, label %194, !prof !208

194:                                              ; preds = %190
  %195 = load ptr, ptr %191, align 8, !tbaa !94
  %196 = getelementptr i8, ptr %195, i64 %2
  %197 = getelementptr i8, ptr %196, i64 -1
  %198 = load ptr, ptr %197, align 8, !nosanitize !183
  br label %201

199:                                              ; preds = %190
  %200 = inttoptr i64 %2 to ptr
  br label %201

201:                                              ; preds = %199, %194
  %202 = phi ptr [ %198, %194 ], [ %200, %199 ]
  call void %202(ptr noundef nonnull align 8 dereferenceable(24) %191, ptr noundef nonnull %7, i32 noundef %161), !prof !209
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %6) #21
  br label %203

203:                                              ; preds = %47, %91, %201, %133, %66, %28
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015DOMStringHelper16LongToCharactersElRNS_17FormatterListenerEMS1_FvPKtjE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 !prof !58 {
  %5 = alloca [101 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %5) #21
  %6 = getelementptr inbounds [101 x i16], ptr %5, i64 0, i64 100
  store i16 0, ptr %6, align 8, !tbaa !59
  %7 = icmp slt i64 %0, 0
  br i1 %7, label %8, label %20, !prof !190

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ %0, %4 ]
  %10 = phi ptr [ %14, %8 ], [ %6, %4 ]
  %11 = srem i64 %9, 10
  %12 = trunc i64 %11 to i16
  %13 = sub nsw i16 48, %12
  %14 = getelementptr inbounds i16, ptr %10, i64 -1
  store i16 %13, ptr %14, align 2, !tbaa !59
  %15 = sdiv i64 %9, 10
  %16 = add i64 %9, 9
  %17 = icmp ult i64 %16, 19
  br i1 %17, label %18, label %8, !llvm.loop !191

18:                                               ; preds = %8
  %19 = getelementptr inbounds i16, ptr %10, i64 -2
  store i16 45, ptr %19, align 2, !tbaa !59
  br label %29

20:                                               ; preds = %4, %20
  %21 = phi i64 [ %27, %20 ], [ %0, %4 ]
  %22 = phi ptr [ %26, %20 ], [ %6, %4 ]
  %23 = urem i64 %21, 10
  %24 = trunc i64 %23 to i16
  %25 = or disjoint i16 %24, 48
  %26 = getelementptr inbounds i16, ptr %22, i64 -1
  store i16 %25, ptr %26, align 2, !tbaa !59
  %27 = udiv i64 %21, 10
  %28 = icmp ult i64 %21, 10
  br i1 %28, label %29, label %20, !prof !192, !llvm.loop !193

29:                                               ; preds = %20, %18
  %30 = phi ptr [ %19, %18 ], [ %26, %20 ]
  %31 = getelementptr inbounds i8, ptr %1, i64 %3
  %32 = and i64 %2, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34, !prof !190

34:                                               ; preds = %29
  %35 = load ptr, ptr %31, align 8, !tbaa !94
  %36 = getelementptr i8, ptr %35, i64 %2
  %37 = getelementptr i8, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !nosanitize !183
  br label %41

39:                                               ; preds = %29
  %40 = inttoptr i64 %2 to ptr
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %38, %34 ], [ %40, %39 ]
  %43 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %30)
  call void %42(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull %30, i32 noundef %43), !prof !210
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %5) #21
  ret void
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018LongToHexDOMStringElRNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  tail call void @_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringIlEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringIlEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat !prof !58 {
  %3 = alloca [101 x i16], align 16
  %4 = icmp sgt i64 %0, -1
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %3) #21
  %6 = getelementptr inbounds [101 x i16], ptr %3, i64 0, i64 100
  store i16 0, ptr %6, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %6, %5 ], [ %10, %7 ]
  %9 = phi i64 [ %0, %5 ], [ %17, %7 ]
  %10 = getelementptr inbounds i16, ptr %8, i64 -1
  %11 = and i64 %9, 15
  %12 = icmp ult i64 %11, 10
  %13 = trunc i64 %11 to i16
  %14 = add nuw nsw i16 %13, 55
  %15 = or disjoint i16 %13, 48
  %16 = select i1 %12, i16 %15, i16 %14
  store i16 %16, ptr %10, align 2, !tbaa !59
  %17 = lshr i64 %9, 4
  %18 = icmp ult i64 %9, 16
  br i1 %18, label %19, label %7, !llvm.loop !211

19:                                               ; preds = %7
  %20 = ptrtoint ptr %6 to i64
  %21 = ptrtoint ptr %10 to i64
  %22 = sub i64 %20, %21
  %23 = lshr exact i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %10)
  br label %28

28:                                               ; preds = %19, %26
  %29 = phi i32 [ %27, %26 ], [ %24, %19 ]
  %30 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %10, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %3) #21
  br label %31

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  tail call void @_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringImEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033UnsignedScalarToHexadecimalStringImEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat !prof !58 {
  %3 = alloca [101 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %3) #21
  %4 = getelementptr inbounds [101 x i16], ptr %3, i64 0, i64 100
  store i16 0, ptr %4, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %8, %5 ]
  %7 = phi i64 [ %0, %2 ], [ %15, %5 ]
  %8 = getelementptr inbounds i16, ptr %6, i64 -1
  %9 = and i64 %7, 15
  %10 = icmp ult i64 %9, 10
  %11 = trunc i64 %9 to i16
  %12 = add nuw nsw i16 %11, 55
  %13 = or disjoint i16 %11, 48
  %14 = select i1 %10, i16 %13, i16 %12
  store i16 %14, ptr %8, align 2, !tbaa !59
  %15 = lshr i64 %7, 4
  %16 = icmp ult i64 %7, 16
  br i1 %16, label %17, label %5, !llvm.loop !212

17:                                               ; preds = %5
  %18 = ptrtoint ptr %4 to i64
  %19 = ptrtoint ptr %8 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %8)
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi i32 [ %25, %24 ], [ %22, %17 ]
  %28 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %8, i32 noundef %27)
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat !prof !213 {
  %3 = alloca [101 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %3) #21
  %4 = getelementptr inbounds [101 x i16], ptr %3, i64 0, i64 100
  store i16 0, ptr %4, align 8, !tbaa !59
  %5 = icmp slt i64 %0, 0
  br i1 %5, label %6, label %18, !prof !175

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %13, %6 ], [ %0, %2 ]
  %8 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %9 = srem i64 %7, 10
  %10 = trunc i64 %9 to i16
  %11 = sub nsw i16 48, %10
  %12 = getelementptr inbounds i16, ptr %8, i64 -1
  store i16 %11, ptr %12, align 2, !tbaa !59
  %13 = sdiv i64 %7, 10
  %14 = add i64 %7, 9
  %15 = icmp ult i64 %14, 19
  br i1 %15, label %16, label %6, !llvm.loop !191

16:                                               ; preds = %6
  %17 = getelementptr inbounds i16, ptr %8, i64 -2
  store i16 45, ptr %17, align 2, !tbaa !59
  br label %27

18:                                               ; preds = %2, %18
  %19 = phi i64 [ %25, %18 ], [ %0, %2 ]
  %20 = phi ptr [ %24, %18 ], [ %4, %2 ]
  %21 = urem i64 %19, 10
  %22 = trunc i64 %21 to i16
  %23 = or disjoint i16 %22, 48
  %24 = getelementptr inbounds i16, ptr %20, i64 -1
  store i16 %23, ptr %24, align 2, !tbaa !59
  %25 = udiv i64 %19, 10
  %26 = icmp ult i64 %19, 10
  br i1 %26, label %27, label %18, !prof !214, !llvm.loop !193

27:                                               ; preds = %18, %16
  %28 = phi ptr [ %17, %16 ], [ %24, %18 ]
  %29 = ptrtoint ptr %4 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37, !prof !175

35:                                               ; preds = %27
  %36 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %28)
  br label %37

37:                                               ; preds = %27, %35
  %38 = phi i32 [ %36, %35 ], [ %33, %27 ]
  %39 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %28, i32 noundef %38)
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #8 !prof !58 {
  tail call void @_ZN11xalanc_1_1021ScalarToDecimalStringImEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021ScalarToDecimalStringImEEvT_RNS_14XalanDOMStringE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #8 comdat !prof !58 {
  %3 = alloca [101 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 202, ptr nonnull %3) #21
  %4 = getelementptr inbounds [101 x i16], ptr %3, i64 0, i64 100
  store i16 0, ptr %4, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %0, %2 ], [ %12, %5 ]
  %7 = phi ptr [ %4, %2 ], [ %11, %5 ]
  %8 = urem i64 %6, 10
  %9 = trunc i64 %8 to i16
  %10 = or disjoint i16 %9, 48
  %11 = getelementptr inbounds i16, ptr %7, i64 -1
  store i16 %10, ptr %11, align 2, !tbaa !59
  %12 = udiv i64 %6, 10
  %13 = icmp ult i64 %6, 10
  br i1 %13, label %14, label %5, !llvm.loop !215

14:                                               ; preds = %5
  %15 = ptrtoint ptr %4 to i64
  %16 = ptrtoint ptr %11 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %11)
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i32 [ %22, %21 ], [ %19, %14 ]
  %25 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %11, i32 noundef %24)
  call void @llvm.lifetime.end.p0(i64 202, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #6 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  br label %15

12:                                               ; preds = %15
  %13 = add nuw i32 %16, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %24, label %15, !llvm.loop !216

15:                                               ; preds = %5, %12
  %16 = phi i32 [ 0, %5 ], [ %13, %12 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %11, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !59
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !108
  %23 = icmp eq i8 %22, 6
  br i1 %23, label %12, label %24

24:                                               ; preds = %12, %15, %1
  %25 = phi i1 [ true, %1 ], [ true, %12 ], [ false, %15 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 !prof !217 {
  %4 = add i32 %2, %1
  %5 = icmp ule i32 %4, %1
  br i1 %5, label %28, label %6, !prof !218

6:                                                ; preds = %3
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds i16, ptr %0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !59
  %10 = zext i16 %9 to i64
  %11 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !108
  %13 = icmp eq i8 %12, 6
  br i1 %13, label %14, label %28, !prof !219

14:                                               ; preds = %6, %18
  %15 = phi i32 [ %16, %18 ], [ %1, %6 ]
  %16 = add nuw i32 %15, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %26, label %18, !prof !220, !llvm.loop !216

18:                                               ; preds = %14
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !59
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !108
  %25 = icmp eq i8 %24, 6
  br i1 %25, label %14, label %26, !prof !221, !llvm.loop !216

26:                                               ; preds = %18, %14
  %27 = icmp uge i32 %16, %4
  br label %28

28:                                               ; preds = %26, %6, %3
  %29 = phi i1 [ %5, %3 ], [ %5, %6 ], [ %27, %26 ]
  ret i1 %29
}

declare void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !83
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !223

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !146
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !144
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !94
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !224
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !147
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = load i64, ptr %5, align 8, !tbaa !83
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !225

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !146
  %24 = load i64, ptr %10, align 8, !tbaa !83
  %25 = load i64, ptr %11, align 8, !tbaa !144
  %26 = load ptr, ptr %17, align 8, !tbaa !147
  store ptr %4, ptr %3, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !144
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !147
  %33 = load ptr, ptr %3, align 8, !tbaa !146
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !226

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !94
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !227
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !146
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !144
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !147
  store ptr %53, ptr %0, align 8, !tbaa !146
  store i64 %52, ptr %5, align 8, !tbaa !83
  store i64 %51, ptr %55, align 8, !tbaa !144
  store ptr %50, ptr %57, align 8, !tbaa !147
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !228

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !94
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !229

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #22
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !83
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !223

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !146
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !83
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !144
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !94
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !231
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !147
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !147
  %24 = load i64, ptr %9, align 8, !tbaa !83
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !225

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !146
  %28 = load i64, ptr %6, align 8, !tbaa !83
  %29 = load i64, ptr %7, align 8, !tbaa !144
  %30 = load ptr, ptr %8, align 8, !tbaa !147
  %31 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %31, ptr %0, align 8, !tbaa !146
  %32 = load i64, ptr %14, align 8, !tbaa !83
  store i64 %32, ptr %6, align 8, !tbaa !83
  %33 = load i64, ptr %15, align 8, !tbaa !144
  store i64 %33, ptr %7, align 8, !tbaa !144
  %34 = load ptr, ptr %21, align 8, !tbaa !147
  store ptr %34, ptr %8, align 8, !tbaa !147
  store ptr %27, ptr %5, align 8, !tbaa !146
  store i64 %28, ptr %14, align 8, !tbaa !83
  store i64 %29, ptr %15, align 8, !tbaa !144
  store ptr %30, ptr %21, align 8, !tbaa !147
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !225

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !94
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !144
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !147
  %50 = load ptr, ptr %5, align 8, !tbaa !146
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !226

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !94
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !232
  store ptr %65, ptr %8, align 8, !tbaa !147
  store i64 %3, ptr %7, align 8, !tbaa !144
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !233 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !234

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !83
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !144
  br i1 %18, label %21, label %39, !prof !235

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !236

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !237

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !147
  %28 = load i64, ptr %12, align 8, !tbaa !83
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !59
  store i16 %34, ptr %32, align 2, !tbaa !59
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !238, !llvm.loop !239

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !240

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !146
  store ptr %42, ptr %5, align 8, !tbaa !146
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !83
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !144
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !94
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !241
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !147
  %51 = load i64, ptr %43, align 8, !tbaa !83
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !147
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !242

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !147
  %56 = load i64, ptr %43, align 8, !tbaa !83
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !242

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !147
  %60 = load i64, ptr %43, align 8, !tbaa !83
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !147
  %63 = load i64, ptr %12, align 8, !tbaa !83
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !242

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !146
  %67 = load i64, ptr %12, align 8, !tbaa !83
  %68 = load i64, ptr %19, align 8, !tbaa !144
  %69 = load ptr, ptr %15, align 8, !tbaa !147
  %70 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %70, ptr %0, align 8, !tbaa !146
  %71 = load i64, ptr %43, align 8, !tbaa !83
  store i64 %71, ptr %12, align 8, !tbaa !83
  %72 = load i64, ptr %44, align 8, !tbaa !144
  store i64 %72, ptr %19, align 8, !tbaa !144
  %73 = load ptr, ptr %50, align 8, !tbaa !147
  store ptr %73, ptr %15, align 8, !tbaa !147
  store ptr %66, ptr %5, align 8, !tbaa !146
  store i64 %67, ptr %43, align 8, !tbaa !83
  store i64 %68, ptr %44, align 8, !tbaa !144
  store ptr %69, ptr %50, align 8, !tbaa !147
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !243

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !94
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !244

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !144
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !147
  %89 = load ptr, ptr %5, align 8, !tbaa !146
  %90 = load ptr, ptr %89, align 8, !tbaa !94
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !245

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !246

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !246

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !247, !llvm.loop !248

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !249, !llvm.loop !250

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !251
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
  br i1 %123, label %124, label %120, !llvm.loop !252

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
  store i64 %36, ptr %12, align 8, !tbaa !83
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !253 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !144
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !254

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !59
  store i16 %13, ptr %12, align 2, !tbaa !59
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !83
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !146
  %24 = load i64, ptr %4, align 8, !tbaa !83
  %25 = load i64, ptr %6, align 8, !tbaa !144
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %28, ptr %0, align 8, !tbaa !146
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !83
  store i64 %30, ptr %4, align 8, !tbaa !83
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !144
  store i64 %32, ptr %6, align 8, !tbaa !144
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !147
  store ptr %34, ptr %26, align 8, !tbaa !147
  store ptr %23, ptr %3, align 8, !tbaa !146
  store i64 %24, ptr %29, align 8, !tbaa !83
  store i64 %25, ptr %31, align 8, !tbaa !144
  store ptr %27, ptr %33, align 8, !tbaa !147
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !94
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !144
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !147
  %52 = load ptr, ptr %3, align 8, !tbaa !146
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !256

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !83
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !257

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !146
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = load i64, ptr %6, align 8, !tbaa !144
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  %19 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %19, ptr %0, align 8, !tbaa !146
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !83
  store i64 %21, ptr %14, align 8, !tbaa !83
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !144
  store i64 %23, ptr %6, align 8, !tbaa !144
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  store ptr %25, ptr %17, align 8, !tbaa !147
  store ptr %13, ptr %3, align 8, !tbaa !146
  store i64 %15, ptr %20, align 8, !tbaa !83
  store i64 %16, ptr %22, align 8, !tbaa !144
  store ptr %18, ptr %24, align 8, !tbaa !147
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !258

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !94
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !259

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !147
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !83
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !260

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !261

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !147
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !83
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !83
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !147
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !262

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !147
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !263
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !92
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %12, ptr %0, align 8, !tbaa !97
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !92
  store i64 %14, ptr %6, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !98
  store i64 %16, ptr %8, align 8, !tbaa !98
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  store ptr %18, ptr %10, align 8, !tbaa !96
  store ptr %5, ptr %3, align 8, !tbaa !97
  store i64 %7, ptr %13, align 8, !tbaa !92
  store i64 %9, ptr %15, align 8, !tbaa !98
  store ptr %11, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !102

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !94
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !92
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !102

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !97
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !98
  %16 = load ptr, ptr %2, align 8, !tbaa !94
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !96
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = load i64, ptr %9, align 8, !tbaa !92
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !97
  %27 = load i64, ptr %6, align 8, !tbaa !92
  %28 = load i64, ptr %7, align 8, !tbaa !98
  %29 = load ptr, ptr %8, align 8, !tbaa !96
  %30 = load ptr, ptr %5, align 8, !tbaa !97
  store ptr %30, ptr %0, align 8, !tbaa !97
  %31 = load i64, ptr %14, align 8, !tbaa !92
  store i64 %31, ptr %6, align 8, !tbaa !92
  %32 = load i64, ptr %15, align 8, !tbaa !98
  store i64 %32, ptr %7, align 8, !tbaa !98
  %33 = load ptr, ptr %20, align 8, !tbaa !96
  store ptr %33, ptr %8, align 8, !tbaa !96
  store ptr %26, ptr %5, align 8, !tbaa !97
  store i64 %27, ptr %14, align 8, !tbaa !92
  store i64 %28, ptr %15, align 8, !tbaa !98
  store ptr %29, ptr %20, align 8, !tbaa !96
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !94
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #22
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !98
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !96
  %49 = load ptr, ptr %5, align 8, !tbaa !97
  %50 = load ptr, ptr %49, align 8, !tbaa !94
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #22
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !101

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !94
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !264
  store ptr %63, ptr %8, align 8, !tbaa !96
  store i64 %3, ptr %7, align 8, !tbaa !98
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !201

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !108
  store i8 %13, ptr %12, align 1, !tbaa !108
  %14 = load i64, ptr %4, align 8, !tbaa !92
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !92
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !97
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !97
  %25 = load i64, ptr %4, align 8, !tbaa !92
  %26 = load i64, ptr %6, align 8, !tbaa !98
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = load ptr, ptr %3, align 8, !tbaa !97
  store ptr %29, ptr %0, align 8, !tbaa !97
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !92
  store i64 %31, ptr %4, align 8, !tbaa !92
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !98
  store i64 %33, ptr %6, align 8, !tbaa !98
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  store ptr %35, ptr %27, align 8, !tbaa !96
  store ptr %24, ptr %3, align 8, !tbaa !97
  store i64 %25, ptr %30, align 8, !tbaa !92
  store i64 %26, ptr %32, align 8, !tbaa !98
  store ptr %28, ptr %34, align 8, !tbaa !96
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !94
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #22
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !98
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !96
  %53 = load ptr, ptr %3, align 8, !tbaa !97
  %54 = load ptr, ptr %53, align 8, !tbaa !94
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #22
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMStringHelper.cpp() #18 section ".text.startup" !prof !138 !PGOFuncName !265 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 2}
!36 = !{ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 2}
!37 = !{ptr @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj, i64 243632}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2EPKtS5_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 12}
!39 = !{ptr @_ZN11xalanc_1_1016WideStringToLongEPKt, ptr @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt, i64 42787}
!40 = !{ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 12190}
!41 = !{ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE, i64 42}
!42 = !{ptr @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 36989}
!43 = !{ptr @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE, ptr @sprintf, i64 40321}
!44 = !{ptr @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE, ptr @strtod, i64 40321}
!45 = !{ptr @_ZN11xalanc_1_1021ScalarToDecimalStringIlEEvT_RNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 42}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!55 = !{ptr @_GLOBAL__sub_I_DOMStringHelper.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!56 = !{ptr @_GLOBAL__sub_I_DOMStringHelper.cpp, ptr @__cxa_atexit, i64 1}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!"branch_weights", i32 62730, i32 2478468}
!68 = distinct !{!68, !64, !65}
!69 = !{!"branch_weights", i32 62730, i32 439110}
!70 = !{!"branch_weights", i32 0, i32 62730}
!71 = !{!"branch_weights", i32 0, i32 1023426}
!72 = !{!"branch_weights", i32 1, i32 62729}
!73 = !{!"branch_weights", i32 460725, i32 960696}
!74 = !{!"branch_weights", i32 62729, i32 1358692}
!75 = !{!"branch_weights", i32 960696, i32 62730}
!76 = !{!"function_entry_count", i64 62730}
!77 = !{!78, !82, i64 32}
!78 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !79, i64 0, !82, i64 32}
!79 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !80, i64 0, !81, i64 8, !81, i64 16, !80, i64 24}
!80 = !{!"any pointer", !61, i64 0}
!81 = !{!"long", !61, i64 0}
!82 = !{!"int", !61, i64 0}
!83 = !{!79, !81, i64 8}
!84 = distinct !{!84, !64, !65}
!85 = !{!"function_entry_count", i64 752467}
!86 = !{!"branch_weights", i32 0, i32 752467}
!87 = !{!"branch_weights", i32 165138, i32 587329}
!88 = !{!"branch_weights", i32 44, i32 587322}
!89 = !{!"branch_weights", i32 7, i32 587359}
!90 = distinct !{!90, !64, !65}
!91 = distinct !{!91, !64, !65}
!92 = !{!93, !81, i64 8}
!93 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !80, i64 0, !81, i64 8, !81, i64 16, !80, i64 24}
!94 = !{!95, !95, i64 0}
!95 = !{!"vtable pointer", !62, i64 0}
!96 = !{!93, !80, i64 24}
!97 = !{!93, !80, i64 0}
!98 = !{!93, !81, i64 16}
!99 = !{!"function_entry_count", i64 2}
!100 = !{!"branch_weights", i32 2, i32 19}
!101 = !{!"branch_weights", i32 0, i32 2}
!102 = !{!"branch_weights", i32 2, i32 0}
!103 = !{!"function_entry_count", i64 243632}
!104 = !{!"branch_weights", i32 0, i32 243632}
!105 = !{!"branch_weights", i32 1, i32 243631}
!106 = distinct !{!106, !64, !65}
!107 = distinct !{!107, !64, !65}
!108 = !{!61, !61, i64 0}
!109 = distinct !{!109, !64, !65}
!110 = !{!"function_entry_count", i64 790}
!111 = !{!"branch_weights", i32 223, i32 567}
!112 = !{!"branch_weights", i32 272, i32 295}
!113 = !{!"branch_weights", i32 1, i32 188}
!114 = !{!"branch_weights", i32 436360, i32 1972344}
!115 = distinct !{!115, !64, !65}
!116 = !{!"function_entry_count", i64 6381551}
!117 = !{!"branch_weights", i32 1648248, i32 4733303}
!118 = !{!"branch_weights", i32 262382, i32 4470921}
!119 = !{!"branch_weights", i32 1, i32 1066898}
!120 = !{!"branch_weights", i32 5990367, i32 18190}
!121 = !{!"branch_weights", i32 2096, i32 6006461}
!122 = !{!"branch_weights", i32 -1459025720, i32 1571133279}
!123 = distinct !{!123, !64, !65}
!124 = !{!"function_entry_count", i64 1041189}
!125 = !{!"branch_weights", i32 0, i32 1041189}
!126 = !{!"branch_weights", i32 1, i32 293329}
!127 = !{!"branch_weights", i32 6466348, i32 747859}
!128 = !{!"branch_weights", i32 293329, i32 6920878}
!129 = distinct !{!129, !64, !65}
!130 = !{!"branch_weights", i32 277283, i32 763906}
!131 = !{!"branch_weights", i32 16047, i32 747859}
!132 = !{!"function_entry_count", i64 4365473}
!133 = !{!"branch_weights", i32 0, i32 4365473}
!134 = !{!"branch_weights", i32 570873, i32 1}
!135 = !{!"branch_weights", i32 42687730, i32 570873}
!136 = distinct !{!136, !64, !65}
!137 = !{!"branch_weights", i32 3794599, i32 39464004}
!138 = !{!"function_entry_count", i64 1}
!139 = !{!"branch_weights", i32 1, i32 127}
!140 = !{!"branch_weights", i32 0, i32 4}
!141 = !{!"branch_weights", i32 4, i32 0}
!142 = !{!"branch_weights", i32 127, i32 385}
!143 = distinct !{!143, !64, !65}
!144 = !{!79, !81, i64 16}
!145 = distinct !{!145, !64, !65}
!146 = !{!79, !80, i64 0}
!147 = !{!79, !80, i64 24}
!148 = !{!"function_entry_count", i64 12}
!149 = !{!"branch_weights", i32 12, i32 0}
!150 = distinct !{!150, !64, !65}
!151 = distinct !{!151, !64, !65}
!152 = distinct !{!152, !64, !65}
!153 = distinct !{!153, !64, !65}
!154 = distinct !{!154, !64, !65}
!155 = distinct !{!155, !64, !65}
!156 = distinct !{!156, !64, !65}
!157 = !{!"function_entry_count", i64 42787}
!158 = !{!"branch_weights", i32 0, i32 42787}
!159 = !{!"branch_weights", i32 42787, i32 0}
!160 = distinct !{!160, !64, !65}
!161 = !{!"branch_weights", i32 1, i32 42786}
!162 = !{!"branch_weights", i32 49639, i32 0}
!163 = !{!"branch_weights", i32 42786, i32 6853}
!164 = distinct !{!164, !64, !65}
!165 = distinct !{!165, !64, !65}
!166 = distinct !{!166, !64, !65}
!167 = distinct !{!167, !64, !65}
!168 = distinct !{!168, !64, !65}
!169 = distinct !{!169, !64, !65}
!170 = !{!"function_entry_count", i64 12232}
!171 = !{!"branch_weights", i32 12232, i32 0}
!172 = !{!"branch_weights", i32 0, i32 12232}
!173 = !{!"branch_weights", i32 12190, i32 42}
!174 = !{!"branch_weights", i32 42, i32 0}
!175 = !{!"branch_weights", i32 0, i32 42}
!176 = !{!80, !80, i64 0}
!177 = distinct !{!177, !64, !65}
!178 = distinct !{!178, !64, !65}
!179 = distinct !{!179, !64, !65}
!180 = !{!"function_entry_count", i64 77903}
!181 = !{!"branch_weights", i32 56404, i32 21499}
!182 = !{!"branch_weights", i32 0, i32 77903}
!183 = !{}
!184 = !{!"branch_weights", i32 606, i32 77297}
!185 = !{!"branch_weights", i32 55798, i32 21499}
!186 = !{!"branch_weights", i32 0, i32 77297}
!187 = !{!"branch_weights", i32 0, i32 606}
!188 = !{!"VP", i32 0, i64 606, i64 7358946498439485224, i64 606}
!189 = !{!"branch_weights", i32 36989, i32 40308}
!190 = !{!"branch_weights", i32 0, i32 36989}
!191 = distinct !{!191, !64, !65}
!192 = !{!"branch_weights", i32 36989, i32 17687}
!193 = distinct !{!193, !64, !65}
!194 = !{!"VP", i32 0, i64 36989, i64 7358946498439485224, i64 36989}
!195 = !{!"branch_weights", i32 13, i32 40308}
!196 = !{!"branch_weights", i32 0, i32 13}
!197 = distinct !{!197, !64, !65}
!198 = !{!"branch_weights", i32 342639, i32 40308}
!199 = distinct !{!199, !64, !65}
!200 = !{!"branch_weights", i32 40308, i32 0}
!201 = !{!"branch_weights", i32 1, i32 0}
!202 = !{!"branch_weights", i32 100762, i32 0}
!203 = distinct !{!203, !64, !65}
!204 = !{!"branch_weights", i32 60454, i32 40308}
!205 = !{!"branch_weights", i32 1, i32 40307}
!206 = !{!"branch_weights", i32 40307, i32 157798}
!207 = distinct !{!207, !64, !65}
!208 = !{!"branch_weights", i32 0, i32 40308}
!209 = !{!"VP", i32 0, i64 40308, i64 7358946498439485224, i64 40308}
!210 = !{!"VP", i32 0, i64 0, i64 7358946498439485224, i64 0}
!211 = distinct !{!211, !64, !65}
!212 = distinct !{!212, !64, !65}
!213 = !{!"function_entry_count", i64 42}
!214 = !{!"branch_weights", i32 42, i32 15}
!215 = distinct !{!215, !64, !65}
!216 = distinct !{!216, !64, !65}
!217 = !{!"function_entry_count", i64 632674}
!218 = !{!"branch_weights", i32 1, i32 13272}
!219 = !{!"branch_weights", i32 345808, i32 273593}
!220 = !{!"branch_weights", i32 13272, i32 951937}
!221 = !{!"branch_weights", i32 0, i32 345808}
!222 = !{!"function_entry_count", i64 64551586}
!223 = !{!"branch_weights", i32 64551590, i32 18}
!224 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!225 = !{!"branch_weights", i32 18, i32 0}
!226 = !{!"branch_weights", i32 4, i32 64551586}
!227 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!228 = !{!"branch_weights", i32 42418193, i32 22133393}
!229 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!230 = !{!"function_entry_count", i64 22}
!231 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!232 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!233 = !{!"function_entry_count", i64 155828046}
!234 = !{!"branch_weights", i32 0, i32 155828046}
!235 = !{!"branch_weights", i32 133170777, i32 22657269}
!236 = !{!"branch_weights", i32 20, i32 133170757}
!237 = !{!"branch_weights", i32 1, i32 19024395}
!238 = !{!"branch_weights", i32 19024395, i32 -26420601}
!239 = distinct !{!239, !64, !65}
!240 = !{!"branch_weights", i32 20748786, i32 1908483}
!241 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!242 = !{!"branch_weights", i32 20748786, i32 0}
!243 = !{!"branch_weights", i32 0, i32 20748786}
!244 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!245 = !{!"branch_weights", i32 0, i32 1908483}
!246 = !{!"branch_weights", i32 1, i32 1908482}
!247 = !{!"branch_weights", i32 1908482, i32 49797853}
!248 = distinct !{!248, !64, !65}
!249 = !{!"branch_weights", i32 1908482, i32 1}
!250 = distinct !{!250, !64, !65}
!251 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!252 = distinct !{!252, !64, !65}
!253 = !{!"function_entry_count", i64 124150652}
!254 = !{!"branch_weights", i32 124150652, i32 0}
!255 = !{!"function_entry_count", i64 41614}
!256 = !{!"branch_weights", i32 0, i32 41614}
!257 = !{!"branch_weights", i32 12, i32 41602}
!258 = !{!"branch_weights", i32 5, i32 7}
!259 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!260 = !{!"branch_weights", i32 354, i32 41248}
!261 = !{!"branch_weights", i32 40889, i32 359}
!262 = !{!"branch_weights", i32 40581, i32 1021}
!263 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!264 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!265 = !{!"DOMStringHelper.cpp;_GLOBAL__sub_I_DOMStringHelper.cpp"}
