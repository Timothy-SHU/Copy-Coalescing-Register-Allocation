; ModuleID = 'DoubleSupport.cpp'
source_filename = "DoubleSupport.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = dso_local local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion" zeroinitializer, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = dso_local local_unnamed_addr constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double 0x7FF0000000000000 }, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = dso_local local_unnamed_addr constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double 0xFFF0000000000000 }, align 8
@_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE = dso_local local_unnamed_addr constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" zeroinitializer, align 8
@_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE = dso_local local_unnamed_addr constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double -0.000000e+00 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local void @_ZN11xalanc_1_1013DoubleSupport10initializeEv() local_unnamed_addr #0 align 2 !prof !45 {
  %1 = tail call double @sqrt(double noundef -2.010000e+00) #23
  store double %1, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1013DoubleSupport9terminateEv() local_unnamed_addr #2 align 2 !prof !45 {
  store double 0.000000e+00, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !50
  br i1 %11, label %22, label %12, !prof !51

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %7, %17
  %19 = select i1 %15, i1 true, i1 %18, !prof !52
  %20 = fcmp oeq double %0, %1
  %21 = and i1 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %0, double noundef %1) local_unnamed_addr #4 align 2 !prof !53 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !54
  br i1 %11, label %22, label %12, !prof !55

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %7, %17
  %19 = select i1 %15, i1 true, i1 %18, !prof !55
  %20 = fcmp olt double %0, %1
  %21 = and i1 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %0, double noundef %1) local_unnamed_addr #5 align 2 !prof !56 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %7, %17
  %19 = select i1 %15, i1 true, i1 %18
  %20 = fcmp ole double %0, %1
  %21 = and i1 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %0, double noundef %1) local_unnamed_addr #5 align 2 !prof !56 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %7, %17
  %19 = select i1 %15, i1 true, i1 %18
  %20 = fcmp ogt double %0, %1
  %21 = and i1 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %0, double noundef %1) local_unnamed_addr #5 align 2 !prof !56 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %7, %17
  %19 = select i1 %15, i1 true, i1 %18
  %20 = fcmp oge double %0, %1
  %21 = and i1 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !57 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !58
  br i1 %11, label %22, label %12, !prof !59

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %7, %17
  %19 = select i1 %15, i1 %18, i1 false, !prof !60
  br i1 %19, label %22, label %20, !prof !59

20:                                               ; preds = %12
  %21 = fadd double %0, %1
  br label %22

22:                                               ; preds = %12, %2, %20
  %23 = phi double [ %21, %20 ], [ %0, %2 ], [ %1, %12 ]
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %0, double noundef %1) local_unnamed_addr #4 align 2 !prof !61 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !62
  br i1 %11, label %22, label %12, !prof !63

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %7, %17
  %19 = select i1 %15, i1 %18, i1 false, !prof !62
  br i1 %19, label %22, label %20, !prof !63

20:                                               ; preds = %12
  %21 = fsub double %0, %1
  br label %22

22:                                               ; preds = %12, %2, %20
  %23 = phi double [ %21, %20 ], [ %0, %2 ], [ %1, %12 ]
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef %0, double noundef %1) local_unnamed_addr #4 align 2 !prof !53 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !54
  br i1 %11, label %22, label %12, !prof !55

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %7, %17
  %19 = select i1 %15, i1 %18, i1 false, !prof !54
  br i1 %19, label %22, label %20, !prof !55

20:                                               ; preds = %12
  %21 = fmul double %0, %1
  br label %22

22:                                               ; preds = %12, %2, %20
  %23 = phi double [ %21, %20 ], [ %0, %2 ], [ %1, %12 ]
  ret double %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %0, double noundef %1) local_unnamed_addr #4 align 2 !prof !64 {
  %3 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %4 = bitcast double %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %8 = lshr i64 %4, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %6, i1 %10, i1 false, !prof !65
  br i1 %11, label %33, label %12, !prof !66

12:                                               ; preds = %2
  %13 = bitcast double %1 to i64
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %3, %14
  %16 = lshr i64 %13, 32
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %7, %17
  %19 = select i1 %15, i1 %18, i1 false, !prof !67
  br i1 %19, label %33, label %20, !prof !66

20:                                               ; preds = %12
  %21 = fcmp une double %1, 0.000000e+00
  br i1 %21, label %22, label %24, !prof !67

