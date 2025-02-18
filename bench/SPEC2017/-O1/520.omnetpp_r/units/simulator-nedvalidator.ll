; ModuleID = 'simulator/nedvalidator.cc'
source_filename = "simulator/nedvalidator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$__clang_call_terminate = comdat any

$_ZN16NEDValidatorBaseD2Ev = comdat any

$_ZN16NEDValidatorBaseD0Ev = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str = private unnamed_addr constant [26 x i8] c"simulator/nedvalidator.cc\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"validateElement(): unknown tag '%s'\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"validateElement(): NEDException: %s\00", align 1
@_ZTV16NEDValidatorBase = dso_local unnamed_addr constant { [57 x ptr] } { [57 x ptr] [ptr null, ptr @_ZTI16NEDValidatorBase, ptr @_ZN16NEDValidatorBaseD2Ev, ptr @_ZN16NEDValidatorBaseD0Ev, ptr @_ZN16NEDValidatorBase8validateEP10NEDElement, ptr @_ZN16NEDValidatorBase15validateElementEP10NEDElement, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS16NEDValidatorBase = dso_local constant [19 x i8] c"16NEDValidatorBase\00", align 1
@_ZTI16NEDValidatorBase = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16NEDValidatorBase }, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16NEDValidatorBase8validateEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1), !prof !43
  %6 = load ptr, ptr %1, align 8, !tbaa !40
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !45

11:                                               ; preds = %12, %2
  ret void

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %20, %12 ], [ %9, %2 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !40
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %13), !prof !46
  %17 = load ptr, ptr %13, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(112) %13), !prof !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %11, label %12, !prof !48, !llvm.loop !49
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16NEDValidatorBase15validateElementEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %7 unwind label %10, !prof !52

7:                                                ; preds = %2
  %8 = add i32 %6, -1
  %9 = icmp ult i32 %8, 51
  br i1 %9, label %24, label %30

10:                                               ; preds = %24, %35, %30, %2
  %11 = landingpad { ptr, i32 }
          catch ptr @_ZTI12NEDException
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI12NEDException) #6
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #6
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(48) %17) #6
  invoke void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef %21)
          to label %22 unwind label %36

22:                                               ; preds = %15
  tail call void @__cxa_end_catch()
  br label %23

23:                                               ; preds = %24, %35, %22
  ret void

24:                                               ; preds = %7
  %25 = load ptr, ptr %0, align 8, !tbaa !40
  %26 = zext nneg i32 %6 to i64
  %27 = getelementptr ptr, ptr %25, i64 %26
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %23 unwind label %10

30:                                               ; preds = %7
  %31 = load ptr, ptr %1, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %35 unwind label %10

35:                                               ; preds = %30
  invoke void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %34)
          to label %23 unwind label %10

36:                                               ; preds = %15
  %37 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %38 unwind label %40

38:                                               ; preds = %36, %10
  %39 = phi { ptr, i32 } [ %11, %10 ], [ %37, %36 ]
  resume { ptr, i32 } %39

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #7
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare void @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !53 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #6
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NEDValidatorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16NEDValidatorBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  tail call void @llvm.trap() #7
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(none) }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN16NEDValidatorBase8validateEP10NEDElement, ptr @_ZN16NEDValidatorBase15validateElementEP10NEDElement, i64 2140}
!36 = !{ptr @_ZN16NEDValidatorBase8validateEP10NEDElement, ptr @_ZN16NEDValidatorBase8validateEP10NEDElement, i64 2114}
!37 = !{ptr @_ZN16NEDValidatorBase15validateElementEP10NEDElement, ptr @_Z16NEDInternalErrorPKciP10NEDElementS0_z, i64 1070}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 2140}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"VP", i32 0, i64 2140, i64 -5991631202506193487, i64 2140}
!44 = !{!"VP", i32 0, i64 2140, i64 -4535849660517922832, i64 2140}
!45 = !{!"branch_weights", i32 26, i32 2114}
!46 = !{!"VP", i32 0, i64 2114, i64 1959706348206565301, i64 2114}
!47 = !{!"VP", i32 0, i64 2114, i64 -7396538328733376965, i64 2114}
!48 = !{!"branch_weights", i32 2114, i32 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!"VP", i32 0, i64 2136, i64 5432170427955731470, i64 390, i64 1108170452220516087, i64 294, i64 -467464192053893877, i64 276}
!53 = !{!"function_entry_count", i64 0}
