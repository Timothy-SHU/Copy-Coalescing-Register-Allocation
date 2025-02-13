; ModuleID = 'DoubleSupport.cpp'
source_filename = "DoubleSupport.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport6getNaNEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport14isPositiveZeroEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport19getPositiveInfinityEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd = comdat any

$_ZN11xalanc_1_109modfRoundEd = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1017consumeWhitespaceERPKt = comdat any

$_ZN11xalanc_1_1015isXMLWhitespaceEt = comdat any

$_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1017consumeWhitespaceERPKtRj = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$_ZSt4copyIPKcPcET0_T_S4_S3_ = comdat any

$_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKcET_S2_ = comdat any

$_ZSt12__niter_wrapIPcET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKcET_S2_ = comdat any

$_ZSt12__niter_baseIPcET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPcET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc = comdat any

@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = dso_local global %"union.xalanc_1_10::DoubleSupport::NumberUnion" zeroinitializer, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = dso_local constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double 0x7FF0000000000000 }, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = dso_local constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double 0xFFF0000000000000 }, align 8
@_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE = dso_local constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" zeroinitializer, align 8
@_ZN11xalanc_1_1013DoubleSupport14s_negativeZeroE = dso_local local_unnamed_addr constant %"union.xalanc_1_10::DoubleSupport::NumberUnion" { double -0.000000e+00 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @_ZN11xalanc_1_1013DoubleSupport10initializeEv() local_unnamed_addr #0 align 2 !prof !121 {
  %1 = tail call double @sqrt(double noundef -2.010000e+00) #16
  store double %1, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1013DoubleSupport9terminateEv() local_unnamed_addr #2 align 2 !prof !121 {
  store double 0.000000e+00, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !125 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %9, label %4, !prof !126

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  %6 = fcmp oeq double %0, %1
  %7 = xor i1 %5, true
  %8 = and i1 %6, %7
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ false, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #3 comdat align 2 !prof !127 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !128 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %9, label %4, !prof !129

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  %6 = fcmp olt double %0, %1
  %7 = xor i1 %5, true
  %8 = and i1 %6, %7
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ false, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !130 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  %6 = fcmp ole double %0, %1
  %7 = xor i1 %5, true
  %8 = and i1 %6, %7
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ false, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !130 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  %6 = fcmp ogt double %0, %1
  %7 = xor i1 %5, true
  %8 = and i1 %6, %7
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ false, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !130 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  %6 = fcmp oge double %0, %1
  %7 = xor i1 %5, true
  %8 = and i1 %6, %7
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ false, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !131 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %8, label %4, !prof !132

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  br i1 %5, label %8, label %6, !prof !132

6:                                                ; preds = %4
  %7 = fadd double %0, %1
  br label %8

8:                                                ; preds = %4, %2, %6
  %9 = phi double [ %7, %6 ], [ %0, %2 ], [ %1, %4 ]
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !133 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %8, label %4, !prof !134

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  br i1 %5, label %8, label %6, !prof !134

6:                                                ; preds = %4
  %7 = fsub double %0, %1
  br label %8

8:                                                ; preds = %4, %2, %6
  %9 = phi double [ %7, %6 ], [ %0, %2 ], [ %1, %4 ]
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !128 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %8, label %4, !prof !129

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  br i1 %5, label %8, label %6, !prof !129

6:                                                ; preds = %4
  %7 = fmul double %0, %1
  br label %8

8:                                                ; preds = %4, %2, %6
  %9 = phi double [ %7, %6 ], [ %0, %2 ], [ %1, %4 ]
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !135 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %22, label %4, !prof !136

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  br i1 %5, label %22, label %6, !prof !136

6:                                                ; preds = %4
  %7 = fcmp une double %1, 0.000000e+00
  br i1 %7, label %8, label %10, !prof !137

8:                                                ; preds = %6
  %9 = fdiv double %0, %1
  br label %22

10:                                               ; preds = %6
  %11 = fcmp oeq double %0, 0.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %22

14:                                               ; preds = %10
  %15 = fcmp ogt double %0, 0.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport14isPositiveZeroEd(double noundef %1) #17
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getPositiveInfinityEv() #17
  br label %22

20:                                               ; preds = %16, %14
  %21 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() #17
  br label %22

22:                                               ; preds = %4, %2, %20, %18, %12, %8
  %23 = phi double [ %9, %8 ], [ %13, %12 ], [ %19, %18 ], [ %21, %20 ], [ %0, %2 ], [ %1, %4 ]
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() local_unnamed_addr #4 comdat align 2 !prof !138 {
  %1 = load double, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !122
  ret double %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport14isPositiveZeroEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !139 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport14s_positiveZeroE, double noundef %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport19getPositiveInfinityEv() local_unnamed_addr #4 comdat align 2 !prof !130 {
  ret double 0x7FF0000000000000
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() local_unnamed_addr #4 comdat align 2 !prof !140 {
  ret double 0xFFF0000000000000
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef %0, double noundef %1) local_unnamed_addr #3 align 2 !prof !128 {
  %3 = alloca double, align 8
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %4, label %26, label %5, !prof !129

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %1) #17
  br i1 %6, label %26, label %7, !prof !129

