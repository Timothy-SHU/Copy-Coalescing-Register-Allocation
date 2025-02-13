; ModuleID = 'simulator/cvisitor.cc'
source_filename = "simulator/cvisitor.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN8cVisitorD2Ev = comdat any

$_ZN8cVisitorD0Ev = comdat any

$_ZTSN8cVisitor21EndTraversalExceptionE = comdat any

$_ZTIN8cVisitor21EndTraversalExceptionE = comdat any

@_ZTV8cVisitor = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI8cVisitor, ptr @_ZN8cVisitorD2Ev, ptr @_ZN8cVisitorD0Ev, ptr @_ZN8cVisitor7processEP7cObject, ptr @_ZN8cVisitor17processChildrenOfEP7cObject, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8cVisitor = dso_local constant [10 x i8] c"8cVisitor\00", align 1
@_ZTI8cVisitor = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8cVisitor }, align 8
@_ZTSN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant [35 x i8] c"N8cVisitor21EndTraversalExceptionE\00", comdat, align 1
@_ZTIN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8cVisitor21EndTraversalExceptionE }, comdat, align 8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #4
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8cVisitor7processEP7cObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #5
          to label %14 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8cVisitor21EndTraversalExceptionE
  %8 = extractvalue { ptr, i32 } %7, 1
  %9 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN8cVisitor21EndTraversalExceptionE) #6
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = extractvalue { ptr, i32 } %7, 0
  %13 = tail call ptr @__cxa_begin_catch(ptr %12) #6
  tail call void @__cxa_end_catch()
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i1 [ false, %11 ], [ true, %2 ]
  ret i1 %15

16:                                               ; preds = %6
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8cVisitor17processChildrenOfEP7cObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #5
          to label %14 unwind label %6

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8cVisitor21EndTraversalExceptionE
  %8 = extractvalue { ptr, i32 } %7, 1
  %9 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN8cVisitor21EndTraversalExceptionE) #6
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = extractvalue { ptr, i32 } %7, 0
  %13 = tail call ptr @__cxa_begin_catch(ptr %12) #6
  tail call void @__cxa_end_catch()
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i1 [ false, %11 ], [ true, %2 ]
  ret i1 %15

16:                                               ; preds = %6
  resume { ptr, i32 } %7
}

declare void @__cxa_pure_virtual() unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { noreturn nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
