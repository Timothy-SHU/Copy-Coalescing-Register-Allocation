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

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@omnetapps = dso_local global %class.cGlobalRegistrationList zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"omnetapps\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_appreg.cc, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN23cGlobalRegistrationListD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv() local_unnamed_addr #3 align 2 !prof !40 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps)
  %2 = load ptr, ptr %1, align 8, !tbaa !41
  %3 = getelementptr inbounds ptr, ptr %2, i64 23
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(144) %1), !prof !44
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %24, %0
  %8 = phi ptr [ null, %0 ], [ %25, %24 ]
  ret ptr %8

9:                                                ; preds = %0, %24
  %10 = phi ptr [ %25, %24 ], [ null, %0 ]
  %11 = phi i32 [ %26, %24 ], [ 0, %0 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !41
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %11), !prof !46
  %16 = icmp eq ptr %10, null
  br i1 %16, label %23, label %17, !prof !47

17:                                               ; preds = %9
  %18 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %15, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %10, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %9
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi ptr [ %15, %23 ], [ %10, %17 ]
  %26 = add nuw nsw i32 %11, 1
  %27 = load ptr, ptr %1, align 8, !tbaa !41
  %28 = getelementptr inbounds ptr, ptr %27, i64 23
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(144) %1), !prof !44
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %9, label %7, !prof !60, !llvm.loop !61
}

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_appreg.cc() #4 section ".text.startup" !prof !40 !PGOFuncName !64 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #5
  tail call void @_ZN23cGlobalRegistrationListC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps, ptr noundef nonnull @.str)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN23cGlobalRegistrationListD1Ev, ptr nonnull @omnetapps, ptr nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN21cOmnetAppRegistration10chooseBestEv, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_appreg.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_appreg.cc, ptr @__cxa_atexit, i64 2}
!38 = !{ptr @_GLOBAL__sub_I_appreg.cc, ptr @_ZN23cGlobalRegistrationListC1EPKc, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"VP", i32 0, i64 2, i64 1695622185779208943, i64 2}
!45 = !{!"branch_weights", i32 127, i32 1}
!46 = !{!"VP", i32 0, i64 1, i64 -1448180630179907869, i64 1}
!47 = !{!"branch_weights", i32 1, i32 0}
!48 = !{!49, !56, i64 80}
!49 = !{!"_ZTS21cOmnetAppRegistration", !50, i64 0, !53, i64 40, !57, i64 48, !56, i64 80}
!50 = !{!"_ZTS12cOwnedObject", !51, i64 0, !53, i64 24, !56, i64 32}
!51 = !{!"_ZTS12cNamedObject", !52, i64 0, !53, i64 8, !55, i64 16, !55, i64 18}
!52 = !{!"_ZTS7cObject"}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !43, i64 0}
!55 = !{!"short", !54, i64 0}
!56 = !{!"int", !54, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !59, i64 8, !54, i64 16}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !{!"branch_weights", i32 1, i32 127}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"simulator/appreg.cc;_GLOBAL__sub_I_appreg.cc"}