22:                                               ; preds = %20
  %23 = fdiv double %0, %1
  br label %33

24:                                               ; preds = %20
  %25 = fcmp oeq double %0, 0.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %33

28:                                               ; preds = %24
  %29 = fcmp ogt double %0, 0.000000e+00
  %30 = icmp eq i64 %13, 0
  %31 = and i1 %29, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %28, %12, %2, %32, %26, %22
  %34 = phi double [ %23, %22 ], [ %27, %26 ], [ 0xFFF0000000000000, %32 ], [ %0, %2 ], [ %1, %12 ], [ 0x7FF0000000000000, %28 ]
  ret double %34
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef %0, double noundef %1) local_unnamed_addr #6 align 2 !prof !53 {
  %3 = alloca double, align 8
  %4 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %5 = bitcast double %0 to i64
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %4, %6
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %9 = lshr i64 %5, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %7, i1 %11, i1 false, !prof !54
  br i1 %12, label %53, label %13, !prof !55

13:                                               ; preds = %2
  %14 = bitcast double %1 to i64
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %4, %15
  %17 = lshr i64 %14, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %8, %18
  %20 = select i1 %16, i1 %19, i1 false, !prof !54
  br i1 %20, label %53, label %21, !prof !55

21:                                               ; preds = %13
  %22 = fcmp oeq double %1, 0.000000e+00
  br i1 %22, label %23, label %25, !prof !55

23:                                               ; preds = %21
  %24 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %53

25:                                               ; preds = %21
  %26 = fptosi double %0 to i64
  %27 = sitofp i64 %26 to double
  %28 = fcmp oeq double %27, %0
  br i1 %28, label %29, label %36, !prof !54

29:                                               ; preds = %25
  %30 = fptosi double %1 to i64
  %31 = sitofp i64 %30 to double
  %32 = fcmp oeq double %31, %1
  br i1 %32, label %33, label %36, !prof !54

33:                                               ; preds = %29
  %34 = srem i64 %26, %30
  %35 = sitofp i64 %34 to double
  br label %53

36:                                               ; preds = %29, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %37 = fcmp une double %1, 0.000000e+00
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = fdiv double %0, %1
  br label %49

40:                                               ; preds = %36
  %41 = fcmp oeq double %0, 0.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %49

44:                                               ; preds = %40
  %45 = fcmp ogt double %0, 0.000000e+00
  %46 = icmp eq i64 %14, 0
  %47 = and i1 %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %38, %42, %44, %48
  %50 = phi double [ %39, %38 ], [ %43, %42 ], [ 0xFFF0000000000000, %48 ], [ 0x7FF0000000000000, %44 ]
  %51 = call double @modf(double noundef %50, ptr noundef nonnull %3) #23
  %52 = fmul double %51, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %53

53:                                               ; preds = %13, %2, %49, %33, %23
  %54 = phi double [ %24, %23 ], [ %35, %33 ], [ %52, %49 ], [ %0, %2 ], [ %1, %13 ]
  ret double %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %0) local_unnamed_addr #5 align 2 !prof !56 {
  %2 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %3 = bitcast double %0 to i64
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %2, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %7 = lshr i64 %3, 32
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  %10 = select i1 %5, i1 %9, i1 false
  %11 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8
  %12 = fneg double %0
  %13 = select i1 %10, double %11, double %12
  ret double %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport3absEd(double noundef %0) local_unnamed_addr #5 align 2 !prof !56 {
  %2 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %3 = bitcast double %0 to i64
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %2, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %7 = lshr i64 %3, 32
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  %10 = select i1 %5, i1 %9, i1 false
  %11 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8
  %12 = tail call double @llvm.fabs.f64(double %0)
  %13 = select i1 %10, double %11, double %12
  ret double %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 !prof !68 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8, !prof !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !74

11:                                               ; preds = %2
  %12 = load i16, ptr %9, align 2, !tbaa !75
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16, !prof !77

14:                                               ; preds = %11, %2
  %15 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %26

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !78
  %17 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br i1 %17, label %20, label %18, !prof !80

18:                                               ; preds = %16
  %19 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %24