7:                                                ; preds = %5
  %8 = fcmp oeq double %1, 0.000000e+00
  br i1 %8, label %9, label %11, !prof !129

9:                                                ; preds = %7
  %10 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %26

11:                                               ; preds = %7
  %12 = fptosi double %0 to i64
  %13 = sitofp i64 %12 to double
  %14 = fcmp oeq double %13, %0
  br i1 %14, label %15, label %22, !prof !141

15:                                               ; preds = %11
  %16 = fptosi double %1 to i64
  %17 = sitofp i64 %16 to double
  %18 = fcmp oeq double %17, %1
  br i1 %18, label %19, label %22, !prof !141

19:                                               ; preds = %15
  %20 = srem i64 %12, %16
  %21 = sitofp i64 %20 to double
  br label %26

22:                                               ; preds = %15, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %23 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %0, double noundef %1) #17
  %24 = call double @modf(double noundef %23, ptr noundef nonnull %3) #16
  %25 = fmul double %24, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %26

26:                                               ; preds = %5, %2, %22, %19, %9
  %27 = phi double [ %10, %9 ], [ %21, %19 ], [ %25, %22 ], [ %0, %2 ], [ %1, %5 ]
  ret double %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %0) local_unnamed_addr #3 align 2 !prof !130 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %7

5:                                                ; preds = %1
  %6 = fneg double %0
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi double [ %4, %3 ], [ %6, %5 ]
  ret double %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport3absEd(double noundef %0) local_unnamed_addr #3 align 2 !prof !130 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %7

5:                                                ; preds = %1
  %6 = tail call double @llvm.fabs.f64(double %0)
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi double [ %4, %3 ], [ %6, %5 ]
  ret double %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !142 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %4 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  ret double %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !143 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4, !prof !144

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !145
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %9, !prof !147

7:                                                ; preds = %4, %2
  %8 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %11

9:                                                ; preds = %4
  %10 = tail call noundef double @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi double [ %8, %7 ], [ %10, %9 ]
  ret double %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat !prof !148 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !149 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  store i8 0, ptr %3, align 1, !tbaa !150
  %4 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  br i1 %4, label %7, label %5, !prof !152

