; ModuleID = 'simulator/globals.cc'
source_filename = "simulator/globals.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cGlobalRegistrationList = type { ptr, ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@componentTypes = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"component types\00", align 1
@nedFunctions = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"NED functions\00", align 1
@classes = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@enums = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"enums\00", align 1
@classDescriptors = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"class descriptors\00", align 1
@configOptions = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"supported configuration options\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_globals.cc, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN23cGlobalRegistrationListD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_globals.cc() #3 section ".text.startup" !prof !39 !PGOFuncName !40 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @componentTypes, ptr noundef nonnull @.str)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @componentTypes, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions, ptr noundef nonnull @.str.3)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @nedFunctions, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @classes, ptr noundef nonnull @.str.5)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @classes, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @enums, ptr noundef nonnull @.str.7)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @enums, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors, ptr noundef nonnull @.str.9)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @classDescriptors, ptr nonnull @__dso_handle) #4
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @configOptions, ptr noundef nonnull @.str.11)
  %7 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @configOptions, ptr nonnull @__dso_handle) #4
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!35 = !{ptr @_GLOBAL__sub_I_globals.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_globals.cc, ptr @__cxa_atexit, i64 7}
!37 = !{ptr @_GLOBAL__sub_I_globals.cc, ptr @_ZN23cGlobalRegistrationListC1EPKc, i64 6}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!"simulator/globals.cc;_GLOBAL__sub_I_globals.cc"}