20:                                               ; preds = %16
  %21 = load i8, ptr %3, align 1, !tbaa !78, !range !81, !noundef !82
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef double @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull %9, i1 noundef zeroext %22, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi double [ %19, %18 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #23
  br label %26

26:                                               ; preds = %14, %24
  %27 = phi double [ %15, %14 ], [ %25, %24 ]
  ret double %27
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 !prof !45 {
  %3 = alloca i8, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5, !prof !74

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !75
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %10, !prof !77

8:                                                ; preds = %5, %2
  %9 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %20

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !78
  %11 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  br i1 %11, label %14, label %12, !prof !80

12:                                               ; preds = %10
  %13 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %18

14:                                               ; preds = %10
  %15 = load i8, ptr %3, align 1, !tbaa !78, !range !81, !noundef !82
  %16 = icmp ne i8 %15, 0
  %17 = tail call noundef double @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull %0, i1 noundef zeroext %16, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %18

18:                                               ; preds = %12, %14
  %19 = phi double [ %13, %12 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #23
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi double [ %9, %8 ], [ %19, %18 ]
  ret double %21
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #11 align 2 !prof !56 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  store i8 0, ptr %2, align 1, !tbaa !78
  %9 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr nocapture noundef readonly %0) local_unnamed_addr #12 align 2 !prof !83 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  store i8 0, ptr %2, align 1, !tbaa !78
  %3 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  ret i1 %3
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %0) local_unnamed_addr #13 align 2 !prof !84 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  %6 = bitcast double %0 to i64
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %5, %7
  %9 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %10 = lshr i64 %6, 32
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %9, %11
  %13 = select i1 %8, i1 %12, i1 false, !prof !85
  br i1 %13, label %14, label %16, !prof !86

14:                                               ; preds = %1
  %15 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !46
  br label %47

16:                                               ; preds = %1
  switch i64 %6, label %18 [
    i64 9218868437227405312, label %47
    i64 -4503599627370496, label %17
  ], !prof !87

17:                                               ; preds = %16
  br label %47

18:                                               ; preds = %16
  %19 = fcmp oeq double %0, 0.000000e+00
  br i1 %19, label %47, label %20, !prof !86

20:                                               ; preds = %18
  %21 = fcmp ogt double %0, 0.000000e+00
  br i1 %21, label %22, label %32, !prof !85

22:                                               ; preds = %20
  %23 = fcmp olt double %0, 0x43E0000000000000
  br i1 %23, label %24, label %28, !prof !85

24:                                               ; preds = %22
  %25 = fadd double %0, 5.000000e-01
  %26 = fptosi double %25 to i64
  %27 = sitofp i64 %26 to double
  br label %47

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store double 0.000000e+00, ptr %3, align 8, !tbaa !88
  %29 = fadd double %0, 5.000000e-01
  %30 = call double @modf(double noundef %29, ptr noundef nonnull %3) #23
  %31 = load double, ptr %3, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %47

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store double 0.000000e+00, ptr %4, align 8, !tbaa !88
  %33 = call double @modf(double noundef %0, ptr noundef nonnull %4) #23
  %34 = fcmp oeq double %33, -5.000000e-01
  %35 = select i1 %34, double 5.000000e-01, double -5.000000e-01
  %36 = fadd double %35, %0
  %37 = fcmp ogt double %36, 0xC3E0000000000000
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = fptosi double %36 to i64
  %40 = sitofp i64 %39 to double
  br label %45

41:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store double 0.000000e+00, ptr %2, align 8, !tbaa !88
  %42 = fadd double %36, 5.000000e-01
  %43 = call double @modf(double noundef %42, ptr noundef nonnull %2) #23
  %44 = load double, ptr %2, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi double [ %40, %38 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %47

47:                                               ; preds = %16, %18, %45, %28, %24, %17, %14
  %48 = phi double [ %15, %14 ], [ 0xFFF0000000000000, %17 ], [ %27, %24 ], [ %31, %28 ], [ %46, %45 ], [ 0.000000e+00, %18 ], [ 0x7FF0000000000000, %16 ]
  ret double %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #12 !prof !90 !PGOFuncName !91 {
  %3 = load i16, ptr %0, align 2, !tbaa !75
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %16, label %5, !prof !92

5:                                                ; preds = %2, %12
  %6 = phi i16 [ %14, %12 ], [ %3, %2 ]
  %7 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %8 = zext i16 %6 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %16, !prof !93

12:                                               ; preds = %5
  %13 = getelementptr inbounds i16, ptr %7, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !75
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %5, !prof !93, !llvm.loop !94

16:                                               ; preds = %5, %12, %2
  %17 = phi ptr [ %0, %2 ], [ %7, %5 ], [ %13, %12 ]
  %18 = load i16, ptr %17, align 2, !tbaa !75
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %92, label %20, !prof !97

20:                                               ; preds = %16
  %21 = load i8, ptr %1, align 1, !tbaa !78
  br label %22

22:                                               ; preds = %20, %76
  %23 = phi i16 [ %83, %76 ], [ %18, %20 ]
  %24 = phi i8 [ %82, %76 ], [ 0, %20 ]
  %25 = phi i8 [ %81, %76 ], [ 0, %20 ]
  %26 = phi i8 [ %80, %76 ], [ 0, %20 ]
  %27 = phi i8 [ %79, %76 ], [ 0, %20 ]
  %28 = phi ptr [ %78, %76 ], [ %17, %20 ]
  %29 = phi i8 [ %77, %76 ], [ %21, %20 ]
  switch i16 %23, label %76 [
    i16 46, label %30
    i16 45, label %37
    i16 48, label %50
    i16 49, label %50
    i16 50, label %50
    i16 51, label %50
    i16 52, label %50
    i16 53, label %50
    i16 54, label %50
    i16 55, label %50
    i16 56, label %50
    i16 57, label %50
    i16 32, label %59
    i16 13, label %59
    i16 9, label %59
    i16 10, label %59
  ], !prof !98

30:                                               ; preds = %22
  %31 = icmp eq i8 %29, 0
  %32 = and i8 %24, 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %31, i1 %33, i1 false, !prof !99
  br i1 %34, label %35, label %76, !prof !99

35:                                               ; preds = %30
  store i8 1, ptr %1, align 1, !tbaa !78
  %36 = getelementptr inbounds i16, ptr %28, i64 1
  br label %76

37:                                               ; preds = %22
  %38 = icmp eq i8 %29, 0
  %39 = and i8 %25, 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %38, i1 %40, i1 false, !prof !100
  %42 = and i8 %26, 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false, !prof !100
  %45 = and i8 %24, 1
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %44, i1 %46, i1 false, !prof !100
  br i1 %47, label %48, label %76, !prof !100

48:                                               ; preds = %37
  %49 = getelementptr inbounds i16, ptr %28, i64 1
  br label %76

50:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %51 = and i8 %24, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %76, !prof !101

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %58, %53 ], [ %28, %50 ]
  %55 = load i16, ptr %54, align 2, !tbaa !75
  %56 = add i16 %55, -48
  %57 = icmp ult i16 %56, 10
  %58 = getelementptr inbounds i16, ptr %54, i64 1
  br i1 %57, label %53, label %76, !prof !102, !llvm.loop !103

59:                                               ; preds = %22, %22, %22, %22
  %60 = and i8 %24, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i16, ptr %28, align 2, !tbaa !75
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62, %72
  %66 = phi i16 [ %74, %72 ], [ %63, %62 ]
  %67 = phi ptr [ %73, %72 ], [ %28, %62 ]
  %68 = zext i16 %66 to i64
  %69 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !46
  %71 = icmp eq i8 %70, 6
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = getelementptr inbounds i16, ptr %67, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !75
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %65, !llvm.loop !94

76:                                               ; preds = %65, %72, %53, %62, %59, %22, %50, %37, %30, %48, %35
  %77 = phi i8 [ %29, %50 ], [ %29, %48 ], [ %29, %37 ], [ 1, %35 ], [ %29, %30 ], [ %29, %22 ], [ %29, %59 ], [ %29, %62 ], [ %29, %53 ], [ %29, %72 ], [ %29, %65 ]
  %78 = phi ptr [ %28, %50 ], [ %49, %48 ], [ %28, %37 ], [ %36, %35 ], [ %28, %30 ], [ %28, %22 ], [ %28, %59 ], [ %28, %62 ], [ %54, %53 ], [ %67, %65 ], [ %73, %72 ]
  %79 = phi i8 [ 1, %50 ], [ %27, %48 ], [ 1, %37 ], [ %27, %35 ], [ 1, %30 ], [ 1, %22 ], [ 1, %59 ], [ %27, %62 ], [ %27, %53 ], [ %27, %72 ], [ %27, %65 ]
  %80 = phi i8 [ %26, %50 ], [ %26, %48 ], [ %26, %37 ], [ %26, %35 ], [ %26, %30 ], [ %26, %22 ], [ %26, %59 ], [ %26, %62 ], [ 1, %53 ], [ %26, %72 ], [ %26, %65 ]
  %81 = phi i8 [ %25, %50 ], [ 1, %48 ], [ %25, %37 ], [ %25, %35 ], [ %25, %30 ], [ %25, %22 ], [ %25, %59 ], [ %25, %62 ], [ %25, %53 ], [ %25, %72 ], [ %25, %65 ]
  %82 = phi i8 [ %24, %50 ], [ %24, %48 ], [ %24, %37 ], [ %24, %35 ], [ %24, %30 ], [ %24, %22 ], [ %24, %59 ], [ 1, %62 ], [ %24, %53 ], [ 1, %72 ], [ 1, %65 ]
  %83 = load i16, ptr %78, align 2, !tbaa !75
  %84 = icmp ne i16 %83, 0
  %85 = and i8 %79, 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %84, i1 %86, i1 false, !prof !104
  br i1 %87, label %22, label %88, !prof !105, !llvm.loop !106

88:                                               ; preds = %76
  %89 = and i8 %80, 1
  %90 = icmp ne i8 %89, 0
  %91 = select i1 %86, i1 %90, i1 false, !prof !107
  br label %92

92:                                               ; preds = %88, %16
  %93 = phi i1 [ false, %16 ], [ %91, %88 ]
  ret i1 %93
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 !prof !108 {
  %4 = alloca [200 x i8], align 16
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %0, %3 ], [ %10, %6 ]
  %8 = load i16, ptr %7, align 2, !tbaa !75
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %9, label %11, label %6, !prof !109, !llvm.loop !110

11:                                               ; preds = %6
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = icmp ugt i32 %16, 9
  %18 = or i1 %17, %1
  br i1 %18, label %22, label %19, !prof !111

19:                                               ; preds = %11
  %20 = tail call noundef i64 @_ZN11xalanc_1_1016WideStringToLongEPKt(ptr noundef %0)
  %21 = sitofp i64 %20 to double
  br label %101

22:                                               ; preds = %11
  %23 = tail call ptr @localeconv() #23
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  %25 = load i8, ptr %24, align 1, !tbaa !46
  %26 = load i16, ptr %0, align 2, !tbaa !75
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %41, label %28, !prof !92

28:                                               ; preds = %22, %36
  %29 = phi i16 [ %39, %36 ], [ %26, %22 ]
  %30 = phi i32 [ %38, %36 ], [ %16, %22 ]
  %31 = phi ptr [ %37, %36 ], [ %0, %22 ]
  %32 = zext i16 %29 to i64
  %33 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !46
  %35 = icmp eq i8 %34, 6
  br i1 %35, label %36, label %41, !prof !114

36:                                               ; preds = %28
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = add i32 %30, -1
  %39 = load i16, ptr %37, align 2, !tbaa !75
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %28, !prof !114, !llvm.loop !115

41:                                               ; preds = %28, %36, %22
  %42 = phi ptr [ %0, %22 ], [ %31, %28 ], [ %37, %36 ]
  %43 = phi i32 [ %16, %22 ], [ %30, %28 ], [ %38, %36 ]
  %44 = icmp ult i32 %43, 200
  br i1 %44, label %45, label %63, !prof !116

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #23
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %49, label %47, !prof !117

47:                                               ; preds = %45
  %48 = zext nneg i32 %43 to i64
  br label %53

49:                                               ; preds = %53, %45
  %50 = zext nneg i32 %43 to i64
  %51 = getelementptr inbounds [200 x i8], ptr %4, i64 0, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !46
  %52 = call double @strtod(ptr nocapture noundef nonnull %4, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #23
  br label %101

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %61, %53 ]
  %55 = getelementptr inbounds i16, ptr %42, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !75
  %57 = icmp eq i16 %56, 46
  %58 = trunc i16 %56 to i8
  %59 = select i1 %57, i8 %25, i8 %58, !prof !118
  %60 = getelementptr inbounds [200 x i8], ptr %4, i64 0, i64 %54
  store i8 %59, ptr %60, align 1, !tbaa !46
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %48
  br i1 %62, label %49, label %53, !prof !119, !llvm.loop !120

63:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  store ptr %2, ptr %5, align 8, !tbaa !121
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %67 = add i32 %43, 1
  %68 = icmp eq i32 %67, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = zext i32 %67 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %70)
          to label %71 unwind label %87