5:                                                ; preds = %2
  %6 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %11

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 1, !tbaa !150, !range !153, !noundef !154
  %9 = icmp ne i8 %8, 0
  %10 = tail call noundef double @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE(ptr noundef %0, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi double [ %6, %5 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret double %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 align 2 !prof !130 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef %2) #17
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !155 {
  %2 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKt(ptr noundef %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKt(ptr noundef %0) unnamed_addr #3 !prof !155 !PGOFuncName !156 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  store i8 0, ptr %2, align 1, !tbaa !150
  %3 = call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %0) local_unnamed_addr #3 align 2 !prof !157 {
  %2 = alloca double, align 8
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #17
  br i1 %3, label %4, label %6, !prof !158

4:                                                ; preds = %1
  %5 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6getNaNEv() #17
  br label %39

6:                                                ; preds = %1
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd(double noundef %0) #17
  br i1 %7, label %8, label %10, !prof !158

8:                                                ; preds = %6
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getPositiveInfinityEv() #17
  br label %39

10:                                               ; preds = %6
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %0) #17
  br i1 %11, label %12, label %14, !prof !158

12:                                               ; preds = %10
  %13 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv() #17
  br label %39

14:                                               ; preds = %10
  %15 = fcmp oeq double %0, 0.000000e+00
  br i1 %15, label %39, label %16, !prof !158

16:                                               ; preds = %14
  %17 = fcmp ogt double %0, 0.000000e+00
  br i1 %17, label %18, label %26, !prof !159

18:                                               ; preds = %16
  %19 = fcmp olt double %0, 0x43E0000000000000
  br i1 %19, label %20, label %24, !prof !159

20:                                               ; preds = %18
  %21 = fadd double %0, 5.000000e-01
  %22 = fptosi double %21 to i64
  %23 = sitofp i64 %22 to double
  br label %39

24:                                               ; preds = %18
  %25 = tail call noundef double @_ZN11xalanc_1_109modfRoundEd(double noundef %0) #17
  br label %39

26:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %27 = call double @modf(double noundef %0, ptr noundef nonnull %2) #16
  %28 = fcmp oeq double %27, -5.000000e-01
  %29 = select i1 %28, double 5.000000e-01, double -5.000000e-01
  %30 = fadd double %29, %0
  %31 = fcmp ogt double %30, 0xC3E0000000000000
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = fptosi double %30 to i64
  %34 = sitofp i64 %33 to double
  br label %37

35:                                               ; preds = %26
  %36 = tail call noundef double @_ZN11xalanc_1_109modfRoundEd(double noundef %30) #17
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi double [ %34, %32 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %39

39:                                               ; preds = %14, %37, %24, %20, %12, %8, %4
  %40 = phi double [ %5, %4 ], [ %9, %8 ], [ %13, %12 ], [ %23, %20 ], [ %25, %24 ], [ %38, %37 ], [ 0.000000e+00, %14 ]
  ret double %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !160 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, double noundef %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %0) local_unnamed_addr #4 comdat align 2 !prof !161 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, double noundef %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_109modfRoundEd(double noundef %0) local_unnamed_addr #4 comdat !prof !130 {
  %2 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store double 0.000000e+00, ptr %2, align 8, !tbaa !162
  %3 = fadd double %0, 5.000000e-01
  %4 = call double @modf(double noundef %3, ptr noundef nonnull %2) #16
  %5 = load double, ptr %2, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !164 {
  %3 = load i32, ptr %0, align 8, !tbaa !122
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !165
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !166 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br i1 %2, label %5, label %3, !prof !167

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #17
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !168 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !169 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !170
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !174 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !176 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L10doValidateEPKtRb(ptr noundef %0, ptr nocapture noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 !prof !177 !PGOFuncName !178 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %0, ptr %3, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1017consumeWhitespaceERPKt(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = load i16, ptr %4, align 2, !tbaa !145
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %56, label %7, !prof !180

7:                                                ; preds = %2, %43
  %8 = phi i16 [ %48, %43 ], [ %5, %2 ]
  %9 = phi ptr [ %47, %43 ], [ %4, %2 ]
  %10 = phi i8 [ %46, %43 ], [ 0, %2 ]
  %11 = phi i8 [ %45, %43 ], [ 0, %2 ]
  %12 = phi i8 [ %44, %43 ], [ 0, %2 ]
  switch i16 %8, label %50 [
    i16 46, label %13
    i16 45, label %21
    i16 48, label %35
    i16 49, label %35
    i16 50, label %35
    i16 51, label %35
    i16 52, label %35
    i16 53, label %35
    i16 54, label %35
    i16 55, label %35
    i16 56, label %35
    i16 57, label %35
    i16 32, label %39
    i16 13, label %39
    i16 9, label %39
    i16 10, label %39
  ], !prof !181

13:                                               ; preds = %7
  %14 = load i8, ptr %1, align 1, !tbaa !150, !range !153, !noundef !154
  %15 = icmp eq i8 %14, 0
  %16 = and i8 %10, 1
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %50, !prof !182

19:                                               ; preds = %13
  store i8 1, ptr %1, align 1, !tbaa !150
  %20 = getelementptr inbounds i16, ptr %9, i64 1
  store ptr %20, ptr %3, align 8, !tbaa !179
  br label %43

21:                                               ; preds = %7
  %22 = load i8, ptr %1, align 1, !tbaa !150, !range !153, !noundef !154
  %23 = icmp eq i8 %22, 0
  %24 = and i8 %11, 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  %27 = and i8 %12, 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  %30 = and i8 %10, 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %50, !prof !183

33:                                               ; preds = %21
  %34 = getelementptr inbounds i16, ptr %9, i64 1
  store ptr %34, ptr %3, align 8, !tbaa !179
  br label %43

35:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %36 = and i8 %10, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50, !prof !184

38:                                               ; preds = %35
  call fastcc void @_ZN11xalanc_1_10L14consumeNumbersERPKt(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  br label %43

39:                                               ; preds = %7, %7, %7, %7
  %40 = and i8 %10, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  call void @_ZN11xalanc_1_1017consumeWhitespaceERPKt(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  br label %43

43:                                               ; preds = %42, %38, %33, %19
  %44 = phi i8 [ %12, %42 ], [ 1, %38 ], [ %12, %33 ], [ %12, %19 ]
  %45 = phi i8 [ %11, %42 ], [ %11, %38 ], [ 1, %33 ], [ %11, %19 ]
  %46 = phi i8 [ 1, %42 ], [ %10, %38 ], [ %10, %33 ], [ %10, %19 ]
  %47 = load ptr, ptr %3, align 8, !tbaa !179
  %48 = load i16, ptr %47, align 2, !tbaa !145
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %7, !prof !185, !llvm.loop !186

50:                                               ; preds = %7, %39, %35, %21, %13, %43
  %51 = phi i1 [ true, %43 ], [ false, %13 ], [ false, %21 ], [ false, %35 ], [ false, %39 ], [ false, %7 ]
  %52 = phi i8 [ %44, %43 ], [ %12, %13 ], [ %12, %21 ], [ %12, %35 ], [ %12, %39 ], [ %12, %7 ]
  %53 = and i8 %52, 1
  %54 = icmp ne i8 %53, 0
  %55 = select i1 %51, i1 %54, i1 false, !prof !188
  br label %56

56:                                               ; preds = %50, %2
  %57 = phi i1 [ false, %2 ], [ %55, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i1 %57
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !189 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [200 x i8], align 16
  %7 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %0, ptr %4, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %8 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) #17
  store i32 %8, ptr %5, align 4, !tbaa !190
  %9 = icmp ugt i32 %8, 9
  %10 = or i1 %9, %1
  br i1 %10, label %14, label %11, !prof !192

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZN11xalanc_1_1016WideStringToLongEPKt(ptr noundef %0) #17
  %13 = sitofp i64 %12 to double
  br label %50

14:                                               ; preds = %3
  %15 = tail call ptr @localeconv() #16
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = load i8, ptr %16, align 1, !tbaa !122
  call void @_ZN11xalanc_1_1017consumeWhitespaceERPKtRj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #17
  %18 = load i32, ptr %5, align 4, !tbaa !190
  %19 = icmp ult i32 %18, 200
  br i1 %19, label %20, label %39, !prof !195

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #18
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %25, label %22, !prof !196

22:                                               ; preds = %20
  %23 = load ptr, ptr %4, align 8, !tbaa !179
  %24 = zext nneg i32 %18 to i64
  br label %29

25:                                               ; preds = %29, %20
  %26 = phi i64 [ 0, %20 ], [ %24, %29 ]
  %27 = getelementptr inbounds [200 x i8], ptr %6, i64 0, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !122
  %28 = call double @atof(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #18
  br label %50

29:                                               ; preds = %22, %29
  %30 = phi i64 [ 0, %22 ], [ %37, %29 ]
  %31 = getelementptr inbounds i16, ptr %23, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !145
  %33 = icmp eq i16 %32, 46
  %34 = trunc i16 %32 to i8
  %35 = select i1 %33, i8 %17, i8 %34, !prof !197
  %36 = getelementptr inbounds [200 x i8], ptr %6, i64 0, i64 %30
  store i8 %35, ptr %36, align 1
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, %24
  br i1 %38, label %25, label %29, !prof !198, !llvm.loop !199

39:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) #17
  %40 = load i32, ptr %5, align 4, !tbaa !190
  %41 = add i32 %40, 1
  %42 = zext i32 %41 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %42) #17
          to label %43 unwind label %48

43:                                               ; preds = %39
  %44 = load ptr, ptr %4, align 8, !tbaa !179
  invoke void @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
          to label %45 unwind label %48

45:                                               ; preds = %43
  %46 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %47 = call double @atof(ptr noundef %46) #19
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %50

48:                                               ; preds = %43, %39
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  resume { ptr, i32 } %49

50:                                               ; preds = %25, %45, %11
  %51 = phi double [ %13, %11 ], [ %28, %25 ], [ %47, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret double %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017consumeWhitespaceERPKt(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = load i16, ptr %2, align 2, !tbaa !145
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %13, label %5, !prof !200

5:                                                ; preds = %1, %8
  %6 = phi i16 [ %11, %8 ], [ %3, %1 ]
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %6) #17
  br i1 %7, label %8, label %13, !prof !201

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !179
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  store ptr %10, ptr %0, align 8, !tbaa !179
  %11 = load i16, ptr %10, align 2, !tbaa !145
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %5, !prof !202, !llvm.loop !203

13:                                               ; preds = %5, %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZN11xalanc_1_10L14consumeNumbersERPKt(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 !prof !204 !PGOFuncName !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = load i16, ptr %2, align 2, !tbaa !145
  %4 = add i16 %3, -48
  %5 = icmp ult i16 %4, 10
  br i1 %5, label %6, label %13, !prof !206

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !145
  %10 = add i16 %9, -48
  %11 = icmp ult i16 %10, 10
  br i1 %11, label %6, label %12, !prof !207, !llvm.loop !208

12:                                               ; preds = %6
  store ptr %8, ptr %0, align 8, !tbaa !179
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #3 comdat !prof !209 {
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) #17
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #4 comdat align 2 !prof !209 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !122
  %5 = icmp eq i8 %4, 6
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #4 comdat !prof !210 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !145
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !211, !llvm.loop !212

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef i64 @_ZN11xalanc_1_1016WideStringToLongEPKt(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare ptr @localeconv() local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017consumeWhitespaceERPKtRj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat !prof !213 {
  %3 = load ptr, ptr %0, align 8, !tbaa !179
  %4 = load i16, ptr %3, align 2, !tbaa !145
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %16, label %6, !prof !200

6:                                                ; preds = %2, %9
  %7 = phi i16 [ %14, %9 ], [ %4, %2 ]
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEt(i16 noundef zeroext %7) #17
  br i1 %8, label %9, label %16, !prof !214

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !179
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  store ptr %11, ptr %0, align 8, !tbaa !179
  %12 = load i32, ptr %1, align 4, !tbaa !190
  %13 = add i32 %12, -1
  store i32 %13, ptr %1, align 4, !tbaa !190
  %14 = load i16, ptr %11, align 2, !tbaa !145
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %6, !prof !215, !llvm.loop !216

16:                                               ; preds = %6, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 !prof !217 {
  store ptr %1, ptr %0, align 8, !tbaa !218
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !220
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !221
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !222

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #17
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !223
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !224 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !221
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !225

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !217 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !226 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !221
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !227

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %6, ptr noundef %7) #17
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !223
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #17
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !228 {
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !231 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !228 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !218
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !228 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !218
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !220
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !232

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #17
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #17
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !233

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #17
  store ptr %24, ptr %8, align 8, !tbaa !223
  store i64 %3, ptr %7, align 8, !tbaa !221
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !217 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = load ptr, ptr %1, align 8, !tbaa !218
  store ptr %7, ptr %0, align 8, !tbaa !218
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !234
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !223
  store ptr %11, ptr %5, align 8, !tbaa !223
  store ptr %3, ptr %1, align 8, !tbaa !218
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !234
  store <2 x i64> %9, ptr %4, align 8, !tbaa !234
  store <2 x i64> %12, ptr %8, align 8, !tbaa !234
  store ptr %6, ptr %10, align 8, !tbaa !223
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !130 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !218
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #17
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !220
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !220
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !235

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %32 = load ptr, ptr %0, align 8, !tbaa !218
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #17
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #17
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #17
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #17
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #17
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %57) #17
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !236

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %61) #17
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !237

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #17
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %72) #17
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !238

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i8, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #17
  %78 = tail call noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #17
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !130 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !130 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !130 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !239 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !220
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !217 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !121 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !240

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !241 {
  %4 = load i8, ptr %1, align 1, !tbaa !122
  store i8 %4, ptr %0, align 1, !tbaa !122
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !121 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !221
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !220
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !221
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !240

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %11 = load ptr, ptr %0, align 8, !tbaa !218
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %13 = load i64, ptr %4, align 8, !tbaa !220
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !220
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !218
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #17
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !130 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !179
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !130 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !130 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !242 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !220
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !179
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !130 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !130 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !130 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !130 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !130 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !179
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !130 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !130 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !130 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  %8 = sub i64 0, %6
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %6, i1 false)
  br label %11

11:                                               ; preds = %3, %9
  %12 = getelementptr inbounds i8, ptr %2, i64 %8
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !220
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !228 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !243

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !244, !llvm.loop !245

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !228 {
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !241 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!120}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!35 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5equalEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 44810285}
!36 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!37 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 186317}
!38 = !{ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 89703419}
!39 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8subtractEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 44818415}
!40 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 186317}
!41 = !{ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 186323}
!42 = !{ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, ptr @_ZN11xalanc_1_1013DoubleSupport6getNaNEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1013DoubleSupport14isPositiveZeroEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 90135}
!44 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 186317}
!45 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, ptr @_ZN11xalanc_1_1013DoubleSupport6getNaNEv, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, ptr @modf, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 143837}
!49 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE, i64 143837}
!50 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport6getNaNEv, i64 6014}
!51 = !{ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE, i64 137824}
!52 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!53 = !{ptr @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, i64 137826}
!54 = !{ptr @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013DoubleSupport6getNaNEv, i64 1101}
!55 = !{ptr @_ZN11xalanc_1_109doConvertEPKtRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, i64 136725}
!56 = !{ptr @_ZN11xalanc_1_1013DoubleSupport7isValidEPKt, ptr @_ZN11xalanc_1_10L10doValidateEPKt, i64 42787}
!57 = !{ptr @_ZN11xalanc_1_10L10doValidateEPKt, ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, i64 42787}
!58 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 111900725}
!59 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport6getNaNEv, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd, i64 111900724}
!61 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport19getPositiveInfinityEv, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, i64 111900723}
!63 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_1013DoubleSupport19getNegativeInfinityEv, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @_ZN11xalanc_1_109modfRoundEd, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, ptr @modf, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 179163824}
!67 = !{ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 156790587}
!68 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!69 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!70 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!71 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!72 = !{ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, ptr @_ZN11xalanc_1_1017consumeWhitespaceERPKt, i64 180617}
!73 = !{ptr @_ZN11xalanc_1_10L10doValidateEPKtRb, ptr @_ZN11xalanc_1_10L14consumeNumbersERPKt, i64 273449}
!74 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 136726}
!75 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016WideStringToLongEPKt, i64 42786}
!76 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @localeconv, i64 93940}
!77 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017consumeWhitespaceERPKtRj, i64 93940}
!78 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @atof, i64 93940}
!79 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022CopyWideStringToVectorEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1013convertHelperEPKtbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1017consumeWhitespaceERPKt, ptr @_ZN11xalanc_1_1015isXMLWhitespaceEt, i64 179203}
!85 = !{ptr @_ZN11xalanc_1_1015isXMLWhitespaceEt, ptr @_ZN11xalanc_1_1012XalanXMLChar12isWhitespaceEt, i64 1282548}
!86 = !{ptr @_ZN11xalanc_1_1017consumeWhitespaceERPKtRj, ptr @_ZN11xalanc_1_1015isXMLWhitespaceEt, i64 93206}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 244778}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 2}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 2}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 2}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, i64 2}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc, i64 2}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 4}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_, i64 2}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 2}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!109 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 244781}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 3}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 1}
!115 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 36}
!120 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!121 = !{!"function_entry_count", i64 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C++ TBAA"}
!125 = !{!"function_entry_count", i64 22443371}
!126 = !{!"branch_weights", i32 76457, i32 22366916}
!127 = !{!"function_entry_count", i64 404042974}
!128 = !{!"function_entry_count", i64 93159}
!129 = !{!"branch_weights", i32 1, i32 93160}
!130 = !{!"function_entry_count", i64 0}
!131 = !{!"function_entry_count", i64 44851710}
!132 = !{!"branch_weights", i32 1, i32 44851711}
!133 = !{!"function_entry_count", i64 22409208}
!134 = !{!"branch_weights", i32 1, i32 22409209}
!135 = !{!"function_entry_count", i64 93162}
!136 = !{!"branch_weights", i32 1, i32 93163}
!137 = !{!"branch_weights", i32 93163, i32 1}
!138 = !{!"function_entry_count", i64 7112}
!139 = !{!"function_entry_count", i64 90135}
!140 = !{!"function_entry_count", i64 30}
!141 = !{!"branch_weights", i32 93160, i32 1}
!142 = !{!"function_entry_count", i64 143837}
!143 = !{!"function_entry_count", i64 143838}
!144 = !{!"branch_weights", i32 1, i32 143839}
!145 = !{!146, !146, i64 0}
!146 = !{!"short", !123, i64 0}
!147 = !{!"branch_weights", i32 6013, i32 137827}
!148 = !{!"function_entry_count", i64 12093723}
!149 = !{!"function_entry_count", i64 137826}
!150 = !{!151, !151, i64 0}
!151 = !{!"bool", !123, i64 0}
!152 = !{!"branch_weights", i32 136727, i32 1101}
!153 = !{i8 0, i8 2}
!154 = !{}
!155 = !{!"function_entry_count", i64 42787}
!156 = !{!"DoubleSupport.cpp:_ZN11xalanc_1_10L10doValidateEPKt"}
!157 = !{!"function_entry_count", i64 111900725}
!158 = !{!"branch_weights", i32 1, i32 111900726}
!159 = !{!"branch_weights", i32 111900726, i32 1}
!160 = !{!"function_entry_count", i64 179163824}
!161 = !{!"function_entry_count", i64 156790587}
!162 = !{!163, !163, i64 0}
!163 = !{!"double", !123, i64 0}
!164 = !{!"function_entry_count", i64 740164859}
!165 = !{!"branch_weights", i32 740024103, i32 140758}
!166 = !{!"function_entry_count", i64 967143541}
!167 = !{!"branch_weights", i32 403628487, i32 563515056}
!168 = !{!"function_entry_count", i64 3070433834}
!169 = !{!"function_entry_count", i64 1083116306}
!170 = !{!171, !173, i64 8}
!171 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !172, i64 0, !173, i64 8, !173, i64 16, !172, i64 24}
!172 = !{!"any pointer", !123, i64 0}
!173 = !{!"long", !123, i64 0}
!174 = !{!"function_entry_count", i64 565220908}
!175 = !{!171, !172, i64 24}
!176 = !{!"function_entry_count", i64 6521798493}
!177 = !{!"function_entry_count", i64 180613}
!178 = !{!"DoubleSupport.cpp:_ZN11xalanc_1_10L10doValidateEPKtRb"}
!179 = !{!172, !172, i64 0}
!180 = !{!"branch_weights", i32 1, i32 180613}
!181 = !{!"branch_weights", i32 1089, i32 93947, i32 6, i32 33671, i32 97720, i32 25138, i32 21187, i32 16286, i32 40103, i32 11941, i32 10269, i32 6044, i32 11103, i32 1, i32 1, i32 1, i32 1}
!182 = !{!"branch_weights", i32 -2088457594, i32 46973}
!183 = !{!"branch_weights", i32 1296, i32 1105}
!184 = !{!"branch_weights", i32 273453, i32 1}
!185 = !{!"branch_weights", i32 1049299138, i32 1098184510}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"branch_weights", i32 179526, i32 1089}
!189 = !{!"function_entry_count", i64 136726}
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !123, i64 0}
!192 = !{!"branch_weights", i32 -275325848, i32 1830812944}
!193 = !{!194, !172, i64 0}
!194 = !{!"_ZTS5lconv", !172, i64 0, !172, i64 8, !172, i64 16, !172, i64 24, !172, i64 32, !172, i64 40, !172, i64 48, !172, i64 56, !172, i64 64, !172, i64 72, !123, i64 80, !123, i64 81, !123, i64 82, !123, i64 83, !123, i64 84, !123, i64 85, !123, i64 86, !123, i64 87, !123, i64 88, !123, i64 89, !123, i64 90, !123, i64 91, !123, i64 92, !123, i64 93}
!195 = !{!"branch_weights", i32 93940, i32 1}
!196 = !{!"branch_weights", i32 1, i32 93939}
!197 = !{!"branch_weights", i32 93940, i32 394200}
!198 = !{!"branch_weights", i32 93939, i32 394200}
!199 = distinct !{!199, !187}
!200 = !{!"branch_weights", i32 1, i32 127}
!201 = !{!"branch_weights", i32 1, i32 180614}
!202 = !{!"branch_weights", i32 127, i32 23118465}
!203 = distinct !{!203, !187}
!204 = !{!"function_entry_count", i64 273452}
!205 = !{!"DoubleSupport.cpp:_ZN11xalanc_1_10L14consumeNumbersERPKt"}
!206 = !{!"branch_weights", i32 2131582840, i32 885325205}
!207 = !{!"branch_weights", i32 0, i32 2131582840}
!208 = distinct !{!208, !187}
!209 = !{!"function_entry_count", i64 1282548}
!210 = !{!"function_entry_count", i64 21552397}
!211 = !{!"branch_weights", i32 21552398, i32 128560690}
!212 = distinct !{!212, !187}
!213 = !{!"function_entry_count", i64 93939}
!214 = !{!"branch_weights", i32 1, i32 93940}
!215 = !{!"branch_weights", i32 127, i32 12024193}
!216 = distinct !{!216, !187}
!217 = !{!"function_entry_count", i64 3}
!218 = !{!219, !172, i64 0}
!219 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !172, i64 0, !173, i64 8, !173, i64 16, !172, i64 24}
!220 = !{!219, !173, i64 8}
!221 = !{!219, !173, i64 16}
!222 = !{!"branch_weights", i32 4, i32 1}
!223 = !{!219, !172, i64 24}
!224 = !{!"function_entry_count", i64 122389}
!225 = !{!"branch_weights", i32 2, i32 122389}
!226 = !{!"function_entry_count", i64 6}
!227 = !{!"branch_weights", i32 5, i32 3}
!228 = !{!"function_entry_count", i64 2}
!229 = !{!230, !230, i64 0}
!230 = !{!"vtable pointer", !124, i64 0}
!231 = !{!"function_entry_count", i64 126551194}
!232 = !{!"branch_weights", i32 3, i32 1}
!233 = !{!"branch_weights", i32 1, i32 3}
!234 = !{!173, !173, i64 0}
!235 = distinct !{!235, !187}
!236 = distinct !{!236, !187}
!237 = distinct !{!237, !187}
!238 = distinct !{!238, !187}
!239 = !{!"function_entry_count", i64 244781}
!240 = !{!"branch_weights", i32 2, i32 1}
!241 = !{!"function_entry_count", i64 62786071}
!242 = !{!"function_entry_count", i64 122394}
!243 = !{!"branch_weights", i32 1, i32 191}
!244 = !{!"branch_weights", i32 191, i32 3265}
!245 = distinct !{!245, !187}
