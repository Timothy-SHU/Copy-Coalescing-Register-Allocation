; ModuleID = 'simulator/appreg.cc'
source_filename = "simulator/appreg.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cOmnetAppRegistration = type <{ %class.cOwnedObject.base, [4 x i8], ptr, %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN21cOmnetAppRegistration8getScoreEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@omnetapps = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"omnetapps\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_appreg.cc, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #6
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #7
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
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps, ptr noundef nonnull @.str) #6
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @omnetapps, ptr nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN23cGlobalRegistrationListD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv() local_unnamed_addr #4 align 2 !prof !38 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #6
  %2 = load ptr, ptr %1, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 23
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(144) %1) #6
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %9, label %7, !prof !42

7:                                                ; preds = %22, %0
  %8 = phi ptr [ null, %0 ], [ %23, %22 ]
  ret ptr %8

9:                                                ; preds = %0, %22
  %10 = phi ptr [ %23, %22 ], [ null, %0 ]
  %11 = phi i32 [ %24, %22 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %11) #6
  %16 = icmp eq ptr %10, null
  br i1 %16, label %21, label %17, !prof !43

17:                                               ; preds = %9
  %18 = tail call noundef i32 @_ZN21cOmnetAppRegistration8getScoreEv(ptr noundef nonnull align 8 dereferenceable(84) %15) #6
  %19 = tail call noundef i32 @_ZN21cOmnetAppRegistration8getScoreEv(ptr noundef nonnull align 8 dereferenceable(84) %10) #6
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %9
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi ptr [ %15, %21 ], [ %10, %17 ]
  %24 = add nuw nsw i32 %11, 1
  %25 = load ptr, ptr %1, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 23
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(144) %1) #6
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %9, label %7, !prof !44, !llvm.loop !45
}

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN21cOmnetAppRegistration8getScoreEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !48
  ret i32 %3
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_appreg.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @_ZN21cOmnetAppRegistration10chooseBestEv, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"branch_weights", i32 127, i32 1}
!43 = !{!"branch_weights", i32 2, i32 1}
!44 = !{!"branch_weights", i32 1, i32 127}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !56, i64 80}
!49 = !{!"_ZTS21cOmnetAppRegistration", !50, i64 0, !53, i64 40, !57, i64 48, !56, i64 80}
!50 = !{!"_ZTS12cOwnedObject", !51, i64 0, !53, i64 24, !56, i64 32}
!51 = !{!"_ZTS12cNamedObject", !52, i64 0, !53, i64 8, !55, i64 16, !55, i64 18}
!52 = !{!"_ZTS7cObject"}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !41, i64 0}
!55 = !{!"short", !54, i64 0}
!56 = !{!"int", !54, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !59, i64 8, !54, i64 16}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!59 = !{!"long", !54, i64 0}