71:                                               ; preds = %69, %63
  invoke void @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull %42, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %72 unwind label %87

72:                                               ; preds = %71
  %73 = load ptr, ptr %66, align 8, !tbaa !123
  %74 = call double @strtod(ptr nocapture noundef nonnull %73, ptr noundef null) #23
  %75 = load i64, ptr %65, align 8, !tbaa !124
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %66, align 8, !tbaa !123
  %79 = load ptr, ptr %5, align 8, !tbaa !121
  %80 = load ptr, ptr %79, align 8, !tbaa !125
  %81 = getelementptr inbounds ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8
  invoke void %82(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %78)
          to label %86 unwind label %83

83:                                               ; preds = %77
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  call void @__clang_call_terminate(ptr %85) #24
  unreachable

86:                                               ; preds = %72, %77
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %101

87:                                               ; preds = %69, %71
  %88 = landingpad { ptr, i32 }
          cleanup
  %89 = load i64, ptr %65, align 8, !tbaa !124
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %66, align 8, !tbaa !123
  %93 = load ptr, ptr %5, align 8, !tbaa !121
  %94 = load ptr, ptr %93, align 8, !tbaa !125
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef %92)
          to label %100 unwind label %97

97:                                               ; preds = %91
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #24
  unreachable

100:                                              ; preds = %87, %91
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %88

