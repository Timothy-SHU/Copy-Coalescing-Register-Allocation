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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @componentTypes, ptr noundef nonnull @.str) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @componentTypes, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN23cGlobalRegistrationListD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions, ptr noundef nonnull @.str.3) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @nedFunctions, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @classes, ptr noundef nonnull @.str.5) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @classes, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @enums, ptr noundef nonnull @.str.7) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @enums, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.8() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors, ptr noundef nonnull @.str.9) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @classDescriptors, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.10() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @configOptions, ptr noundef nonnull @.str.11) #4
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @configOptions, ptr nonnull @__dso_handle) #5
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_globals.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.6()
  tail call fastcc void @__cxx_global_var_init.8()
  tail call fastcc void @__cxx_global_var_init.10()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind }

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