101:                                              ; preds = %49, %86, %19
  %102 = phi double [ %21, %19 ], [ %52, %49 ], [ %74, %86 ]
  ret double %102
}

declare noundef i64 @_ZN11xalanc_1_1016WideStringToLongEPKt(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #16

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !121
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = load ptr, ptr %3, align 8, !tbaa !121
  store ptr %12, ptr %0, align 8, !tbaa !121
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !128
  store i64 %14, ptr %6, align 8, !tbaa !128
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !124
  store i64 %16, ptr %8, align 8, !tbaa !124
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  store ptr %18, ptr %10, align 8, !tbaa !123
  store ptr %5, ptr %3, align 8, !tbaa !121
  store i64 %7, ptr %13, align 8, !tbaa !128
  store i64 %9, ptr %15, align 8, !tbaa !124
  store ptr %11, ptr %17, align 8, !tbaa !123
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !129

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !125
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !121
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !128
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !129

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !121
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !128
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !124
  %16 = load ptr, ptr %2, align 8, !tbaa !125
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !123
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = load i64, ptr %9, align 8, !tbaa !128
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !121
  %27 = load i64, ptr %6, align 8, !tbaa !128
  %28 = load i64, ptr %7, align 8, !tbaa !124
  %29 = load ptr, ptr %8, align 8, !tbaa !123
  %30 = load ptr, ptr %5, align 8, !tbaa !121
  store ptr %30, ptr %0, align 8, !tbaa !121
  %31 = load i64, ptr %14, align 8, !tbaa !128
  store i64 %31, ptr %6, align 8, !tbaa !128
  %32 = load i64, ptr %15, align 8, !tbaa !124
  store i64 %32, ptr %7, align 8, !tbaa !124
  %33 = load ptr, ptr %20, align 8, !tbaa !123
  store ptr %33, ptr %8, align 8, !tbaa !123
  store ptr %26, ptr %5, align 8, !tbaa !121
  store i64 %27, ptr %14, align 8, !tbaa !128
  store i64 %28, ptr %15, align 8, !tbaa !124
  store ptr %29, ptr %20, align 8, !tbaa !123
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !125
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #24
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !124
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !123
  %49 = load ptr, ptr %5, align 8, !tbaa !121
  %50 = load ptr, ptr %49, align 8, !tbaa !125
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #24
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !130

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !125
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !131
  store ptr %63, ptr %8, align 8, !tbaa !123
  store i64 %3, ptr %7, align 8, !tbaa !124
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !128
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !124
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
  %26 = load ptr, ptr %14, align 8, !tbaa !123
  %27 = load i64, ptr %11, align 8, !tbaa !128
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !46
  store i8 %32, ptr %31, align 1, !tbaa !46
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !128
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !128
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !132

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %41 = load ptr, ptr %0, align 8, !tbaa !121
  store ptr %41, ptr %5, align 8, !tbaa !121
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !128
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !124
  %44 = load ptr, ptr %41, align 8, !tbaa !125
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !123
  %49 = load i64, ptr %42, align 8, !tbaa !128
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !123
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !123
  %54 = load i64, ptr %42, align 8, !tbaa !128
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !123
  %58 = load i64, ptr %42, align 8, !tbaa !128
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !123
  %61 = load i64, ptr %11, align 8, !tbaa !128
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !121
  %65 = load i64, ptr %11, align 8, !tbaa !128
  %66 = load i64, ptr %18, align 8, !tbaa !124
  %67 = load ptr, ptr %14, align 8, !tbaa !123
  %68 = load ptr, ptr %5, align 8, !tbaa !121
  store ptr %68, ptr %0, align 8, !tbaa !121
  %69 = load i64, ptr %42, align 8, !tbaa !128
  store i64 %69, ptr %11, align 8, !tbaa !128
  %70 = load i64, ptr %43, align 8, !tbaa !124
  store i64 %70, ptr %18, align 8, !tbaa !124
  %71 = load ptr, ptr %48, align 8, !tbaa !123
  store ptr %71, ptr %14, align 8, !tbaa !123
  store ptr %64, ptr %5, align 8, !tbaa !121
  store i64 %65, ptr %42, align 8, !tbaa !128
  store i64 %66, ptr %43, align 8, !tbaa !124
  store ptr %67, ptr %48, align 8, !tbaa !123
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !125
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #24
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !124
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !123
  %87 = load ptr, ptr %5, align 8, !tbaa !121
  %88 = load ptr, ptr %87, align 8, !tbaa !125
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #24
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
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
  br i1 %108, label %103, label %105, !llvm.loop !133

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !134

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
  br i1 %121, label %122, label %118, !llvm.loop !135

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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !128
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !136

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !46
  store i8 %13, ptr %12, align 1, !tbaa !46
  %14 = load i64, ptr %4, align 8, !tbaa !128
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !128
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %22 = load ptr, ptr %0, align 8, !tbaa !121
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !121
  %25 = load i64, ptr %4, align 8, !tbaa !128
  %26 = load i64, ptr %6, align 8, !tbaa !124
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = load ptr, ptr %3, align 8, !tbaa !121
  store ptr %29, ptr %0, align 8, !tbaa !121
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !128
  store i64 %31, ptr %4, align 8, !tbaa !128
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !124
  store i64 %33, ptr %6, align 8, !tbaa !124
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !123
  store ptr %35, ptr %27, align 8, !tbaa !123
  store ptr %24, ptr %3, align 8, !tbaa !121
  store i64 %25, ptr %30, align 8, !tbaa !128
  store i64 %26, ptr %32, align 8, !tbaa !124
  store ptr %28, ptr %34, align 8, !tbaa !123
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !125
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #24
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !124
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !123
  %53 = load ptr, ptr %3, align 8, !tbaa !121
  %54 = load ptr, ptr %53, align 8, !tbaa !125
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #24
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #20 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

attributes #0 = { cold mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, i64 137825}
!36 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, i64 136725}
!37 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt, ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, i64 42787}
!40 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016WideStringToLongEPKt, i64 42787}
!41 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @localeconv, i64 93939}
!42 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @strtod, i64 93939}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"function_entry_count", i64 22443371}
!50 = !{!"branch_weights", i32 22437372, i32 5999}
!51 = !{!"branch_weights", i32 76456, i32 22366915}
!52 = !{!"branch_weights", i32 5999, i32 22360916}
!53 = !{!"function_entry_count", i64 93159}
!54 = !{!"branch_weights", i32 93159, i32 0}
!55 = !{!"branch_weights", i32 0, i32 93159}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"function_entry_count", i64 44851710}
!58 = !{!"branch_weights", i32 44840378, i32 11332}
!59 = !{!"branch_weights", i32 0, i32 44851710}
!60 = !{!"branch_weights", i32 44841779, i32 9931}
!61 = !{!"function_entry_count", i64 22409208}
!62 = !{!"branch_weights", i32 22409208, i32 0}
!63 = !{!"branch_weights", i32 0, i32 22409208}
!64 = !{!"function_entry_count", i64 93162}
!65 = !{!"branch_weights", i32 93161, i32 1}
!66 = !{!"branch_weights", i32 0, i32 93162}
!67 = !{!"branch_weights", i32 93162, i32 0}
!68 = !{!"function_entry_count", i64 143837}
!69 = !{!70, !72, i64 8}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !71, i64 0, !72, i64 8, !72, i64 16, !71, i64 24}
!71 = !{!"any pointer", !47, i64 0}
!72 = !{!"long", !47, i64 0}
!73 = !{!"branch_weights", i32 6012, i32 137825}
!74 = !{!"branch_weights", i32 0, i32 143838}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !47, i64 0}
!77 = !{!"branch_weights", i32 6012, i32 137826}
!78 = !{!79, !79, i64 0}
!79 = !{!"bool", !47, i64 0}
!80 = !{!"branch_weights", i32 136726, i32 1100}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!"function_entry_count", i64 42787}
!84 = !{!"function_entry_count", i64 111900725}
!85 = !{!"branch_weights", i32 111900725, i32 0}
!86 = !{!"branch_weights", i32 0, i32 111900725}
!87 = !{!"branch_weights", i32 111900725, i32 0, i32 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"double", !47, i64 0}
!90 = !{!"function_entry_count", i64 180613}
!91 = !{!"DoubleSupport.cpp;_ZN11xalanc_1_10L10doValidateEPKtRb"}
!92 = !{!"branch_weights", i32 0, i32 1}
!93 = !{!"branch_weights", i32 0, i32 180613}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!"branch_weights", i32 1, i32 180612}
!98 = !{!"branch_weights", i32 1088, i32 93946, i32 5, i32 33670, i32 97719, i32 25137, i32 21186, i32 16285, i32 40102, i32 11940, i32 10268, i32 6043, i32 11102, i32 0, i32 0, i32 0, i32 0}
!99 = !{!"branch_weights", i32 93946, i32 0}
!100 = !{!"branch_weights", i32 5, i32 0}
!101 = !{!"branch_weights", i32 273452, i32 0}
!102 = !{!"branch_weights", i32 493477, i32 273452}
!103 = distinct !{!103, !95, !96}
!104 = !{!"branch_weights", i32 369579, i32 179525}
!105 = !{!"branch_weights", i32 187879, i32 180612}
!106 = distinct !{!106, !95, !96}
!107 = !{!"branch_weights", i32 179525, i32 1088}
!108 = !{!"function_entry_count", i64 136726}
!109 = !{!"branch_weights", i32 136726, i32 537777}
!110 = distinct !{!110, !95, !96}
!111 = !{!"branch_weights", i32 93939, i32 42787}
!112 = !{!113, !71, i64 0}
!113 = !{!"_ZTS5lconv", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !47, i64 80, !47, i64 81, !47, i64 82, !47, i64 83, !47, i64 84, !47, i64 85, !47, i64 86, !47, i64 87, !47, i64 88, !47, i64 89, !47, i64 90, !47, i64 91, !47, i64 92, !47, i64 93}
!114 = !{!"branch_weights", i32 0, i32 93939}
!115 = distinct !{!115, !95, !96}
!116 = !{!"branch_weights", i32 93939, i32 0}
!117 = !{!"branch_weights", i32 1, i32 93938}
!118 = !{!"branch_weights", i32 93939, i32 394199}
!119 = !{!"branch_weights", i32 93938, i32 394200}
!120 = distinct !{!120, !95, !96}
!121 = !{!122, !71, i64 0}
!122 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !71, i64 0, !72, i64 8, !72, i64 16, !71, i64 24}
!123 = !{!122, !71, i64 24}
!124 = !{!122, !72, i64 16}
!125 = !{!126, !126, i64 0}
!126 = !{!"vtable pointer", !48, i64 0}
!127 = !{!"function_entry_count", i64 2}
!128 = !{!122, !72, i64 8}
!129 = !{!"branch_weights", i32 2, i32 0}
!130 = !{!"branch_weights", i32 0, i32 2}
!131 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!132 = distinct !{!132, !95, !96}
!133 = distinct !{!133, !95, !96}
!134 = distinct !{!134, !95, !96}
!135 = distinct !{!135, !95, !96}
!136 = !{!"branch_weights", i32 1, i32 0}
